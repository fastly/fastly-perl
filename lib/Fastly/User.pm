package Fastly::User;

use strict;
use base qw(Fastly::Model);

Fastly::User->mk_accessors(qw(id name login created_at updated_at customer_id role password));

sub customer {
    my $self = shift;
    return $self->fetcher->_get("Fastly::Customer", $self->customer_id);
}

1;