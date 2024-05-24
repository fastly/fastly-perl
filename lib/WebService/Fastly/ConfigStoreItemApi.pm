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
package WebService::Fastly::ConfigStoreItemApi;

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
# bulk_update_config_store_item
#
# Update multiple entries in a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param BulkUpdateConfigStoreListRequest $bulk_update_config_store_list_request  (optional)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'bulk_update_config_store_list_request' => {
        data_type => 'BulkUpdateConfigStoreListRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_update_config_store_item' } = {
        summary => 'Update multiple entries in a config store',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub bulk_update_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling bulk_update_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/items';

    my $_method = 'PATCH';
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
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bulk_update_config_store_list_request'}) {
        $_body_data = $args{'bulk_update_config_store_list_request'};
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# create_config_store_item
#
# Create an entry in a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '0',
    },
    'item_value' => {
        data_type => 'string',
        description => 'Item value, maximum 8000 characters.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_config_store_item' } = {
        summary => 'Create an entry in a config store',
        params => $params,
        returns => 'ConfigStoreItemResponse',
        };
}
# @return ConfigStoreItemResponse
#
sub create_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling create_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/item';

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

    # path params
    if ( exists $args{'config_store_id'}) {
        my $_base_variable = "{" . "config_store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'item_key'} ) {
                $form_params->{'item_key'} = $self->{api_client}->to_form_value($args{'item_key'});
    }

    # form params
    if ( exists $args{'item_value'} ) {
                $form_params->{'item_value'} = $self->{api_client}->to_form_value($args{'item_value'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreItemResponse', $response);
    return $_response_object;
}

#
# delete_config_store_item
#
# Delete an item from a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $config_store_item_key Item key, maximum 256 characters. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'config_store_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_config_store_item' } = {
        summary => 'Delete an item from a config store',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling delete_config_store_item");
    }

    # verify the required parameter 'config_store_item_key' is set
    unless (exists $args{'config_store_item_key'}) {
      croak("Missing the required parameter 'config_store_item_key' when calling delete_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}';

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

    # path params
    if ( exists $args{'config_store_item_key'}) {
        my $_base_variable = "{" . "config_store_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_item_key'});
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
# get_config_store_item
#
# Get an item from a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $config_store_item_key Item key, maximum 256 characters. (required)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'config_store_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_config_store_item' } = {
        summary => 'Get an item from a config store',
        params => $params,
        returns => 'ConfigStoreItemResponse',
        };
}
# @return ConfigStoreItemResponse
#
sub get_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling get_config_store_item");
    }

    # verify the required parameter 'config_store_item_key' is set
    unless (exists $args{'config_store_item_key'}) {
      croak("Missing the required parameter 'config_store_item_key' when calling get_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}';

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

    # path params
    if ( exists $args{'config_store_item_key'}) {
        my $_base_variable = "{" . "config_store_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_item_key'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreItemResponse', $response);
    return $_response_object;
}

#
# list_config_store_items
#
# List items in a config store
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
    __PACKAGE__->method_documentation->{ 'list_config_store_items' } = {
        summary => 'List items in a config store',
        params => $params,
        returns => 'ARRAY[ConfigStoreItemResponse]',
        };
}
# @return ARRAY[ConfigStoreItemResponse]
#
sub list_config_store_items {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling list_config_store_items");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/items';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConfigStoreItemResponse]', $response);
    return $_response_object;
}

#
# update_config_store_item
#
# Update an entry in a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $config_store_item_key Item key, maximum 256 characters. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'config_store_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    'item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '0',
    },
    'item_value' => {
        data_type => 'string',
        description => 'Item value, maximum 8000 characters.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_config_store_item' } = {
        summary => 'Update an entry in a config store',
        params => $params,
        returns => 'ConfigStoreItemResponse',
        };
}
# @return ConfigStoreItemResponse
#
sub update_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling update_config_store_item");
    }

    # verify the required parameter 'config_store_item_key' is set
    unless (exists $args{'config_store_item_key'}) {
      croak("Missing the required parameter 'config_store_item_key' when calling update_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}';

    my $_method = 'PATCH';
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

    # path params
    if ( exists $args{'config_store_item_key'}) {
        my $_base_variable = "{" . "config_store_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_item_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'item_key'} ) {
                $form_params->{'item_key'} = $self->{api_client}->to_form_value($args{'item_key'});
    }

    # form params
    if ( exists $args{'item_value'} ) {
                $form_params->{'item_value'} = $self->{api_client}->to_form_value($args{'item_value'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreItemResponse', $response);
    return $_response_object;
}

#
# upsert_config_store_item
#
# Insert or update an entry in a config store
#
# @param string $config_store_id An alphanumeric string identifying the config store. (required)
# @param string $config_store_item_key Item key, maximum 256 characters. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'config_store_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the config store.',
        required => '1',
    },
    'config_store_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    'item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '0',
    },
    'item_value' => {
        data_type => 'string',
        description => 'Item value, maximum 8000 characters.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'upsert_config_store_item' } = {
        summary => 'Insert or update an entry in a config store',
        params => $params,
        returns => 'ConfigStoreItemResponse',
        };
}
# @return ConfigStoreItemResponse
#
sub upsert_config_store_item {
    my ($self, %args) = @_;

    # verify the required parameter 'config_store_id' is set
    unless (exists $args{'config_store_id'}) {
      croak("Missing the required parameter 'config_store_id' when calling upsert_config_store_item");
    }

    # verify the required parameter 'config_store_item_key' is set
    unless (exists $args{'config_store_item_key'}) {
      croak("Missing the required parameter 'config_store_item_key' when calling upsert_config_store_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}';

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

    # path params
    if ( exists $args{'config_store_item_key'}) {
        my $_base_variable = "{" . "config_store_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_store_item_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'item_key'} ) {
                $form_params->{'item_key'} = $self->{api_client}->to_form_value($args{'item_key'});
    }

    # form params
    if ( exists $args{'item_value'} ) {
                $form_params->{'item_value'} = $self->{api_client}->to_form_value($args{'item_value'});
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
    my $_response_object = $self->{api_client}->deserialize('ConfigStoreItemResponse', $response);
    return $_response_object;
}

1;
