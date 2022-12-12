package Net::Fastly::Domain;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Domain->mk_accessors(qw(service_id name comment));

=head1 NAME

Net::Fastly::Domain - Representation of a domain name you want to map to a service

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The domain name of this domain

=head2 comment 

a free form comment field


=cut
1;