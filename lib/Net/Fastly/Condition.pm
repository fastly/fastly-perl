
package Net::Fastly::Condition;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Backend->mk_accessors(qw(service_id name priority statement type));

=head1 NAME

Net::Fastly::Condition - Representation of a condition that can apply to first class objects

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The name of the condition

=head2 statement

The statement of the condition, should be a varnish if statement line

=head2 priority

What order to run them in, higher priority gets executed after lower priority

=head2 type

request cache or response

request has req. object only
cache has req. and beresp.
response has req. and resp.

=cut

1;
