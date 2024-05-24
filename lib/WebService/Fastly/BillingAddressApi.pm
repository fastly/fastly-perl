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
package WebService::Fastly::BillingAddressApi;

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
# add_billing_addr
#
# Add a billing address to a customer
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param BillingAddressRequest $billing_address_request Billing address (optional)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'billing_address_request' => {
        data_type => 'BillingAddressRequest',
        description => 'Billing address',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_billing_addr' } = {
        summary => 'Add a billing address to a customer',
        params => $params,
        returns => 'BillingAddressResponse',
        };
}
# @return BillingAddressResponse
#
sub add_billing_addr {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling add_billing_addr");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/billing_address';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'billing_address_request'}) {
        $_body_data = $args{'billing_address_request'};
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
    my $_response_object = $self->{api_client}->deserialize('BillingAddressResponse', $response);
    return $_response_object;
}

#
# delete_billing_addr
#
# Delete a billing address
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_billing_addr' } = {
        summary => 'Delete a billing address',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_billing_addr {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling delete_billing_addr");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/billing_address';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_billing_addr
#
# Get a billing address
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_billing_addr' } = {
        summary => 'Get a billing address',
        params => $params,
        returns => 'BillingAddressResponse',
        };
}
# @return BillingAddressResponse
#
sub get_billing_addr {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling get_billing_addr");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/billing_address';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    my $_response_object = $self->{api_client}->deserialize('BillingAddressResponse', $response);
    return $_response_object;
}

#
# update_billing_addr
#
# Update a billing address
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param UpdateBillingAddressRequest $update_billing_address_request One or more billing address attributes (optional)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'update_billing_address_request' => {
        data_type => 'UpdateBillingAddressRequest',
        description => 'One or more billing address attributes',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_billing_addr' } = {
        summary => 'Update a billing address',
        params => $params,
        returns => 'BillingAddressResponse',
        };
}
# @return BillingAddressResponse
#
sub update_billing_addr {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling update_billing_addr");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/billing_address';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_billing_address_request'}) {
        $_body_data = $args{'update_billing_address_request'};
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
    my $_response_object = $self->{api_client}->deserialize('BillingAddressResponse', $response);
    return $_response_object;
}

1;
