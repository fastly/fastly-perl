package Fastly::User;

use strict;
use base qw(Fastly::Model);

Fastly::User->mk_accessors(qw(id name login created_at updated_at customer_id role password));

sub customer {
    my $self = shift;
    return $self->fetcher->get("Fastly::Customer", $self->customer_id);
}

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