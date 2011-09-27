package Fastly::BelongsToServiceAndVersion;

use strict;
use base qw(Fastly::Model);

=head1 NAME

Fastly::BelongsToServiceAndVersion - base class for classes that belong to a service and a version

=cut

sub _get_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{version}."/".$class->_path."/".$opts{name};
}

sub _post_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{version}."/".$class->_path;
}
 
sub _put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_get_path(service => $obj->service, version => $obj->version, name => $obj->name);
}

1;