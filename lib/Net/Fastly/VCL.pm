package Net::Fastly::VCL;

use strict;
use base qw(Net::Fastly::BelongsToServiceAndVersion);

Net::Fastly::VCL->mk_accessors(qw(service_id name content comment main));

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

=head2 comment 

a free form comment field

=cut

package Net::Fastly;

# Temporary hack
sub get_vcl {
    my $self    = shift;
    my $class   = 'Net::Fastly::VCL';
    my $service = shift;
    my $version = shift;
    my $name    = shift;
    my %opts    = @_;
    my $hash    = $self->client->_get($class->_get_path($service, $version, $name), %opts);
    return undef unless $hash;
    return $class->new($self, %$hash);
}
1;
