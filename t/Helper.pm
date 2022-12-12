package Helper;

use Exporter;
use base qw(Exporter);
@EXPORT = qw(login_opts get_rand);

use Net::Fastly;
use Net::Fastly::Client;

sub login_opts {
    my $mode  = shift || "full";
    my $stats = shift || 0;
    my %opts;
    foreach my $what (qw(url port)) {
        my $key = "FASTLY_TEST_BASE_".uc($what);
        $opts{"base_${what}"} = $ENV{$key} if defined $ENV{$key};
    }
    my @required = ("full" eq $mode) ? qw(user name password customer stats_url) : qw(api_key customer stats_url);
    foreach my $what (@required) {
        my $key = "FASTLY_TEST_".uc($what);
        die "You haven't set the environment variable $key\n" unless defined $ENV{$key};
        $opts{$what} = $ENV{$key};
    }
    $opts{base_url} = $opts{stats_url} if $stats;
    
    return %opts;
}

sub get_rand {
    return $$."-".time."-".rand(1000);
}

1;