package Fastly;

use strict;
use warnings;

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
    my %opts  = shift;
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
sub full_authed { shift->client->fully_authed }

=head2 current_user 

=cut
sub current_user {
    my $self = shift;
    die "You must be fully authed to get the current user" unless $self->full_authed;
    $self->_get(Fastly::User);
}

=head2 current_customer

=cut
sub current_customer {
    my $self = shift;
    die "You must be fully authed to get the current customer" unless $self->full_authed;
    $self->_get(Fastly::Customer);
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


sub _get {
    
}

sub _post {
    
}

sub _put {
    
}

sub _delete {
    
}
1;