package Net::Fastly::Stats;

use strict;
use base qw(Net::Fastly::Model);

Net::Fastly::User->mk_accessors(qw(id name login customer_id role));

=head1 NAME

Net::Fastly::User - a representation of a user 

=head1 ACCESSORS

=head2 id

The id of this user

=head2 name

The name of this user 

=head2 customer_id

The id of the customer this user belongs to

=head2 role

The role this user has (one of admin, owner, superuser, user, engineer, billing)

=cut

=head1 METHODS


=head2 customer

Get the Customer object this user belongs to.

=cut
sub customer {
    my $self = shift;
    return $self->{_customer} ||= $self->_fetcher->_get("Net::Fastly::Customer", $self->customer_id);
}

=head2 owner

Where this user is the owner of their Customer.

=cut
sub owner {
    my $self = shift;
    $self->customer->owner_id eq $self->id;
}

our %PRIORITIES = (
  admin      => 1,
  owner      => 10,
  superuser  => 10,
  user       => 20,
  engineer   => 30,
  billing    => 30,
);

=head2 can_do <role>

Whether or not this user has the capabilities of a given role.

So for example a super user I<can_do> superuser or user or engineer or billing.

=cut
sub can_do {
    my $self          = shift;
    my $test_role     = shift;
    my $test_priority = $PRIORITIES{$test_role}  || 1000;
    my $my_priority   = $PRIORITIES{$self->role} || 1000;
    
    if ($test_priority == $my_priority) {
        $test_role eq 'owner' ? $self->owner : $test_role eq $self->role;
    } else {
        $my_priority < $test_priority;
    }
}


1;