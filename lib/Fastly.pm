package Fastly;

use strict;
use warnings;

use Fastly::Client;
our $VERSION = "0.5";


BEGIN {
  no strict 'refs';
  foreach my $class (qw(Fastly::User     Fastly::Customer Fastly::Backend
                        Fastly::Director Fastly::Domain 
                        Fastly::Origin   Fastly::Service 
                        Fastly::VCL      Fastly::Version)) {
    
    my $file = $class . '.pm';
    $file =~ s{::}{/}g;
    CORE::require($file); 
    $class->import;
    
    my $name = $class->path;
        
    foreach my $method (qw(get create update delete)) {
        my $code = "sub { shift->_$method('$class', \@_) }";
        my $glob = "${method}_${name}";
        $glob .= "s" if $method eq 'list';
        *$glob = eval "$code";
    }
  }  
};

=head1 NAME

Fastly - client library for interacting with the Fastly web acceleration service

=head1 SYNOPSIS

    my $fastly = Fastly->new(%login_opts);
    
    my $current_user     = $fastly->current_user;
    my $current_customer = $fastly->current_customer;
    
    my $user     = $fastly->get_user($current_user->id);
    my $customer = $fastly->get_customer($current_customer->id);


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
    return bless { _client => Fastly::Client->new(%opts) }, $class;
}

=head2 client

Get the current Fastly::Client

=cut
sub client { shift->{_client} }

=head2 authed

Whether or not we're authed at all by either username & password or API key

=cut
sub authed { shift->client->authed }

=head2 fully_authed

Whether or not we're fully (username and password) authed

=cut
sub fully_authed { shift->client->fully_authed }

=head2 current_user 

=cut
sub current_user {
    my $self = shift;
    die "You must be fully authed to get the current user" unless $self->fully_authed;
    $self->_get("Fastly::User");
}

=head2 current_customer

=cut
sub current_customer {
    my $self = shift;
    die "You must be fully authed to get the current customer" unless $self->fully_authed;
    $self->_get("Fastly::Customer");
}

=head2 commands 

=cut
sub commands {
    my $self     = shift;
    return eval { $self->client->_get('/commands') };
}

=head2 purge <path>

Purge the specified path from your cache.

=cut
sub purge {
    my $self = shift;
    my $path = shift;
    die "You must be authed to purge" unless $self->authed;
    $self->client->_post("/purge/$path");
}

sub _list {
    my $self     = shift;
    my $class    = shift;
    my %opts     = @_;
    die "You must be fully authed to list a $class" unless $self->fully_authed;
    my $list     = $self->client->_get($class->_post_path, %opts, is_list => 1);
    return () unless $list;
    return map { $class->new($self, %$_) } @$list;
}

sub _get {
    my $self  = shift;
    my $class = shift;
    my @args  = @_;
    die "You must be fully authed to get a $class" unless $self->fully_authed;
    my $hash;
    if (@args) {
        $hash = $self->client->_get($class->_get_path(@args));
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
    die "You must be fully authed to create a $class" unless $self->fully_authed;
    my $hash  = $self->client->_post($class->_post_path(%args), %args);
    return $class->new($self, %$hash);
}

sub _update {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to update a $class" unless $self->fully_authed;
    my $hash  = $self->client->_put($class->_put_path($obj), $obj->as_hash);
    return $class->new($self, %$hash);
}

sub _delete {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to delete a $class" unless $self->fully_authed;
    return defined $self->client->_delete($class->_delete_path($obj));
}

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

sub get_options {
    my @configs = @_;
    my %options;
    foreach my $config (@configs) {
        next unless -f $config;
        %options = load_options($config);
    }
    while (@ARGV && $ARGV[0] =~ m!^(\w+)\=(\w+)$!) {
        $options{$1} = $2;
        shift @ARGV;
    }
    die "Couldn't find options from command line arguments or ".join(", ", @configs)."\n" unless keys %options;
    return %options;
}
1;