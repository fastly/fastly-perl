package Net::Fastly::Healthcheck;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Healthcheck->mk_accessors(qw(service_id name comment method path host http_version timeout window threshold));

=head1 NAME

Net::Fastly::Healthcheck - Representation of a way of keeping track of any of your hosts which are down

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The name of this healthcheck

=head2 comment 

A free form comment field

=head2 method

Which HTTP method to use

=head2 host

Which host to check

=head2 path

Path to check

=head2 http_version

1.0 or 1.1 (defaults to 1.1)

=head2 timeout

Timeout in seconds

=head2 window

How large window to keep track for healthchecks

=head2 threshold

How many have to be ok for it work

=cut
1;