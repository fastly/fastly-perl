package Fastly::Customer;

use strict;
use base qw(Fastly::Model);

Fastly::Customer->mk_accessors(qw(id name created_at updated_at id owner_id));

sub owner {
    my $self = shift;
    return $self->fetch->get("Fastly::User", $self->owner_id);
}
1;