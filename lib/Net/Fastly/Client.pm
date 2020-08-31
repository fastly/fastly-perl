package Net::Fastly::Client;

use strict;
use warnings;
use Carp qw( carp );
use JSON::XS;

=head1 NAME

Net::Fastly::Client - communicate with the Fastly HTTP API

=head1 SYNOPSIS

=head1 PROXYING

There are two ways to proxy:

The first method is to pass a proxy option into the constructor

    my $client = Net::Fastly::Client->new(user => $username, password => $password, proxy => "http://localhost:8080");
    
The second is to set your C<https_proxy> environment variable. So, in Bash

    % export https_proxy=http://localhost:8080
    
or in CSH or TCSH

    % setenv https_proxy=http://localhost:8080

=head1 METHODS

=cut


=head2 new <opt[s]>

Create a new Fastly user agent. Options are

=over 4

=item user 

The login to use

=item password

Your password

=item api_key

Alternatively use the API Key (only some commands are available)

=item proxy

Optionally pass in an https proxy to use.

=back


=cut
sub new {
    my $class = shift;
    my %opts  = @_;
    my $self  = bless \%opts, $class;
    
    my $base  = $opts{base_url}  ||= "api.fastly.com";
    my $port  = $opts{base_port} ||= 80;
    $self->{user} ||= $self->{username};
    $self->{_ua}    = Net::Fastly::Client::UserAgent->new($base, $port, $opts{proxy});
    return $self unless $self->fully_authed;

    # If we're fully authed (i.e username and password ) then we need to log in
    my $res = $self->_ua->_post('/login', {}, user => $self->{user}, password => $self->{password});

    carp "DEPRECATION WARNING: Username/password authentication is deprecated and will not be available starting September 2020; please migrate to API tokens as soon as possible.";

    unless ($res->is_success) {
        die "You must have IO::Socket::SSL or Crypt::SSLeay installed in order to do SSL requests\n" if $res->code == 501 && $res->status_line =~ /Protocol scheme 'https' is not supported/;
        die "Unauthorized" unless $res->is_success;
    }
    my $content = decode_json($res->decoded_content);
    $self->{_cookie} = $res->header('set-cookie');
    return wantarray ? ($self, $content->{user}, $content->{customer}) : $self;
}

sub _ua   { shift->{_ua}   }

=head2 authed

Whether or not we're authed at all by either API key or username & password

=cut
sub authed {
    my $self = shift;
    $self->key_authed || $self->fully_authed;
}

=head2 key_authed

Whether or not we're authed by API key

=cut
sub key_authed {
    my $self = shift;
    defined $self->{api_key}
}

=head2 fully_authed

Whether or not we're authed by username & password

=cut
sub fully_authed {
    my $self = shift;
    defined $self->{user} && defined $self->{password};
}

=head2 set_customer <customer id>

Set the current customer to act as.

B<NOTE>: this will only work if you're an admin

=cut
sub set_customer {
    my $self = shift;
    my $id   = shift;
    $self->{explicit_customer} = $id;
}

=head2 timeout <number>

Get or set the timeout value in seconds. The default value is 180 seconds.

=cut

sub timeout {
    my $self = shift;
    $self->_ua->_ua->timeout(@_);
}

# Get stuff from the stats API
sub _get_stats {
    my $self    = shift;
    my $content = $self->_get(@_);
    die $content->{msg} unless $content->{status} eq 'success';
    return $content->{data};
}

sub _get {
    my $self = shift;
    my $path = shift;
    my %opts = @_;
    my $headers = delete $opts{headers} || {};

    my $res  = $self->_ua->_get($path, $self->_headers($headers), %opts);
    return undef if 404 == $res->code;
    $self->_raise_error($res) unless $res->is_success;
    my $content = decode_json($res->decoded_content);
    return $content;
}

sub _post {
    my $self    = shift;
    my $path    = shift;
    my %params  = @_;
    my $headers = delete $params{headers} || {};

    my $res     = $self->_ua->_post($path, $self->_headers($headers), %params);
    $self->_raise_error($res) unless $res->is_success;
    my $content = decode_json($res->decoded_content);
    return $content;
}

sub _purge {
    my $self    = shift;
    my $url     = shift;
    my %params  = @_;
    my $headers = delete $params{headers} || {};

    my $method  = "_purge";
    if ($self->{use_old_purge_method}) {
        $method = "_post";
        $url    = "/purge/$url";
    }

    my $res     = $self->_ua->$method($url, $self->_headers($headers), %params);
    $self->_raise_error($res) unless $res->is_success;
    my $content = decode_json($res->decoded_content);
    return $content;
}

sub _put {
    my $self   = shift;
    my $path   = shift;
    my %params = @_;
    my $headers = delete $params{headers} || {};

    my $res     = $self->_ua->_put($path, $self->_headers($headers), %params);
    $self->_raise_error($res) unless $res->is_success;
    my $content = decode_json($res->decoded_content);
    return $content;
}

sub _delete {
    my $self    = shift;
    my $path    = shift;
    my %params  = @_;
    my $headers = delete $params{headers} || {};

    my $res  = $self->_ua->_delete($path, $self->_headers($headers));
    $self->_raise_error($res) unless $res->is_success;
    return 1;
}

sub _headers {
    my $self   = shift;
    my $extras = shift;
    my $params = $self->fully_authed ? { 'Cookie' => $self->{_cookie} } : { 'Fastly-Key' => $self->{api_key} };
    $params->{'Fastly-Explicit-Customer'} = $self->{explicit_customer} if defined $self->{explicit_customer};
    $params->{'Content-Accept'} =  'application/json';
    $params->{'User-Agent'} =  "fastly-perl-v$Net::Fastly::VERSION";
    while (my ($key, $value) = each %$extras) {
        $params->{$key} = $value if defined $value;
    }
    return $params;
}

sub _raise_error {
    my $self = shift;
    my $res  = shift;

    my $content = eval { decode_json($res->decoded_content) };
    my $message = $content ? $content->{detail} || $content->{msg} : $res->status_line."  ".$res->decoded_content;
    die "$message\n";
}


package Net::Fastly::Client::UserAgent;

use strict;
use URI;
use LWP::UserAgent;
BEGIN { # Compatibility fix for older versions of HTTP::Request::Common
    require HTTP::Request::Common;
    if (HTTP::Request::Common->can('DELETE')) {
        HTTP::Request::Common->import(qw(GET HEAD PUT POST DELETE));
    } elsif (my $_simple_req = HTTP::Request::Common->can('_simple_req')) {
        HTTP::Request::Common->import(qw(GET HEAD PUT POST));
        *DELETE = sub { $_simple_req->('DELETE', @_) };
    } else {
        die << 'END'
"DELETE" is not exported by the HTTP::Request::Common module
and its underlying _simple_req() method is not available.
END
    }
}

sub new {
    my $class = shift;
    my $base  = shift;
    my $port  = shift;
    my $proxy = shift;
    my $ua    = Net::Fastly::UA->new;
    if ($proxy) {
        $ua->proxy('https', $proxy);
    } else {
        $ua->env_proxy;
    }
    return bless { _base => $base, _port => $port, _ua => $ua }, $class;
    
}

sub _ua { shift->{_ua} }

sub _get {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path, %params);
    return $self->_ua->request(GET $url, %$headers); 
}

sub _post {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path);
    return $self->_ua->request(POST $url, [_make_params(%params)], %$headers);   
}

sub _purge {
    my $self    = shift;
    my $url     = shift;
    my $headers = shift;
    my %params  = @_;
    return $self->_ua->request(HTTP::Request->new("PURGE", $url, [%$headers]));
}

sub _put {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    $headers->{content_type} =  "application/x-www-form-urlencoded";
    my $url     = $self->_make_url($path);
    my $uri     = URI->new('http');
    $uri->query_form(_make_params(%params));
    return $self->_ua->request(PUT $url, %$headers, Content => $uri->query || ""); 
}

sub _delete {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path, %params);
    return $self->_ua->request(DELETE $url, %$headers); 
}

sub _make_url {
    my $self   = shift;
    my $base   = $self->{_base};
    my $port   = $self->{_port};
    my $path   = shift;
    my %params = @_;

    my $prot = "https:";
    if ($base =~ s!^(https?:)//!!) {
        $prot = $1;
    }
    my $url = URI->new($prot);
    $url->host($base);
    $url->port($port) if $port != 80;
    $url->path($path);
    $url->query_form(_make_params(%params)) if keys %params;
    return $url;
}

sub _make_params {
    my %in = @_;
    my %out;
    
    foreach my $key (keys %in) {
        my $value = $in{$key};
        next unless defined $value;
        unless (ref($value) eq 'HASH') {
           $out{$key} = $value;
           next; 
        }
        foreach my $sub_key (keys %$value) {
            $out{$key."[".$sub_key."]"} = $value->{$sub_key};
        }
    }
    return %out;
}

package Net::Fastly::UA;

use base qw(LWP::UserAgent);
use LWP::Protocol::https;
our $DEBUG=0;

sub request {
    my $self = shift;
    my $req  = shift;
    print $req->as_string."\n------------------------\n\n" if $DEBUG;
    my $res  = $self->SUPER::request($req);
    print $res->as_string."\n------------------------\n\n\n\n\n" if $DEBUG;
    return $res;
}
1;
