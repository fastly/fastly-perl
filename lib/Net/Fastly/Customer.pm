package Net::Fastly::Customer;

use strict;
use base qw(Net::Fastly::Model);

Net::Fastly::Customer->mk_accessors(qw(id name owner_id));

=head1 NAME

Net::Fastly::User - a representation of a user 

=head1 ACCESSORS

=head2 id

The id of this customer

=head2 name

The name of this customer

=head2 owner_id

The id of the user that owns this customer

=cut

=head1 METHODS

=head2 owner

The User object representing the owner of this customer.

=cut
sub owner {
    my $self = shift;
    return $self->{_owner} ||= $self->_fetcher->_get("Net::Fastly::User", $self->owner_id);
}
1;