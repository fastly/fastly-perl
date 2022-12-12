package Net::Fastly::Syslog;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::Syslog->mk_accessors(qw(service_id name comment address ipv4 ipv6 hostname port format response_condition));

=head1 NAME

Net::Fastly::Syslog -  Representation of an endpoint to stream syslogs to 

=head1 ACCESSORS

=head2 service_id

The id of the service this belongs to.

=head2 version

The number of the version this belongs to.

=head2 name

The name of this endpoint

=head2 comment 

a free form comment field

=head2 address

A magic field - will automagically be set to whichever of ipv4, ipv6 or hostname is currently set.

Conversely if you set the address field then the correct field from ipv4, ipv6 or hostname will be set.

=head2 ipv4

the ipv4 address of the host to stream logs to (this, hostname or ipv6 must be set)

=head2 ipv6

the ipv6 address of the host to stream logs to  (this, hostname or ipv4 must be set)

=head2 hostname

the hostname to to stream logs to  (this, ipv4 or ipv6 must be set)

=head2 port 

the port to stream logs to (defaults to 514)

=head2 format

Format to log like in apache format

=head2 response_condition

name of a response_condition to filter the log on, if empty it always lgos

=cut
1;
