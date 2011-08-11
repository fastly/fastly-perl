package Fastly::BelongsToServiceAndVersion;

use strict;
use base qw(Fastly::Model);

sub get_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{version}."/".$class->path."/".$opts{name};
}

sub post_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{version}."/".$class->path
}
 
sub put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->get_path($obj->service, $obj->version, $obj->name);
}
 
sub delete_path {
    my $class = shift;
    my $obj   = shift;
    return $class->put_path($obj);
}
1;