=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
package WebService::Fastly::CustomerAddressesApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WebService::Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WebService::Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WebService::Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_customer_address
#
# Creates an address associated with a customer account.
#
# @param CustomerAddress $customer_address  (required)
{
    my $params = {
    'customer_address' => {
        data_type => 'CustomerAddress',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_customer_address' } = {
        summary => 'Creates an address associated with a customer account.',
        params => $params,
        returns => 'InlineResponse201',
        };
}
# @return InlineResponse201
#
sub create_customer_address {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_address' is set
    unless (exists $args{'customer_address'}) {
      croak("Missing the required parameter 'customer_address' when calling create_customer_address");
    }

    # parse inputs
    my $_resource_path = '/billing/v3/customer-addresses';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'customer_address'}) {
        $_body_data = $args{'customer_address'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse201', $response);
    return $_response_object;
}

#
# list_customer_addresses
#
# Return the list of addresses associated with a customer account.
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_customer_addresses' } = {
        summary => 'Return the list of addresses associated with a customer account.',
        params => $params,
        returns => 'ListCustomerAddressesResponse',
        };
}
# @return ListCustomerAddressesResponse
#
sub list_customer_addresses {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/billing/v3/customer-addresses';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ListCustomerAddressesResponse', $response);
    return $_response_object;
}

#
# update_customer_address
#
# Updates an address associated with a customer account.
#
# @param string $type Alphanumeric type of the address being modified. (required)
# @param CustomerAddress $customer_address  (required)
{
    my $params = {
    'type' => {
        data_type => 'string',
        description => 'Alphanumeric type of the address being modified.',
        required => '1',
    },
    'customer_address' => {
        data_type => 'CustomerAddress',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_customer_address' } = {
        summary => 'Updates an address associated with a customer account.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_customer_address {
    my ($self, %args) = @_;

    # verify the required parameter 'type' is set
    unless (exists $args{'type'}) {
      croak("Missing the required parameter 'type' when calling update_customer_address");
    }

    # verify the required parameter 'customer_address' is set
    unless (exists $args{'customer_address'}) {
      croak("Missing the required parameter 'customer_address' when calling update_customer_address");
    }

    # parse inputs
    my $_resource_path = '/billing/v3/customer-addresses/{type}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'type'}) {
        my $_base_variable = "{" . "type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'customer_address'}) {
        $_body_data = $args{'customer_address'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
