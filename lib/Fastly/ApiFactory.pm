=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
package Fastly::ApiFactory;

use strict;
use warnings;
use utf8;

use Carp;
use Module::Find;

usesub Fastly::Object;

use Fastly::ApiClient;

=head1 Name

    Fastly::ApiFactory - constructs APIs to retrieve Fastly objects

=head1 Synopsis

    package My::Petstore::App;

    use Fastly::ApiFactory;

    my $api_factory = Fastly::ApiFactory->new( ... ); # any args for ApiClient constructor

    # later...
    my $pet_api = $api_factory->get_api('Pet');

    # $pet_api isa Fastly::PetApi

    my $pet = $pet_api->get_pet_by_id(pet_id => $pet_id);

    # object attributes have proper accessors:
    printf "Pet's name is %s", $pet->name;

    # change the value stored on the object:
    $pet->name('Dave');

=cut

# Load all the API classes and construct a lookup table at startup time
my %_apis = map { $_ =~ /^Fastly::(.*)$/; $1 => $_ }
            grep {$_ =~ /Api$/}
            usesub 'Fastly';

=head1 new($api_client)

    create a new Fastly::ApiFactory instance with the given Fastly::ApiClient instance.

=head1 new(%parameters)

    Any parameters are optional, and are passed to and stored on the api_client object.

    See L<Fastly::ApiClient> and L<Fastly::Configuration> for valid parameters

=cut

sub new {
    my ($class) = shift;

    my $api_client;
    if ($_[0] && ref $_[0] && ref $_[0] eq 'Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Fastly::ApiClient->new(@_);
    }
    bless { api_client => $api_client }, $class;
}

=head1 get_api($which)

    Returns an API object of the requested type.

    $which is a nickname for the class:

        FooBarClient::BazApi has nickname 'Baz'

=cut

sub get_api {
    my ($self, $which) = @_;
    croak "API not specified" unless $which;
    my $api_class = $_apis{"${which}Api"} || croak "No known API for '$which'";
    return $api_class->new($self->api_client);
}

=head1 api_client()

    Returns the api_client object, should you ever need it.

=cut

sub api_client { $_[0]->{api_client} }

=head1 apis_available()
=cut

sub apis_available { return map { $_ =~ s/Api$//; $_ } sort keys %_apis }

=head1 classname_for()
=cut

sub classname_for {
    my ($self, $api_name) = @_;
    return $_apis{"${api_name}Api"};
}


1;
