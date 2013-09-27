use strict;
use Test::More tests => 5; 
use Helper;
use Data::Dumper;

my %opts = eval { login_opts("api_key", 1) };
chomp(my $err = $@);

SKIP: {

skip "No api key credentials given - $err", 101 if $err;

my $fastly   = Net::Fastly->new(%opts);

# regions
my @regions = $fastly->regions;
ok(@regions, "Got regions");

# usage 
my $usage;
$usage = $fastly->usage;
ok(exists $usage->{usa}, "Found a USA region in usage");
ok(exists $usage->{usa}->{requests}, "USA region has a requests field");

# usage by_service
$usage = $fastly->usage(by_service => 1);
ok(exists $usage->{usa}, "Found a USA region in usage");
ok(!exists $usage->{usa}->{requests}, "USA region doesn't have a requests field");

# stats
my $stats;
$stats = $fastly->stats;
is(ref($stats), 'HASH', "Returned an array of data points");
my ($service1, $service2) = keys %$stats;
ok($stats->{$service1}->{requests}, "Found requests");
ok($stats->{$service1}->{hits}, "Found hits");
ok($stats->{$service2}->{requests}, "Found requests");
ok($stats->{$service2}->{hits}, "Found hits");

# stats field
$stats = $fastly->stats(field => "requests");
is(ref($stats), 'HASH', "Returned an array of data points");
ok($stats->{$service1}->{requests}, "Found requests");
ok(!$stats->{$service1}->{hits}, "Didn't find hits");
ok($stats->{$service2}->{requests}, "Found requests");
ok(!$stats->{$service2}->{hits}, "Didn't find hits");

# stats service
$Net::Fastly::UA::DEBUG=1;
$stats = $fastly->stats(service => $service1);
is(ref($stats), 'ARRAY', "Returned an array of data points");
is($stats->[0]->{service_id}, $service1, "Got correct service id");
ok($stats->[0]->{requests}, "Found requests");
ok($stats->[0]->{hits}, "Found hits");

# # stats field service
# $stats = $fastly->stats(field => "requests");
# is(ref($stats), 'ARRAY', "Returned an array of data points");
# is($stats->[0]->{service_id}, $service1, "Got correct service id");
# ok($stats->[0]->{requests}, "Found requests");
# ok(!$stats->[0]->{hits}, "Didn't find hits");
# 
# # stats aggregate
# $stats = $fastly->stats(aggregate => 1);
# is(ref($stats), 'ARRAY', "Returned an array of data points");
# ok(!$stats->[0]->{service_id}, "No service id");
# ok($stats->[0]->{requests}, "Found requests");
# ok($stats->[0]->{hits}, "Found hits");
# 
# # stats aggregate with field
# $stats = eval { $fastly->stats(aggregate => 1, field => "requests") };
# ok($@, "Got an error when trying to aggregate with field");
# 
# # stats aggregate with service
# $stats = eval { $fastly->stats(aggregate => 1, service => $service1) };
# ok($@, "Got an error when trying to aggregate with service");
# 
# # stats aggregate with field and service
# $stats = eval { $fastly->stats(aggregate => 1, field => "requests", service => $service1) };
# ok($@, "Got an error when trying to aggregate with field and service");


}