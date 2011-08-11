package Fastly;

use strict;
use warnings;

use Fastly::Client;

# use Fastly::User;
# use Fastly::Customer;
# 
# use Fastly::Director;
# use Fastly::Domain;
# use Fastly::Origin;
# use Fastly::Service;
# use Fastly::VCL;
# use Fastly::Version;


BEGIN {
  no strict 'refs';
  foreach my $class (qw(Fastly::User     Fastly::Customer Fastly::Backend
                        Fastly::Director Fastly::Domain 
                        Fastly::Origin   Fastly::Service 
                        Fastly::VCL      Fastly::Version)) {
    
    my $file = $class . '.pm';
    $file =~ s{::}{/}g;
    CORE::require($file); 
    $class->import;
    
    my $name = $class->path;
        
    foreach my $method (qw(get create update delete)) {
        my $code = "sub { shift->_$method('$class', \@_) }";
        my $glob = "${method}_${name}";
        *$glob = eval "$code";
    }
  }  
};

=head1 NAME

Fastly - client library for interacting with the Fastly CDN

=head1 SYNOPSIS

    my $fastly = Fastly->new(%login_opts);
    
    my $current_user     = $fastly->current_user;
    my $current_customer = $fastly->current_customer;
    
    my $user     = $fastly->get_user($current_user->id);
    my $customer = $fastly->get_customer($current_customer->id);


=head1 DESCRIPTION

=head METHODS

=cut


=head2 new <opt[s]>

=cut
sub new {
    my $class = shift;
    my %opts  = @_;
    return bless { _client => Fastly::Client->new(%opts) }, $class;
}

=head2 client

Get the current Fastly::Client

=cut
sub client { shift->{_client} }

=head2 authed

Whether or not we're authed at all

=cut
sub authed { shift->client->authed }

=head2 fully_authed

Whether or not we're fully (username and password) authed

=cut
sub fully_authed { shift->client->fully_authed }

=head2 current_user 

=cut
sub current_user {
    my $self = shift;
    die "You must be fully authed to get the current user" unless $self->fully_authed;
    $self->_get("Fastly::User");
}

=head2 current_customer

=cut
sub current_customer {
    my $self = shift;
    die "You must be fully authed to get the current customer" unless $self->fully_authed;
    $self->_get("Fastly::Customer");
}

=head purge <path>

Purge the specified path from your cache.

=cut
sub purge {
    my $self = shift;
    my $path = shift;
    die "You must be authed to purge" unless $self->authed;
    $self->client->post("/purge/$path");
}

sub _list {
    my $self  = shift;
    my $class = shift;
    die "You must be fully authed to list a $class" unless $self->fully_authed;
}

sub _get {
    my $self  = shift;
    my $class = shift;
    my @args  = @_;
    die "You must be fully authed to get a $class" unless $self->fully_authed;
    my $hash;
    if (@args) {
        $hash = $self->client->get($class->get_path(@args));
    } else {
        $hash = $self->client->get("/current_".$class->path);
    }
    return undef unless $hash;
    return $class->new($self, %$hash);
}

sub _create {
    my $self  = shift;
    my $class = shift;
    my %args  = @_;
    die "You must be fully authed to create a $class" unless $self->fully_authed;
    my $hash  = $self->client->post($class->post_path(%args), %args);
    return $class->new($self, %$hash);
}

sub _update {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to update a $class" unless $self->fully_authed;
    my $hash  = $self->client->put($class->put_path($obj), $obj->as_hash);
    return $class->new($self, %$hash);
}

sub _delete {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to delete a $class" unless $self->fully_authed;
    return defined $self->client->delete($class->delete_path($obj));
}
1;