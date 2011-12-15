package Net::Fastly::Director;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Director->mk_accessors(qw(service_id name comment type capacity retries quorum comment));

=head1 NAME

Net::Fastly::Director - Representation of an a logical collection of backends - for example all the asset servers in one data center

=head1 ACCESSORS

=head2 service

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The domain name of this domain

=head2 type

what kind of Load Balancer group (currently always 1 meaning random)

=head2 retries

how many backends to search if it fails (default 5)

=head2 quorum

the percentage of capacity that needs to be up for a director to be considered up (default 75)

=head2 comment 

a free form comment field

=cut

=head2 add_backend <backend object>

Add a Backend to a Director.

Returns true on success and false on failure.

=cut
sub add_backend {
    my $self     = shift;
    my $backend  = shift;
    my $hash = $self->_fetcher->client->_post($self->_put_path($self)."/backend/".$backend->name);
    return !!(keys %$hash);
}

=head2 delete_backend <backend object>

Delete a Backend from a Director

Returns true on success and false on failure.

=cut
sub delete_backend {
    my $self    = shift;
    my $backend = shift;
    my $hash = $self->_fetcher->client->_delete($self->_put_path($self)."/backend/".$backend->name);
    return !!(keys %$hash);    
}

1;