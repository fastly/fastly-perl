package Net::Fastly;

use strict;
use warnings;

use Net::Fastly::Client;
use Net::Fastly::Invoice;
use Net::Fastly::Settings;

our $VERSION = "1.01";

BEGIN {
  no strict 'refs';
  our @CLASSES = qw(Net::Fastly::User     Net::Fastly::Customer
                    Net::Fastly::Backend  Net::Fastly::Director
                    Net::Fastly::Domain   Net::Fastly::Healthcheck
                    Net::Fastly::Match    Net::Fastly::Origin   
                    Net::Fastly::Service  Net::Fastly::Syslog
                    Net::Fastly::VCL      Net::Fastly::Version
                    Net::Fastly::Condition);

  foreach my $class (@CLASSES) {
    my $file = $class . '.pm';
    $file =~ s{::}{/}g;
    CORE::require($file); 
    $class->import;
    
    my $name = $class->_path;
        
    foreach my $method (qw(get create update delete list)) {
        my $code = "sub { shift->_$method('$class', \@_) }";
        my $glob = "${method}_${name}";
        $glob .= "s" if $method eq 'list';
        # don't create this if it's a list and something isn't listable ...
        next if $method eq 'list' && $class->_skip_list;
        # or if it already exists (i.e it's been overidden)
        next if defined *$glob;
        *$glob = eval "$code";
    }
  }  
};

=head1 NAME

Net::Fastly - client library for interacting with the Fastly web acceleration service

=head1 SYNOPSIS

    my $fastly = Net::Fastly->new(%login_opts);
    
    my $current_user     = $fastly->current_user;
    my $current_customer = $fastly->current_customer;
    
    my $user     = $fastly->get_user($current_user->id);
    my $customer = $fastly->get_customer($current_customer->id);
    
    print "Name: ".$user->name."\n";
    print "Works for ".$user->customer->name."\n";
    print "Which is the same as ".$customer->name."\n";
    print "Which has the owner ".$customer->owner->name."\n";
    
    # Let's see which services we have defined
    foreach my $service ($fastly->list_services) {
        print $service->name." (".$service->id.")\n";
        foreach my $version ($service->versions) {
            print "\t".$version->number."\n";
        }
    }
    
    my $service        = $fastly->create_service(name => "MyFirstService");
    my $latest_version = $service->version;
    
    # Create a domain and a backend for the service ...
    my $domain         = $fastly->create_domain(service_id => $service->id, version => $latest_version->number, name => "www.example.com");
    my $backend        = $fastly->create_backend(service_id => $service->id, version => $latest_version->number, ipv4 => "127.0.0.1", port => 80);
    
    # ... and activate it. You're now hosted on Fastly.
    $latest_version->activate;
    
    # Let's take a peek at the VCL that Fastly generated for us
    my $vcl = $latest_version->generated_vcl;
    print "Generated VCL file is:\n".$vcl->content."\n";
    
    # Now let's create a new version ...
    my $new_version    = $latest_version->clone;
    # ... add a new backend ...
    my $new_backend    = $fastly->create_backend(service_id => $service->id, version => $new_version->number, ipv4 => "192.0.0.1", port => 8080);
    # ... and upload some custome vcl (presuming we have permissions)
    $new_version->upload_vcl($vcl_name, slurp($vcl_file));    
    
    $new_version->activate;


=head1 DESCRIPTION

=head1 METHODS

=cut


=head2 new <opt[s]>

Create a new Fastly client. Options are

=over 4

=item user - your Fastly login

=item password - your Fastly password

=item api_key - your Fastly api key

=back

You only need to pass in C<api_key> OR C<user> and C<password>. 

Some methods require full username and password rather than just auth token.

=cut
sub new {
    my $class = shift;
    my %opts  = @_;
    my ($client, $user, $customer) = Net::Fastly::Client->new(%opts);
    my $self  = bless { _client =>  $client, _current_customer => undef, _current_user => undef}, $class;
    if ($user && $customer) {
        $self->{_current_user}     =  Net::Fastly::User->new($self, %$user);
        $self->{_current_customer} =  Net::Fastly::Customer->new($self, %$customer);
    }
    return $self;
}

=head2 client

Get the current Net::Fastly::Client

=cut
sub client { shift->{_client} }

=head2 set_customer <customer id>

Set the current customer to act as.

B<NOTE>: this will only work if you're an admin

=cut
sub set_customer {
    my $self = shift;
    my $id   = shift;
    die "You must be fully authed to set the customer" unless $self->fully_authed;
    die "You must be an admin to set the customer" unless $self->current_user->can_do('admin');
    delete $self->{_current_customer};
    $self->client->set_customer($id);
}

=head2 authed

Whether or not we're authed at all by either username & password or API key

=cut
sub authed { shift->client->authed }

=head2 fully_authed

Whether or not we're fully (username and password) authed

=cut
sub fully_authed { shift->client->fully_authed }

=head2 current_user 

Return a User object representing the current logged in user.

This will not work if you're logged in with an API key.

=cut
sub current_user {
    my $self = shift;
    die "You must be fully authed to get the current user" unless $self->fully_authed;
    $self->{_current_user} ||= $self->_get("Net::Fastly::User");
}

=head2 current_customer

Return a Customer object representing the customer of the current logged in user.

=cut
sub current_customer {
    my $self = shift;
    die "You must be authed to get the current customer" unless $self->authed;
    $self->{_current_customer} ||= $self->_get("Net::Fastly::Customer");
}

=head2 commands 

Return a hash representing all commands available.

Useful for information.

=cut
sub commands {
    my $self     = shift;
    return $self->{__cache_commands} if ($self->{__cache_commands});
    return eval { $self->{__cache_commands} = $self->client->_get('/commands') };
}

=head2 purge <path>

Purge the specified path from your cache.

=cut
sub purge {
    my $self = shift;
    my $path = shift;
    $self->client->_post("/purge/$path");
}

=head2 stats [opt[s]]

Fetches historical stats for each of your fastly services and groups the results by service id.

If you pass in a C<field> opt then fetches only the specified field.

If you pass in a C<service> opt then fetches only the specified service.

The C<field> and C<service> opts can be combined.

If you pass in an C<aggregate> flag then fetches historical stats information aggregated across all of your Fastly services. This cannot be combined with C<field> and C<service>.

Other options available are:

=over 4

=item from & to

=item by

=item region

=back

See http://docs.fastly.com/docs/stats for details.

=cut
sub stats {
    my $self = shift;
    my %opts = @_;
    
    die "You can't specify a field or a service for an aggregate request" if $opts{aggregate} && ($opts{field} || $opts{service});
    
    my $url  = "/stats";

    if (delete $opts{aggregate}) {
        $url .= "/aggregate";
    }
    
    if (my $service = delete $opts{service}) {
        $url .= "/service/$service";
    }
    
    if (my $field = delete $opts{field}) {
        $url .= "/field/$field";
    }
    
    $self->client->_get_stats($url, %opts);
}


=head2 usage [opt[s]]

Returns usage information aggregated across all Fastly services and grouped by region.

If the C<by_service> flag is passed then teturns usage information aggregated by service and grouped by service & region.

Other options available are:

=over 4

=item from & to

=item by

=item region

=back

See http://docs.fastly.com/docs/stats for details.

=cut
sub usage {
    my $self = shift;
    my %opts = @_;
    
    my $url  = "/stats/usage";
    $url .= "_by_service" if delete $opts{by_service};
    
    $self->client->_get_stats($url, %opts);
}


=head2 regions

Fetches the list of codes for regions that are covered by the Fastly CDN service.

=cut
sub regions {
    my $self = shift;
    $self->client->_get_stats("/stats/regions");
}


=head2 create_user <opts>

=head2 create_customer <opts>

=head2 create_service <opts>

=head2 create_version service_id => <service id>, [opts]

=head2 create_backend service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_director service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_domain service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_healthcheck service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_match service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_origin service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_syslog service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_vcl service_id => <service id>, version => <version number>, name => <name> <opts>

=head2 create_condition service_id => <service id>, version => <version number>, name => <name> <opts>

Create new objects.

=cut

=head2 get_user <id>

=head2 get_customer <id>

=head2 get_service <id>

=head2 get_version <service id> <number>

=head2 get_backend <service id> <version number> <name>

=head2 get_director <service id> <version number> <name>

=head2 get_domain <service id> <version number> <name>

=head2 get_healthcheck <service id> <version number> <name>

=head2 get_invoice [<year> <month>]

Return a Net::Fastly::Invoice objects representing an invoice for all services.

If a year and month are passed in returns the invoice for that whole month. 

Otherwise it returns the invoices for the current month to date.

=head2 get_match <service id> <version number> <name>

=head2 get_origin <service id> <version number> <name>

=head2 get_syslog <service id> <version number> <name>

=head2 get_vcl <service id> <version number> <name>

=head2 get_version <service id> <version number> <name>

=head2 get_settings <service id> <version number>

=head2 get_condition <service id> <version number> <name>

Get existing objects.

=cut


=head2 update_user <obj>

=head2 update_customer <obj>

=head2 update_service <obj>

=head2 update_version <obj>

=head2 update_backend <obj>

=head2 update_director <obj>

=head2 update_domain <obj>

=head2 update_healthcheck <obj>

=head2 update_match <obj>

=head2 update_origin <obj>

=head2 update_syslog <obj>

=head2 update_vcl <obj>

=head2 update_version <obj>

=head2 update_settings <obj>

=head2 update_condition <obj>

Update existing objects.

Note - you can also do

    $obj->save;

=cut


=head2 delete_user <obj> 

=head2 delete_customer <obj>

=head2 delete_service <obj>

=head2 delete_version <obj>

=head2 delete_backend <obj>

=head2 delete_director <obj>

=head2 delete_domain <obj>

=head2 delete_healthcheck <obj>

=head2 delete_match <obj>

=head2 delete_origin <obj>

=head2 delete_syslog <obj>

=head2 delete_vcl <obj>

=head2 delete_version <obj>

=head2 delete_condition <obj>

Delete existing objects.

Note - you can also do

    $obj->delete

=cut



=head2 list_users

=head2 list_customers 

=head2 list_versions

=head2 list_services 

=head2 list_backends 

=head2 list_directors 

=head2 list_domains 

=head2 list_healthchecks

=head2 list_matchs 

=head2 list_origins 

=head2 list_syslogs

=head2 list_vcls 

=head2 list_versions 

=head2 list_conditions

Get a list of all objects

=head2 search_services <param[s]>

Search all the services that the current customer has.

In general you'll want to do

        my @services = $fastly->search_services(name => $name);

or

        my ($service) = $fastly->search_services(name => $name, version => $number);

=cut

use Carp;
sub _list {
    my $self     = shift;
    my $class    = shift;
    my %opts     = @_;
    my $list     = $self->client->_get($class->_list_path(%opts), %opts);
    return () unless $list;
    return map { $class->new($self, %$_) } @$list;
}

sub _get {
    my $self  = shift;
    my $class = shift;
    my $hash;
    if (@_) {
        $hash = $self->client->_get($class->_get_path(@_));
    } else {
        $hash = $self->client->_get("/current_".$class->_path);
    }
    return undef unless $hash;
    return $class->new($self, %$hash);
}

sub _create {
    my $self  = shift;
    my $class = shift;
    my %args  = @_;
    my $hash  = $self->client->_post($class->_post_path(%args), %args);
    return $class->new($self, %$hash);
}

sub _update {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    my %fds   = $obj->_as_hash;
    my $hash  = $self->client->_put($class->_put_path($obj), map { $_ => $fds{$_} } grep { $_ !~ m/^(service_id|version)$/ } keys %fds);
    return $class->new($self, %$hash);
}

sub _delete {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    $obj      = bless $obj, $class if 'HASH' eq ref($obj);
    return defined $self->client->_delete($class->_delete_path($obj));
}


=head1 CLASS METHODS

=head2 load_options <file>

Attempts to load various config options in the form

   <key> = <value>
   
From a file.

Skips whitespace and lines starting with C<#>.

=cut

sub load_options {
    my $file    = shift;
    my %options = ();
    return %options unless -f $file;

    open(my $fh, $file) || die "Couldn't open $file: $!\n";
    while (<$fh>) {
        chomp;
        next if /^#/;
        next if /^\s*$/;
        next unless /=/;
        s/(^\s*|\s*$)//g;
        my ($key, $val) = split /\s*=\s*/, $_, 2;
        $options{$key} = $val;
    }
    close($fh);
    return %options;
}

=head2 get_options <file[s]>

Tries to load options from the file[s] passed in using, 
C<load_options>, stopping when it finds the first one.

Then it overrides those options with command line options 
of the form

    --<key>=<value>

=cut
sub get_options {
    my @configs = @_;
    my %options;
    foreach my $config (@configs) {
        next unless -f $config;
        %options = load_options($config);
        last;
    }
    while (@ARGV && $ARGV[0] =~ m!^-+(\w+)\=(.+)$!) {
        if ($1 eq "config") {
            die "No such file '$2'" unless -f $2;
            my %tmp = load_options($2);
            $options{$_} = $tmp{$_} for keys %tmp;
        } else {
            $options{$1} = $2;
        }
        shift @ARGV;
    }
    die "Couldn't find options from command line arguments or ".join(", ", @configs)."\n" unless keys %options;
    return %options;
}

=head1 COPYING

Copyright 2011 - Fastly Inc

Distributed under the same terms as Perl itself.

=head1 SUPPORT 

Mail support at fastly dot com if you have problems.

=head1 DEVELOPERS

http://github.com/fastly/fastly-perl

http://www.fastly.com/documentation

=cut
1;
