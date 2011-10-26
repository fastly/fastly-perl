use strict;
use Test::More tests => 8; 
use lib qw(t);
use Helper;

my %opts   = eval { login_opts("full") };
chomp(my $err = $@);
my $fastly = Net::Fastly->new(%opts);

my $customer;
my $user;
SKIP: {
      skip "No login credentials given - $err", 6 if $err;
      skip "Needs admin access", 6 unless $fastly->current_user->can_do('admin');
      ok($customer = $fastly->create_customer(name => "fastly-ruby-test-customer-".get_rand), "Created customer");
      ok($user     = $fastly->create_user(login => 'fastly-ruby-test-'.get_rand.'-new@example.com', name => "New User" ), "Created user");
      $customer->owner_id($user->id);
      my $tmp;
      ok($tmp = $fastly->update_customer($customer), "Updated customer");
      is($customer->id, $tmp->id, "Customer id is the same");
      is($customer->owner->id, $tmp->owner->id, "Owner id is the same as the retrieved owner id");
      is($customer->owner->id, $user->id, "Owner id is the same as the user id");
};

SKIP: {
      skip "No login credentials given - $err", 2 if $err;
      skip "Needs admin access", 2 unless $fastly->current_user->can_do('admin');
      my $email    = 'fastly-ruby-test-'.get_rand.'-new@example.com';
      ok($customer = $fastly->create_customer(name => "fastly-ruby-test-customer-".get_rand, owner => { login => $email, name => "Test NewOwner" }), "Created customer");
      is($customer->owner->login, $email, "User login is the same");
};
