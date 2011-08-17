package Fastly::Service;

use strict;
use base qw(Fastly::Model);

Fastly::Service->mk_accessors(qw(id customer name created_at updated_at deleted_at));

sub stats {
    my $self = shift;
    my $type = shift || "all";
    die "You must be fully authed to get stats" unless $self->fetcher->fully_authed;
    die "Unknown stats type $type" unless grep { $_ eq $type } qw(minutely hourly daily all);
    return $self->fetcher->client->get($self->get_path($self->id)."/stats/".$type);    
}

sub purge_all {
    my $self = shift;
    die "You must be fully authed to purge everything in a service" unless $self->fetcher->fully_authed;
    return $self->fetcher->client->put($self->get_path($self->id)."/purge_all");
}

sub versions {
    my $self  = shift;
    die "You must be fully authed to get the versions for a service" unless $self->fetcher->fully_authed;
    my $fetcher  = $self->fetcher;
    my $versions = $self->{versions};
    my @versions;
    foreach my $version (values %$versions) {
        push @versions, Fastly::Version->new($fetcher, %$version);
    }
    return sort { $a->number <=> $b->number } @versions;
}

sub version {
    my $self = shift;
    die "You must be fully authed to get the current version" unless $self->fetcher->fully_authed;
    my @list = $self->versions;
    return $list[-1];
}

package Fastly;

sub search_services {
    my $self  = shift;
    my %opts  = @_;
    my $class = "Fastly::Service"; 
    die "You must be fully authed to search for a $class" unless $self->fully_authed;
    my $hash    = $self->client->get($class->post_path."/search", %opts);
    return undef unless $hash;
    return $class->new($self, %$hash);
}
1;