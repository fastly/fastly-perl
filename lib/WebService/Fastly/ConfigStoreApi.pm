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
package WebService::Fastly::ConfigStoreApi;

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
# create_config_store
#
# Create a config store
#
# @param string $name The name of the config store. (optional)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The name of the config store.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_config_store' } = {
        summary => 'Create a config store',
        params => $params,
        returns => 'ConfigStoreResponse',
        };
}
# @return ConfigStoreResponse
#
sub create_config_store {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/config';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreResponse', $response);
    return $_response_object;
}

#
# delete_config_store
#
# Delete a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_config_store' } = {
        summary => 'Delete a config store',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_config_store {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling delete_config_store");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}';

    my $_method = 'DELETE';
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
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# get_config_store
#
# Describe a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_config_store' } = {
        summary => 'Describe a config store',
        params => $params,
        returns => 'ConfigStoreResponse',
        };
}
# @return ConfigStoreResponse
#
sub get_config_store {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling get_config_store");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}';

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
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreResponse', $response);
    return $_response_object;
}

#
# get_config_store_info
#
# Get config store metadata
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_config_store_info' } = {
        summary => 'Get config store metadata',
        params => $params,
        returns => 'ConfigStoreInfoResponse',
        };
}
# @return ConfigStoreInfoResponse
#
sub get_config_store_info {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling get_config_store_info");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/info';

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
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreInfoResponse', $response);
    return $_response_object;
}

#
# list_config_store_services
#
# List linked services
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_config_store_services' } = {
        summary => 'List linked services',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_config_store_services {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling list_config_store_services");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/services';

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
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# list_config_stores
#
# List config stores
#
# @param string $name Returns a one-element array containing the details for the named config store. (optional)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'Returns a one-element array containing the details for the named config store.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_config_stores' } = {
        summary => 'List config stores',
        params => $params,
        returns => 'ARRAY[ConfigStoreResponse]',
        };
}
# @return ARRAY[ConfigStoreResponse]
#
sub list_config_stores {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/config';

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

    # query params
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConfigStoreResponse]', $response);
    return $_response_object;
}

#
# update_config_store
#
# Update a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $name The name of the config store. (optional)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the config store.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_config_store' } = {
        summary => 'Update a config store',
        params => $params,
        returns => 'ConfigStoreResponse',
        };
}
# @return ConfigStoreResponse
#
sub update_config_store {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling update_config_store");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreResponse', $response);
    return $_response_object;
}

1;
