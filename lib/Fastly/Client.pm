package Fastly::Client;

use strict;
use warning;
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
    
    return $self unless $self->fully_authed

    # If we're fully authed (i.e username and password ) then we need to log in
    my $res = $self->ua->post('/login', make_params(user => $self->{user}, password => $self->{password}))
    die "Unauthorized" unless $res->is_success;
    $self->{_cookie} = $res->header('set-cookie');
    return $self
}

sub authed {   
    my $self = shift;
    defined $self->{api_key} || $self->fully_authed
}

# Some methods require full username and password rather than just auth token
sub fully_authed {
    my $self = shift;
    defined $self->{user} && defined $self->{password};
}

sub get {
    my $self = shift;
    my $path = shift;
    my $res  = $self->ua->get($path, $self->_headers);
    return undef if 404 == $res->code;
    die "Couldn't get $path - ".$res->message unless $res->is_success;
    decode_json($res->decoded_content);
}

sub post {
    my $self   = shift;
    my $path   = shift;
    my %params = @_;
    return $self->_post_and_put('post', $path, %params);
}

sub put {
    my $self   = shift;
    my $path   = shift;
    my %params = @_;
    return $self->_post_and_put('put', $path, %params);
}

sub _post_and_put {
    my $self   = shift;
    my $meth   = shift;
    my $path   = shift;
    my %params = @_;
    my $query  = $self->_make_params(%params);
    my $res    = $self->ua->request($method => $path, $self->_headers, $query);
    die "Couldn't $method to $path - ".$res->message unless $res->is_success;
    decode_json($res->decoded_content);
}


sub delete {
    my $self = shift;
    my $path = shift;
    my $res  = $self->ua->delete($path, $self->_headers);
    return $res->is_success;
}

sub headers {
    my $self   = shift;
    my $params = $self->fully_authed ? { 'Cookie' => $self->{_cookie} } : { 'X-Fastly-Key' => $self->{api_key} }
    $params->{'Content-Accept'} =  'application/json';
    return $params;
}

sub make_params {
    my $self   = shift;
    my %params = @_; 
    my $url = URI->new('http:');
    $url->query_form(%params);
    return $url->query;
}
1;