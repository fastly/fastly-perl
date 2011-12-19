package Net::Fastly::Service;

use strict;
use base qw(Net::Fastly::Model);

Net::Fastly::Service->mk_accessors(qw(id customer_id name comment));

=head1 NAME

Net::Fastly::Service - a representation of a Fastly service

=head1 ACCESSORS

=head2 id

The id of the service

=head2 customer

The id of the customer this belongs to

=head2 name

The name of this service

=head2 comment 

a free form comment field

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
    my %opts = @_;
    die "You must be authed to get stats" unless $self->_fetcher->authed;
    die "Unknown stats type $type" unless grep { $_ eq $type } qw(minutely hourly daily all);
    return $self->_fetcher->client->_get($self->_get_path($self->id)."/stats/".$type, %opts);    
}

=head2 invoice [<year> <month>]

Return a Net::Fastly::Invoice objects representing the invoice for this service

If a year and month are passed in returns the invoice for that whole month. 

Otherwise it returns the invoice for the current month so far.

=cut
sub invoice {
    my $self  = shift;
    my $year  = shift;
    my $month = shift;
    die "You must be authed to get an invoice" unless $self->_fetcher->authed;
    my %opts = ( service_id => $self->id );
    if ($year && $month) {
        $opts{year} = $year;
        $opts{month} = $month;
    }
    return $self->_fetcher->_get('Net::Fastly::Invoice', %opts);
}


=head2 purge_all

Purge all assets from this service.

=cut
sub purge_all {
    my $self = shift;
    die "You must be authed to purge everything in a service" unless $self->_fetcher->authed;
    return $self->_fetcher->client->_put($self->_get_path($self->id)."/purge_all");
}

=head2 versions

Get a sorted array of all the versions that this service has had.

=cut
use Data::Dumper;
sub versions {
    my $self  = shift;
    die "You must be authed to get the versions for a service" unless $self->_fetcher->authed;
    my $fetcher  = $self->_fetcher;
    my @versions = map { Net::Fastly::Version->new($fetcher, %$_) } @{$self->{versions}||[]};
    return sort { $a->number <=> $b->number } @versions;
}

=head2 version

Get the current version of this service.

=cut
sub version {
    my $self = shift;
    die "You must be authed to get the current version" unless $self->_fetcher->authed;
    my @list = $self->versions;
    return $list[-1];
}

package Net::Fastly;

sub search_services {
    my $self  = shift;
    my %opts  = @_;
    my $class = "Net::Fastly::Service";
    die "You must be authed to search for a $class" unless $self->authed;
    my $hash    = $self->client->_get($class->_post_path."/search", %opts);
    return undef unless $hash;
    return $class->new($class, %$hash);
}
1;