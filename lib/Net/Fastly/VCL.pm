package Net::Fastly::VCL;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::VCL->mk_accessors(qw(service_id name content created_at updated_at deleted_at));

=head1 NAME

Net::Fastly::VCL - An internal representation of a Varnish Configuration Language file

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The domain name of this domain

=head2 content

The content of the VCL file.

See this for more details

https://www.varnish-cache.org/trac/wiki/VCL

=head2 created_at

The date and time this was created at

=head2 updated_at

The date and time this was updated at

=head2 deleted_at

The date and time this was deleted at

=cut
1;