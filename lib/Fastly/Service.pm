package Fastly::Service;

use strict;
use base qw(Fastly::Model);

Fastly::Service->mk_accessors(qw(id customer name created_at updated_at deleted_at));

sub stats {
    my $self = shift;
    my $type = shift || "all";
    die "You must be authed to get stats" unless $self->fetcher->authed;
    die "Unknown stats type $type" unless grep { $_ eq $type } qw(minutely hourly daily all);
    return $self->fetcher->client->get($self->get_path($self->id)."/stats/".$type);    
}

sub purge_all {
    my $self = shift;
    die "You must be authed to purge everything in a service" unless $self->fetcher->authed;
    return $self->fetcher->client->put($self->get_path($self->id)."/purge_all");
}

sub versions {
    my $self  = shift;
    die "You must be authed to get the versions for a service" unless $self->fetcher->authed;
    my $fetcher  = $self->fetcher;
    my $versions = $self->{versions};
    my @versions;
    foreach my $number (keys %$versions) {
        push @versions, Fastly::Version->new($fetcher, service => $self->id, number => $number, created_at => $versions->{$number});
    }
    return sort { $a->number <=> $b->number } @versions;
}

sub version {
    my $self = shift;
    die "You must be authed to get the current version" unless $self->fetcher->authed;
    my @list = $self->versions;
    return $list[-1];
}

package Fastly;

sub list_services {
    my $self  = shift;
    my %opts  = @_;
    my $class = "Fastly::Service";
    return $self->list($class, %opts);
}

sub search_services {
    my $self  = shift;
    my %opts  = @_;
    my $class = "Fastly::Service"; 
    die "You must be authed to search for a $class" unless $self->authed;
    my $hash    = $self->client->get($class->post_path."/search", %opts);
    return undef unless $hash;
    return $class->new($self, %$hash);
}
1;