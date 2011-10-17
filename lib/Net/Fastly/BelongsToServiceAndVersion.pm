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
    return "/service/".$opts{service}."/version/".$opts{version}."/".$class->_path;
}
 
sub _put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_get_path($obj->service, $obj->version, $obj->name);
}

1;