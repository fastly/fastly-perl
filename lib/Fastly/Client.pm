package Fastly::Client;

use strict;
use warnings;
use JSON;

=head1 NAME

Fastly::Client - communicate with the Fastly HTTP API

=head1 SYNOPSIS


=head1 METHODS


=cut
sub new {
    my $class = shift;
    my %opts  = @_;
    my $self  = bless \%opts, $class;
    
    my $base  = $opts{base_url}  ||= "api.fastly.com";
    my $port  = $opts{base_port} ||= 80;
    $self->{_ua} = Fastly::Client::UserAgent->new($base, $port);
    
    return $self unless $self->fully_authed;

    # If we're fully authed (i.e username and password ) then we need to log in
    my $res = $self->ua->post('/login', {}, user => $self->{user}, password => $self->{password});
    die "Unauthorized" unless $res->is_success;
    $self->{_cookie} = $res->header('set-cookie');
    return $self;
}

sub ua { shift->{_ua} }

sub authed {   
    my $self = shift;
    defined $self->{api_key} || $self->fully_authed;
}

# Some methods require full username and password rather than just auth token
sub fully_authed {
    my $self = shift;
    defined $self->{user} && defined $self->{password};
}

sub get {
    my $self = shift;
    my $path = shift;
    my %opts = @_;
    my $res  = $self->ua->get($path, $self->_headers, %opts);
    return undef if 404 == $res->code;
    die "Couldn't GET $path - ".$res->message unless $res->is_success;
    decode_json($res->decoded_content);
}

sub post {
    my $self   = shift;
    my $path   = shift;
    my %params = @_;
    
    my $res    = $self->ua->post($path, $self->_headers, %params);
    die "Couldn't POST to $path - ".$res->message unless $res->is_success;
    decode_json($res->decoded_content);
}

sub put {
    my $self   = shift;
    my $path   = shift;
    my %params = @_;
    
    my $res    = $self->ua->put($path, $self->_headers, %params);
    die "Couldn't PUT to $path - ".$res->message unless $res->is_success;
    decode_json($res->decoded_content);
}

sub delete {
    my $self = shift;
    my $path = shift;

    my $res  = $self->ua->delete($path, $self->_headers);
    return $res->is_success;
}

sub _headers {
    my $self   = shift;
    my $params = $self->fully_authed ? { 'Cookie' => $self->{_cookie} } : { 'X-Fastly-Key' => $self->{api_key} };
    $params->{'Content-Accept'} =  'application/json';
    return $params;
}


package Fastly::Client::UserAgent;

use strict;
use URI;
use LWP::UserAgent;
use HTTP::Request::Common qw(GET HEAD PUT POST DELETE);

sub new {
    my $class = shift;
    my $base  = shift;
    my $port  = shift;
    return bless { _base => $base, _port => $port, _ua => Fastly::UA->new }, $class;
}

sub ua { shift->{_ua} }

sub get {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path, %params);
    return $self->ua->request(GET $url, %$headers); 
}

sub post {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path);
    return $self->ua->request(POST $url, [_make_params(%params)], %$headers);   
}

sub put {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path, %params);
    return $self->ua->request(PUT $url, %$headers); 
}

sub delete {
    my $self    = shift;
    my $path    = shift;
    my $headers = shift;
    my %params  = @_;
    my $url     = $self->_make_url($path, %params);
    return $self->ua->request(DELETE $url, %$headers); 
}

sub _make_url {
    my $self   = shift;
    my $base   = $self->{_base};
    my $port   = $self->{_port};
    my $path   = shift;
    my %params = @_;
    my $url = URI->new('http:');
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

package Fastly::UA;

use base qw(LWP::UserAgent);
our $DEBUG=0;

sub request {
    my $self = shift;
    my $req  = shift;
    my $res  = $self->SUPER::request($req);
    if ($DEBUG) {
        print $req->as_string."\n------------------------\n\n";
        print $res->as_string."\n------------------------\n\n\n\n\n";
    }
    return $res;
}
1;