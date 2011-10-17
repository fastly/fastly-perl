use strict;
use Test::More tests => 9; 
use Helper;

my %opts   = login_opts("api_key");
my $client = Net::Fastly::Client->new(%opts);
my $fastly = Net::Fastly->new(%opts);

my $user;
my $customer;

eval { $user =  $client->get('/current_user') };
ok($@, "Raised an error");
is($user, undef, "User isn't defined");

eval { $customer =  $client->get('/current_customer') };
ok($@, "Raised an error");
is($customer, undef, "Customer isn't defined");

eval { $user =  $fastly->current_user };
ok($@, "Raised an error");
is($user, undef, "User still isn't defined");

eval { $customer =  $fastly->current_customer };
ok($@, "Raised an error");
is($customer, undef, "Customer still isn't defined");

ok($fastly->purge('foo'), "Purging works");