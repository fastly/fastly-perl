package Fastly::Version;

use strict;
use base qw(Fastly::Model);

Fastly::Version->mk_accessors(qw(service number name active locked, staging testing deployed created_at updated_at deleted_at));


sub get_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{number};
}

sub post_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version";
}
 
sub put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->get_path($obj->as_hash);
}
 
sub delete_path {
    my $class = shift;
    my $obj   = shift;
    return $class->put_path($obj);
}

sub activate {
    my $self = shift;
    die "You must be fully authed to activate a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->put($self->put_path($self)."/activate");
    return defined $hash;
}

sub deactivate {
    my $self = shift;
    die "You must be fully authed to deactivate a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->put($self->put_path($self)."/deactivate");
    return defined $hash;
}
1;