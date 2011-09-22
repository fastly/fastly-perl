package Fastly;

use strict;
use warnings;

use Fastly::Client;

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
        my $code = "sub { shift->$method('$class', \@_) }";
        my $glob = "${method}_${name}";
        $glob .= "s" if $method eq 'list';
        *$glob = eval "$code";
    }
  }  
};

=head1 NAME

Fastly - client library for interacting with the Fastly CDN

=head1 SYNOPSIS

    my $fastly = Fastly->new(%login_opts);
    
    my $current_user     = $fastly->current_user;
    my $current_customer = $fastly->current_customer;
    
    my $user     = $fastly->get_user($current_user->id);
    my $customer = $fastly->get_customer($current_customer->id);


=head1 DESCRIPTION

=head METHODS

=cut


=head2 new <opt[s]>

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

Whether or not we're authed at all

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
    $self->get("Fastly::User");
}

=head2 current_customer

=cut
sub current_customer {
    my $self = shift;
    die "You must be fully authed to get the current customer" unless $self->fully_authed;
    $self->get("Fastly::Customer");
}

=head2 commands 

=cut
sub commands {
    my $self     = shift;
    return eval { $self->client->get('/commands') };
}

=head purge <path>

Purge the specified path from your cache.

=cut
sub purge {
    my $self = shift;
    my $path = shift;
    die "You must be authed to purge" unless $self->authed;
    $self->client->post("/purge/$path");
}

sub list {
    my $self     = shift;
    my $class    = shift;
    my %opts     = @_;
    die "You must be fully authed to list a $class" unless $self->fully_authed;
    my $list     = $self->client->get($class->post_path, %opts, is_list => 1);
    return () unless $list;
    return map { $class->new($self, %$_) } @$list;
}

sub get {
    my $self  = shift;
    my $class = shift;
    my @args  = @_;
    die "You must be fully authed to get a $class" unless $self->fully_authed;
    my $hash;
    if (@args) {
        $hash = $self->client->get($class->get_path(@args));
    } else {
        $hash = $self->client->get("/current_".$class->path);
    }
    return undef unless $hash;
    return $class->new($self, %$hash);
}

sub create {
    my $self  = shift;
    my $class = shift;
    my %args  = @_;
    die "You must be fully authed to create a $class" unless $self->fully_authed;
    my $hash  = $self->client->post($class->post_path(%args), %args);
    return $class->new($self, %$hash);
}

sub update {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to update a $class" unless $self->fully_authed;
    my $hash  = $self->client->put($class->put_path($obj), $obj->as_hash);
    return $class->new($self, %$hash);
}

sub delete {
    my $self  = shift;
    my $class = shift;
    my $obj   = shift;
    die "You must be fully authed to delete a $class" unless $self->fully_authed;
    return defined $self->client->delete($class->delete_path($obj));
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