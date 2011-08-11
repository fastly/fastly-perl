package Fastly::Model;

use strict;
use base qw(Class::Accessor::Fast);

sub new {
    my $class   = shift;
    my $fetcher = shift;
    my %opts    = @_;
    $opts{_fetcher} = $fetcher;
    return bless \%opts, $class;
}

sub fetcher { shift->{_fetcher} }

sub as_hash {
    my $self = shift;
    my %ret;
    foreach my $key (keys %$self) {
        $ret{$key} = $self->{$key} unless $key =~ m!^_!;
    }
    return %ret;
}

sub path {
   my $class = shift;
   $class    = ref($class) if ref($class); 
   my ($path) = (lc($class) =~ m!::([^:]+)$!);
   return $path;
}

sub get_path {
    my $class = shift;
    my $id    = shift;
    return "/".$class->path."/$id";
}

sub post_path {
    my $class = shift;
    return "/".$class->path;
}
 
sub put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->get_path($obj->id);
}
 
sub delete_path {
    my $class = shift;
    my $obj   = shift;
    return $class->put_path($obj);
}

1;