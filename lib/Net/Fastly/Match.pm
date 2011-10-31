package Net::Fastly::Match;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Match->mk_accessors(qw(service_id name pattern priority on_recv on_lookup on_fetch on_deliver on_miss on_hit comment));

=head1 NAME

Net::Fastly::VCL - An internal representation of matcher object in Fastly

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The name of this match.

=head2 pattern

The matching pattern.

=head2 on_recv

What VCL action to execute before we lookup the object.

=head2 on_lookup

What VCL action to execute during a lookup.

=head2 on_fetch 

What to execute after we have the header.

=head2 on_miss

What to execute on a cache miss

=head2 on_hit

What to execute on a cache hit.

=head2 on_deliver

What to execute just before delivering the object.

=head2 priority

The ordering of the match object

=head2 comment 

a free form comment field

=cut
1;