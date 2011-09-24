package Fastly::Service;

use strict;
use base qw(Fastly::Model);

Fastly::Service->mk_accessors(qw(id customer name created_at updated_at deleted_at));

=head1 NAME

Fastly::Service - a representation of a Fastly service

=head1 ACCESSORS

=head2 id

The id of the service

=head2 customer

The id of the customer this belongs to

=head2 name

The name of this service

=head2 created_at

The date and time this was created at

=head2 updated_at

The date and time this was updated at

=head2 deleted_at

The date and time this was deleted at

=cut

=head1 METHODS

=cut

=head2 stats [type]

Get an hash ref of stats from different data centers.

Type can be one of

=over 4

=item minutely

=item hourly

=item daily

=item all (default)

=back 

=cut

sub stats {
    my $self = shift;
    my $type = shift || "all";
    die "You must be authed to get stats" unless $self->fetcher->authed;
    die "Unknown stats type $type" unless grep { $_ eq $type } qw(minutely hourly daily all);
    return $self->fetcher->client->get($self->get_path($self->id)."/stats/".$type);    
}

=head2 purge_all

Purge all assets from this service.

=cut
sub purge_all {
    my $self = shift;
    die "You must be authed to purge everything in a service" unless $self->fetcher->authed;
    return $self->fetcher->client->put($self->get_path($self->id)."/purge_all");
}

=head2 versions

Get a sorted array of all the versions that this service has had.

=cut
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

=head2 version

Get the current version of this service.

=cut
sub version {
    my $self = shift;
    die "You must be authed to get the current version" unless $self->fetcher->authed;
    my @list = $self->versions;
    return $list[-1];
}

package Fastly;

=head1 METHODS ADDED TO MAIN FASTLY CLASS

=head2 list_services

Get a list of all the services that the current customer has.

=cut
sub list_services {
    my $self  = shift;
    my %opts  = @_;
    my $class = "Fastly::Service";
    return $self->list($class, %opts);
}

=head2 search_services <param[s]>

Search all the services that the current customer has.

In general you'll want to do

        my @services = $fastly->search_services(name => $name);

or

        my ($service) = $fastly->search_services(name => $name, version => $number);

=cut
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