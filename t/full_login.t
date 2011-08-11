use strict;
use Test::More tests => 55; 
use Helper;

my %opts   = login_opts("full");
my $client = Fastly::Client->new(%opts);
my $fastly = Fastly->new(%opts);

my $user;
my $customer;

sub get_rand {
    return $$."-".time."-".rand(1000);
}

$user = eval { $client->get('/current_user') };
is($@, '', "Didn't raise an error");

ok($user, "User is defined");
is($user->{login}, 'testowner@example.com', "Got correct login");
is($user->{name}, 'Test Owner', "Got correct name");

$customer = eval { $client->get('/current_customer') };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined");
is($customer->{name}, 'Test Account', "Got correct customer name");

$user = $customer = undef;

$user = eval { $fastly->current_user };
is($@, '', "Didn't raise an error");
ok($user, "User is defined again");
is($user->login, 'testowner@example.com', "Got correct login again");
is($user->name, 'Test Owner', "Got correct name");

$customer = eval { $fastly->current_customer };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, 'Test Account', "Got correct customer name again");

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

$user = $customer = undef;
my $email = 'fastly-ruby-test-'.get_rand.'-new@example.com';
$user     = eval { $fastly->create_user(user_email => $email, user_name => "New User") };

is($@, '', "Didn't raise an error");
ok($user, "User is defined after create");
is($user->name, "New User", "Got correct name");
is($user->login, $email, "Got correct email");

my $tmp;
$tmp =  eval { $fastly->get_user($user->id) };
is($@, '', "Didn't raise an error");
ok($tmp, "User is defined again after fetching after create");
is($tmp->name, $user->name, "Got correct name after fetch");
is($tmp->login, $user->login, "Got correct login after fetch");

$user->name("Updated Name");
$tmp =  eval { $fastly->update_user($user) };
is($@, '', "Didn't raise an error");
ok($tmp, "User is defined again");
is($tmp->name, "Updated Name", "Name is updated");
is($tmp->login, $user->login, "Login is the same");

my $deleted = eval { $fastly->delete_user($user) };
is($@, '', "Didn't raise an error");
ok($deleted, "User deleted");

$tmp =  eval { $fastly->get_user($user->id) };
is($@, '', "Didn't raise an error");
is($tmp, undef, "Couldn't get deleted user");


my $name = "fastly-test-service-".get_rand;
my $service = eval { $fastly->create_service(name => $name) };
is($@, '', "Didn't raise an error");
ok($service, "Service is defined");
is($service->name, $name, "Service name is correct");

$tmp = eval { $fastly->get_service($service->id) };
is($@, '', "Didn't raise an error");
ok($tmp, "Service is defined again");
is($tmp->name, $service->name, "Name is correct");


my $version = eval { $fastly->create_version( service => $service->id ) };
is($@, '', "Didn't raise an error");
ok($version, "Version is defined");
my $version2 = eval { $fastly->create_version( service => $service->id ) };
ok($version2, "Version2 is defined");
is($version->number+1, $version2->number, "Version is incremented");
my $number = $version2->number;


#my $number = 1;
my $backend = eval { $fastly->create_backend(service => $service->id, version => $number, ipv4 => '127.0.0.1', port => "9092", name => "fastly-test-backend-".get_rand) };
is($@, '', "Didn't raise an error");
ok($backend, "Backend is defined");
is($backend->service, $service->id, "Backend's service id is correct");

my $domain_name = "fastly-test-domain-".get_rand;
my $domain      = eval { $fastly->create_domain(service => $service->id, version => $number, name => $domain_name) };
is($@, '', "Didn't raise an error");
ok($domain, "Domain is defined");
is($domain->name, $domain_name, "Domain's name is correct");

ok($version2->activate, "Activated version");

my %stats       = $service->stats;
ok(keys %stats, "Got stats");