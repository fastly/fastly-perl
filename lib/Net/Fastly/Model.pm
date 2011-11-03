package Net::Fastly::Model;

use strict;
use base qw(Class::Accessor::Fast);

=head1 NAME

Net::Fastly::Model - base class for all classes

=head1 METHODS

=head2 new <fetcher> <opt[s]>

Create a new object, passing in a Fastly object that can get other objects

=cut
sub new {
    my $class   = shift;
    my $fetcher = shift;
    my %opts    = @_;
    $opts{_fetcher} = $fetcher;
    return bless \%opts, $class;
}

sub _fetcher { shift->{_fetcher} }

sub _as_hash {
    my $self = shift;
    my %ret;
    foreach my $key (keys %$self) {
        $ret{$key} = $self->{$key} unless $key =~ m!^_!;
    }
    return %ret;
}

sub _path {
   my $class = shift;
   $class    = ref($class) if ref($class); 
   my ($path) = (lc($class) =~ m!::([^:]+)$!);
   return $path;
}

sub _get_path {
    my $class = shift;
    my $id    = shift;
    return "/".$class->_path."/$id";
}

sub _post_path {
    my $class = shift;
    return "/".$class->_path;
}

sub _list_path { shift->_post_path(@_) }


sub _put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_get_path($obj->id);
}
 
sub _delete_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_put_path($obj);
}

=head2 save

Save this object. Equivalent to

   $fastly->update_<class>($object);

=cut
sub save {
    my $self = shift;
    $self->_fetcher->_update(ref($self), $self);
}

=head2 delete

Delete this object. Equivalent to

   $fastly->delete_<class>($object);

=cut
sub delete {
    my $self = shift;
    $self->_fetcher->_delete(ref($self), $self);     
}


1;