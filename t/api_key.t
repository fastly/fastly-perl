use strict;
use Test::More tests => 106;
use lib qw(t);
use Helper;
require 'common.pl';

my %opts = eval { login_opts("api_key") };
chomp(my $err = $@);

SKIP: {



skip "No api key credentials given - $err", 106 if $err;

my $client = Net::Fastly::Client->new(%opts);
my $fastly = Net::Fastly->new(%opts);

my $user;
my $customer;

eval { $user =  $client->get('/current_user') };
ok($@, "Raised an error");
is($user, undef, "User isn't defined");

$customer = eval { $client->_get('/current_customer') };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined");
is($customer->{name}, $opts{customer}, "Got correct customer name");

$user = $customer = undef;

eval { $user =  $fastly->current_user };
ok($@, "Raised an error");
is($user, undef, "User still isn't defined");


$customer = eval { $fastly->current_customer };
is($@, '', "Didn't raise an error");
ok($customer, "Customer is defined again");
is($customer->name, $opts{customer}, "Got correct customer name again");


#ok($fastly->purge('foo'), "Purging works");

common_tests($fastly);

}