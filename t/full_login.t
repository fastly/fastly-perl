use strict;
use Test::More tests => 142; 
use lib qw(t);
use Helper;
require 'common.pl';

my %opts   = eval { login_opts("full") }; 
chomp(my $err    = $@);

SKIP: {

skip "No login credentials given - $err", 142 if $err;

my $client = Net::Fastly::Client->new(%opts);


my $user;
my $customer;

$user = eval { $client->_get('/current_user') };
is($@, '', "Didn't raise an error");

ok($user, "User is defined");
is($user->{login}, $opts{user}, "Got correct login");
is($user->{name}, $opts{name}, "Got correct name");

$customer = eval { $client->_get('/current_customer') };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined");
is($customer->{name}, $opts{customer}, "Got correct customer name");

$user = $customer = undef;

my $fastly = Net::Fastly->new(%opts);

$user = eval { $fastly->current_user };
is($@, '', "Didn't raise an error");
ok($user, "User is defined again");
is($user->login, $opts{user}, "Got correct login again");
is($user->name, $opts{name}, "Got correct name");

$customer = eval { $fastly->current_customer };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, $opts{customer}, "Got correct customer name again");

my $current_user     = $user;
my $current_customer = $customer;

$user = $customer = undef;

$user = eval { $fastly->get_user($current_user->id) };
is($@, '', "Didn't raise an error");
ok($user, "User is defined again");
is($user->login, $current_user->login, "Got correct login again");
is($user->name, $current_user->name, "Got correct name");

$customer = eval { $fastly->get_customer($current_customer->id) };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, $current_customer->name, "Got correct customer name again");

$customer = eval { $fastly->get_customer($user->customer_id) };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, $current_customer->name, "Got correct customer name again");

$customer = eval { $user->customer };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, $current_customer->name, "Got correct customer name again");

$user = $customer = undef;
my $email = 'fastly-ruby-test-'.get_rand.'-new@example.com';
$user     = eval { $fastly->create_user(login => $email, name => "New User", role => 'user' ) };

is($@, '', "Didn't raise an error");
ok($user, "User is defined after create");
is($user->name, "New User", "Got correct name");
is($user->login, $email, "Got correct email");
is($user->role, 'user', "Got correct role");


my $tmp;
$tmp =  eval { $fastly->get_user($user->id) };
is($@, '', "Didn't raise an error");
ok($tmp, "User is defined again after fetching after create");
is($tmp->name, $user->name, "Got correct name after fetch");
is($tmp->login, $user->login, "Got correct login after fetch");
is($user->role, 'user', "Got correct role after fetch");

$user->name("Updated Name");
$user->role("engineer");
$tmp =  eval { $fastly->update_user($user) };
is($@, '', "Didn't raise an error");
ok($tmp, "User is defined again");
is($tmp->name, "Updated Name", "Name is updated");
is($tmp->login, $user->login, "Login is the same");
is($user->role, 'engineer', "Role is updated");

my $deleted = eval { $fastly->delete_user($user) };
is($@, '', "Didn't raise an error");
ok($deleted, "User deleted");

$tmp =  eval { $fastly->get_user($user->id) };
is($@, '', "Didn't raise an error");
is($tmp, undef, "Couldn't get deleted user");

$user     = eval { $fastly->create_user(login => $email, name => "New User", role => 'user') };
$user->name("Updated Name");
eval { $user->save };
is($@, '', "Didn't raise an error");
is($user->name, "Updated Name", "Name is updated");
eval { $user->delete };
is($@, '', "Didn't raise an error");
$tmp =  eval { $fastly->get_user($user->id) };
is($@, '', "Didn't raise an error");
is($tmp, undef, "Couldn't get deleted user");

common_tests($fastly);

}
