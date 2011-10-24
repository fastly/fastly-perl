package Net::Fastly::Origin;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Origin->mk_accessors(qw(service_id name comment created_at updated_at));

=head1 NAME

Net::Fastly::Origin - Representation of a logical group of directors - for example the asset server directors from all your DCNs

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The domain name of this domain

=head2 created_at

The date and time this was created at

=head2 updated_at

The date and time this was updated at

=head2 deleted_at

The date and time this was deleted at

=cut
1;