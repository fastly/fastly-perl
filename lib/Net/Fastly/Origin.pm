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
1;