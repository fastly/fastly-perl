use strict;
use Test::More tests => 8; 
use Helper;

my %opts   = login_opts("full");
my $fastly = Fastly->new(%opts);

my $customer;
my $user;
SKIP: {
      skip "Needs admin access", 6 unless $fastly->current_user->can_do('admin');
      ok($customer = $fastly->create_customer(name => "fastly-ruby-test-customer-".get_rand));
      ok($user     = $fastly->create_user(login => 'fastly-ruby-test-'.get_rand.'-new@example.com', name => "New User" ));
      $customer->owner_id($user->id);
      my $tmp;
      ok($tmp = $fastly->update_customer($customer));
      is($customer->id, $tmp->id);
      is($customer->owner->id, $tmp->owner->id);
      is($customer->owner->id, $user->id);
};

SKIP: {
      skip "Needs admin access", 2 unless $fastly->current_user->can_do('admin');
      my $email    = 'fastly-ruby-test-'.get_rand.'-new@example.com';
      ok($customer = $fastly->create_customer(name => "fastly-ruby-test-customer-".get_rand, owner => { login => $email, name => "Test NewOwner" }));
      is($customer->owner->login, $email);
};
