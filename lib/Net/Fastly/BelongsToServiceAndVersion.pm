package Net::Fastly::BelongsToServiceAndVersion;

use strict;
use base qw(Net::Fastly::Model);

=head1 NAME

Net::Fastly::BelongsToServiceAndVersion - base class for classes that belong to a service and a version

=cut

sub _get_path {
    my $class   = shift;
    my $service = shift;
    my $version = shift;
    my $name    = shift;
    return "/service/$service/version/$version/".$class->_path."/$name";
}

sub _post_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service_id}."/version/".$opts{version}."/".$class->_path;
}
 
sub _put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_get_path($obj->service_id, $obj->version_number, $obj->name);
}

=head2 service

Get the service object for this version

=cut

sub service {
    my $self = shift;
    return $self->{_service} ||= $self->_fetcher->_get("Net::Fastly::Service", $self->service_id);
}

=head2 version

Get the version object for this object

=cut

sub version { 
    my $self = shift;
    return $self->{_version} ||= $self->_fetcher->_get("Net::Fastly::Version", $self->service_id, $self->version_number);
}
 
=head2 version_number

Get the version number for this object.

=cut
sub version_number {
    my $self = shift;
    return $self->{version};
}


1;