package Net::Fastly::Origin;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Origin->mk_accessors(qw(service_id name comment));

=head1 NAME

Net::Fastly::Origin - Representation of a logical group of directors - for example the asset server directors from all your DCNs

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The domain name of this domain

=cut

=head2 add_director <director object>

Add a director to an origin.

Returns true on success and false on failure.

=cut
sub add_director {
    my $self     = shift;
    my $director = shift;
    my $hash = $self->_fetcher->client->_post($self->_put_path($self)."/director/".$director->name);
    return !!(keys %$hash);
}

=head2 delete_director <director object>

Delete a director from an origin.

Returns true on success and false on failure.

=cut
sub delete_director {
    my $self     = shift;
    my $director = shift;
    my $hash = $self->_fetcher->client->_delete($self->_put_path($self)."/director/".$director->name);
    return !!(keys %$hash);    
}

1;