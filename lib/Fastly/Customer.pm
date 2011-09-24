package Fastly::Customer;

use strict;
use base qw(Fastly::Model);

Fastly::Customer->mk_accessors(qw(id name owner_id created_at updated_at));

=head1 NAME

Fastly::User - a representation of a user 

=head1 ACCESSORS

=head2 id

The id of this customer

=head2 name

The name of this customer

=head2 owner_id

The id of the user that owns this customer

=head2 created_at

The date and time this was created at

=head2 updated_at

The date and time this was updated at

=cut

=head1 METHODS

=head2 owner

The User object representing the owner of this customer.

=cut
sub owner {
    my $self = shift;
    return $self->fetcher->get("Fastly::User", $self->owner_id);
}
1;