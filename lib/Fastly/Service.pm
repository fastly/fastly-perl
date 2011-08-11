package Fastly::Service;

use strict;
use base qw(Fastly::Model);

Fastly::Service->mk_accessors(qw(id customer name created_at updated_at deleted_at));


sub stats {
    my $self = shift;
    my $type = shift || "all";
    die "You must be fully authed to get stats" unless $self->fetcher->fully_authed;
    die "Unknown stats type $type" unless grep { $_ eq $type } qw(minutely hourly daily all);
    my $hash = $self->fetcher->client($self->get_path($self->id)+"/stats/"+$type);
    
}

package Fastly;

sub list_services {
    my $self = shift;
    $self->_list("Fastly::Service", @_);
}
1;