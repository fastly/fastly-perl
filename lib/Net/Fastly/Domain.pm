package Net::Fastly::Domain;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Domain->mk_accessors(qw(service version name comment created_at updated_at deleted_at));

=head1 NAME

Net::Fastly::Domain - Representation of a domain name you want to map to a service

=head1 ACCESSORS

=head2 service

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