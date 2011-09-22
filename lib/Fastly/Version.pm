package Fastly::Version;

use strict;
use base qw(Fastly::Model);

Fastly::Version->mk_accessors(qw(service number name active locked staging testing deployed created_at updated_at deleted_at));


sub get_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version/".$opts{number};
}

sub post_path {
    my $class = shift;
    my %opts  = @_;
    return "/service/".$opts{service}."/version";
}
 
sub put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->get_path($obj->as_hash);
}
 
sub delete_path {
    my $class = shift;
    my $obj   = shift;
    return $class->put_path($obj);
}

sub activate {
    my $self = shift;
    die "You must be fully authed to activate a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->put($self->put_path($self)."/activate");
    return defined $hash;
}

sub deactivate {
    my $self = shift;
    die "You must be fully authed to deactivate a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->put($self->put_path($self)."/deactivate");
    return defined $hash;
}

sub clone {
    my $self = shift;
    die "You must be fully authed to clone a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->put($self->put_path($self)."/clone");
    return Fastly::Version->new($self->fetcher, %$hash);
}

sub generated_vcl {
    my $self = shift;
    die "You must be fully authed to get the generated vcl for a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->get($self->put_path($self)."/generated_vcl");
    return undef unless defined $hash;
    return Fastly::VCL->new($self->fetcher,
        content => $hash->{vcl},
        name    => $hash->{md5},
        created_at => $hash->{updated},
        updated_at => $hash->{updated},
        version    => $hash->{version},
        service    => $hash->{service},
    );
}

sub upload_vcl {
    my $self    = shift;
    my $name    = shift;
    my $content = shift;
    die "You must be fully authed to upload vcl for a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->post($self->put_path($self)."/vcl", name => $name, content => $content);
    return undef unless defined $hash;
    return Fastly::VCL->new($self->fetcher, %$hash);
}

sub validate {
    my $self = shift;
    die "You must be fully authed to validate a version" unless $self->fetcher->fully_authed;
    my $hash = $self->fetcher->client->get($self->put_path($self)."/validate");
    return defined $hash;
}

1;