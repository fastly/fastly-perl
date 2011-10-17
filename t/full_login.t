use strict;
use Test::More tests => 96; 
use Helper;

my %opts   = login_opts("full");
#my %opts   = login_opts("api_key");
my $client = Net::Fastly::Client->new(%opts);


my $user;
my $customer;

$user = eval { $client->_get('/current_user') };
is($@, '', "Didn't raise an error");

ok($user, "User is defined");
is($user->{login}, 'testowner@example.com', "Got correct login");
is($user->{name}, 'Test Owner', "Got correct name");

$customer = eval { $client->_get('/current_customer') };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined");
is($customer->{name}, 'Test Account', "Got correct customer name");

$user = $customer = undef;

my $fastly = Net::Fastly->new(%opts);

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


my $name = "fastly-test-service-".get_rand;
my $service = eval { $fastly->create_service(name => $name) };
is($@, '', "Didn't raise an error");
ok($service, "Service is defined");
is($service->name, $name, "Service name is correct");


$tmp = eval { $fastly->get_service($service->id) };
is($@, '', "Didn't raise an error");
ok($tmp, "Service is defined again");
is($tmp->name, $service->name, "Name is correct");

my $version = eval { $service->version };
is($@, '', "Didn't raise an error");
ok($version, "Version is defined");

my @services;

@services = eval { $fastly->list_services };
is($@, '', "Didn't raise an error");
ok(scalar @services, "Got some services back");
ok(scalar(grep { $name eq $_->name } @services), "List services returns the service with the correct name");

@services = eval { $fastly->search_services(name => $name) };
is($@, '', "Didn't raise an error");
ok(scalar @services, "Got some services back after a search by name");
ok(scalar(grep { $name eq $_->name } @services), "List services returns the service with the correct name after a search by name");

@services = eval { $fastly->search_services(name => $name, version => $version->number) };
is($@, '', "Didn't raise an error");
ok(scalar @services, "Got some services back after a search by name and version");
ok(scalar(grep { $name eq $_->name } @services), "List services returns the service with the correct name after a search by name and version");

my $version2 = eval { $fastly->create_version( service_id => $service->id ) };
is($@, '', "Didn't raise an error");
ok($version2, "Version2 is defined");
is($version->number+1, $version2->number, "Version is incremented");

my $version3 = eval { $version2->clone };
is($@, '', "Didn't raise an error");
ok($version3, "Version3 is defined");
is($version2->number+1, $version3->number, "Version is incremented again");


my $number = $version3->number;

my $backend_name = "fastly-test-backend-".get_rand;
my $backend = eval { $fastly->create_backend(service_id => $service->id, version => $number, ipv4 => '127.0.0.1', port => "9092", name => $backend_name) };
is($@, '', "Didn't raise an error");
ok($backend, "Backend is defined");
is($backend->service_id, $service->id, "Backend's service id is correct");

$backend->ipv4('192.168.0.1');
my $r = eval { $fastly->update_backend($backend) };
is($@, '', "Didn't raise an error");
$backend = $fastly->get_backend($service->id, $number, $backend_name); 
ok($backend, "Got the backend again");
is($backend->ipv4, '192.168.0.1', "Got the updated ipv4");

my $domain_name = "fastly-test-domain-".get_rand.".example.com";
my $domain      = eval { $fastly->create_domain(service_id => $service->id, version => $number, name => $domain_name) };
is($@, '', "Didn't raise an error");
ok($domain, "Domain is defined");
is($domain->name, $domain_name, "Domain's name is correct");

$domain->comment("Flibbety gibbet");
eval { $fastly->update_domain($domain) };
is($@, '', "Didn't raise an error when updating domain");

$domain = eval { $fastly->get_domain($service->id, $number, $domain_name) };
is($@, '', "Didn't raise an error");
ok($domain, "Domain is defined");
is($domain->name, $domain_name, "Domain's name is correct still");
is($domain->comment, "Flibbety gibbet", "Got comment");

my $director_name = "fastly-test-director-".get_rand;
my $director      = eval { $fastly->create_director(service_id => $service->id, version => $number, name => $director_name) };
is($@, '', "Didn't raise an error");
ok($director, "Director is defined");
is($director->name, $director_name, "Director's name is correct");

my $origin_name = "fastly-test-origin-".get_rand;
my $origin      = eval { $fastly->create_origin(service_id => $service->id, version => $number, name => $origin_name) };
is($@, '', "Didn't raise an error");
ok($origin, "Origin is defined");
is($origin->name, $origin_name, "Origin's name is correct");


ok($version3->activate, "Activated version");

my $generated = eval { $version3->generated_vcl };
is($@, '', "Didn't raise an error");
ok($generated, "Generated VCL is defined");
ok($generated->content, "Generate VCL has content");
ok($generated->content =~ /\.port = "9092"/msg, "Generated VCL has right port");

my $valid = eval { $version3->validate };
is($@, '', "Didn't raise an error");
ok($valid, "Version3 is valid");


my %stats       = eval { $service->stats };
ok(keys %stats, "Got stats");