use strict;
use Test::More tests => 30; 
use lib qw(t);
use Helper;
use Data::Dumper;

my %opts = eval { login_opts("api_key", 1) };
chomp(my $err = $@);

our $FROM = "2011-01-01 00:00:00";

SKIP: {
    
#$Net::Fastly::UA::DEBUG=1;

skip "No api key credentials given - $err", 30 if $err;

my $fastly   = Net::Fastly->new(%opts);

# regions
my @regions = $fastly->regions;
ok(@regions, "Got regions");

# usage 
my $usage;
$usage = $fastly->usage(from => $FROM);
ok(exists $usage->{usa}, "Found a USA region in usage");
ok(exists $usage->{usa}->{requests}, "USA region has a requests field");

# usage by_service
$usage = $fastly->usage(from => $FROM, by_service => 1);
ok(exists $usage->{usa}, "Found a USA region in usage");
ok(!exists $usage->{usa}->{requests}, "USA region doesn't have a requests field");

# stats
my $stats;
$stats = $fastly->stats(from => $FROM);
is(ref($stats), 'HASH', "Returned an hash of data points");
my ($service1, $service2) = keys %$stats;
ok(exists $stats->{$service1}->[0]->{requests}, "Found requests");
ok(exists $stats->{$service1}->[0]->{hits}, "Found hits");
ok(exists $stats->{$service2}->[0]->{requests}, "Found requests");
ok(exists $stats->{$service2}->[0]->{hits}, "Found hits");

# stats field
$stats = $fastly->stats(from => $FROM, field => "requests");
is(ref($stats), 'HASH', "Returned an array of data points");
ok(exists$stats->{$service1}->[0]->{requests}, "Found requests");
ok(!exists $stats->{$service1}->[0]->{hits}, "Didn't find hits");
ok(exists$stats->{$service2}->[0]->{requests}, "Found requests");
ok(!exists $stats->{$service2}->[0]->{hits}, "Didn't find hits");

# stats service
$stats = $fastly->stats(from => $FROM, service => $service1);
is(ref($stats), 'ARRAY', "Returned an array of data points");
is($stats->[0]->{service_id}, $service1, "Got correct service id");
ok(exists $stats->[0]->{requests}, "Found requests");
ok(exists$stats->[0]->{hits}, "Found hits");

# stats field service
$stats = $fastly->stats(from => $FROM, field => "requests", service => $service1);
is(ref($stats), 'ARRAY', "Returned an array of data points");
is($stats->[0]->{service_id}, $service1, "Got correct service id");
ok($stats->[0]->{requests}, "Found requests");
ok(!$stats->[0]->{hits}, "Didn't find hits");

# stats aggregate
$stats = $fastly->stats(from => $FROM, aggregate => 1);
is(ref($stats), 'ARRAY', "Returned an array of data points");
ok(!exists $stats->[0]->{service_id}, "No service id");
ok(exists $stats->[0]->{requests}, "Found requests");
ok(exists $stats->[0]->{hits}, "Found hits");

# stats aggregate with field
$stats = eval { $fastly->stats(aggregate => 1, field => "requests") };
ok($@, "Got an error when trying to aggregate with field");

# stats aggregate with service
$stats = eval { $fastly->stats(aggregate => 1, service => $service1) };
ok($@, "Got an error when trying to aggregate with service");

# stats aggregate with field and service
$stats = eval { $fastly->stats(aggregate => 1, field => "requests", service => $service1) };
ok($@, "Got an error when trying to aggregate with field and service");


}