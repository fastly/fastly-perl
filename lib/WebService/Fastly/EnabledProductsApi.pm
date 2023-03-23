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
package WebService::Fastly::EnabledProductsApi;

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
# disable_product
#
# Disable a product
#
# @param string $product_id  (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'product_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'disable_product' } = {
        summary => 'Disable a product',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub disable_product {
    my ($self, %args) = @_;

    # verify the required parameter 'product_id' is set
    unless (exists $args{'product_id'}) {
      croak("Missing the required parameter 'product_id' when calling disable_product");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling disable_product");
    }

    # parse inputs
    my $_resource_path = '/enabled-products/{product_id}/services/{service_id}';

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
    if ( exists $args{'product_id'}) {
        my $_base_variable = "{" . "product_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'product_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
# enable_product
#
# Enable a product
#
# @param string $product_id  (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'product_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'enable_product' } = {
        summary => 'Enable a product',
        params => $params,
        returns => 'EnabledProductResponse',
        };
}
# @return EnabledProductResponse
#
sub enable_product {
    my ($self, %args) = @_;

    # verify the required parameter 'product_id' is set
    unless (exists $args{'product_id'}) {
      croak("Missing the required parameter 'product_id' when calling enable_product");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling enable_product");
    }

    # parse inputs
    my $_resource_path = '/enabled-products/{product_id}/services/{service_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'product_id'}) {
        my $_base_variable = "{" . "product_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'product_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EnabledProductResponse', $response);
    return $_response_object;
}

#
# get_enabled_product
#
# Get enabled product
#
# @param string $product_id  (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'product_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_enabled_product' } = {
        summary => 'Get enabled product',
        params => $params,
        returns => 'EnabledProductResponse',
        };
}
# @return EnabledProductResponse
#
sub get_enabled_product {
    my ($self, %args) = @_;

    # verify the required parameter 'product_id' is set
    unless (exists $args{'product_id'}) {
      croak("Missing the required parameter 'product_id' when calling get_enabled_product");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_enabled_product");
    }

    # parse inputs
    my $_resource_path = '/enabled-products/{product_id}/services/{service_id}';

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

    # path params
    if ( exists $args{'product_id'}) {
        my $_base_variable = "{" . "product_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'product_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EnabledProductResponse', $response);
    return $_response_object;
}

1;
