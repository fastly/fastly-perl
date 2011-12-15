use strict;
use Test::More tests => 99; 
use lib qw(t);
use Helper;
require 'common.pl';

my %opts = eval { login_opts("api_key") };
chomp(my $err = $@);

SKIP: {

skip "No api key credentials given - $err", 99 if $err;

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

#ok($fastly->purge('foo'), "Purging works");

common_tests($fastly);

}