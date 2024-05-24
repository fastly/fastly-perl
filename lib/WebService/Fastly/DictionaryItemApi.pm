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
package WebService::Fastly::DictionaryItemApi;

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
# bulk_update_dictionary_item
#
# Update multiple entries in an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param BulkUpdateDictionaryListRequest $bulk_update_dictionary_list_request  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'bulk_update_dictionary_list_request' => {
        data_type => 'BulkUpdateDictionaryListRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_update_dictionary_item' } = {
        summary => 'Update multiple entries in an edge dictionary',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub bulk_update_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling bulk_update_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling bulk_update_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/items';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bulk_update_dictionary_list_request'}) {
        $_body_data = $args{'bulk_update_dictionary_list_request'};
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
# create_dictionary_item
#
# Create an entry in an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
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
    __PACKAGE__->method_documentation->{ 'create_dictionary_item' } = {
        summary => 'Create an entry in an edge dictionary',
        params => $params,
        returns => 'DictionaryItemResponse',
        };
}
# @return DictionaryItemResponse
#
sub create_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling create_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/item';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryItemResponse', $response);
    return $_response_object;
}

#
# delete_dictionary_item
#
# Delete an item from an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param string $dictionary_item_key Item key, maximum 256 characters. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'dictionary_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dictionary_item' } = {
        summary => 'Delete an item from an edge dictionary',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling delete_dictionary_item");
    }

    # verify the required parameter 'dictionary_item_key' is set
    unless (exists $args{'dictionary_item_key'}) {
      croak("Missing the required parameter 'dictionary_item_key' when calling delete_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_item_key'}) {
        my $_base_variable = "{" . "dictionary_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_item_key'});
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
# get_dictionary_item
#
# Get an item from an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param string $dictionary_item_key Item key, maximum 256 characters. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'dictionary_item_key' => {
        data_type => 'string',
        description => 'Item key, maximum 256 characters.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dictionary_item' } = {
        summary => 'Get an item from an edge dictionary',
        params => $params,
        returns => 'DictionaryItemResponse',
        };
}
# @return DictionaryItemResponse
#
sub get_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling get_dictionary_item");
    }

    # verify the required parameter 'dictionary_item_key' is set
    unless (exists $args{'dictionary_item_key'}) {
      croak("Missing the required parameter 'dictionary_item_key' when calling get_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_item_key'}) {
        my $_base_variable = "{" . "dictionary_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_item_key'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryItemResponse', $response);
    return $_response_object;
}

#
# list_dictionary_items
#
# List items in an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param int $page Current page. (optional)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param string $sort Field on which to sort. (optional, default to 'created')
# @param string $direction Direction in which to sort results. (optional, default to 'ascend')
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Field on which to sort.',
        required => '0',
    },
    'direction' => {
        data_type => 'string',
        description => 'Direction in which to sort results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_dictionary_items' } = {
        summary => 'List items in an edge dictionary',
        params => $params,
        returns => 'ARRAY[DictionaryItemResponse]',
        };
}
# @return ARRAY[DictionaryItemResponse]
#
sub list_dictionary_items {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_dictionary_items");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling list_dictionary_items");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/items';

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
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'per_page'}) {
        $query_params->{'per_page'} = $self->{api_client}->to_query_value($args{'per_page'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'direction'}) {
        $query_params->{'direction'} = $self->{api_client}->to_query_value($args{'direction'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DictionaryItemResponse]', $response);
    return $_response_object;
}

#
# update_dictionary_item
#
# Update an entry in an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param string $dictionary_item_key Item key, maximum 256 characters. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'dictionary_item_key' => {
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
    __PACKAGE__->method_documentation->{ 'update_dictionary_item' } = {
        summary => 'Update an entry in an edge dictionary',
        params => $params,
        returns => 'DictionaryItemResponse',
        };
}
# @return DictionaryItemResponse
#
sub update_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling update_dictionary_item");
    }

    # verify the required parameter 'dictionary_item_key' is set
    unless (exists $args{'dictionary_item_key'}) {
      croak("Missing the required parameter 'dictionary_item_key' when calling update_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_item_key'}) {
        my $_base_variable = "{" . "dictionary_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_item_key'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryItemResponse', $response);
    return $_response_object;
}

#
# upsert_dictionary_item
#
# Insert or update an entry in an edge dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $dictionary_id Alphanumeric string identifying a Dictionary. (required)
# @param string $dictionary_item_key Item key, maximum 256 characters. (required)
# @param string $item_key Item key, maximum 256 characters. (optional)
# @param string $item_value Item value, maximum 8000 characters. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'dictionary_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Dictionary.',
        required => '1',
    },
    'dictionary_item_key' => {
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
    __PACKAGE__->method_documentation->{ 'upsert_dictionary_item' } = {
        summary => 'Insert or update an entry in an edge dictionary',
        params => $params,
        returns => 'DictionaryItemResponse',
        };
}
# @return DictionaryItemResponse
#
sub upsert_dictionary_item {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling upsert_dictionary_item");
    }

    # verify the required parameter 'dictionary_id' is set
    unless (exists $args{'dictionary_id'}) {
      croak("Missing the required parameter 'dictionary_id' when calling upsert_dictionary_item");
    }

    # verify the required parameter 'dictionary_item_key' is set
    unless (exists $args{'dictionary_item_key'}) {
      croak("Missing the required parameter 'dictionary_item_key' when calling upsert_dictionary_item");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_id'}) {
        my $_base_variable = "{" . "dictionary_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'dictionary_item_key'}) {
        my $_base_variable = "{" . "dictionary_item_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_item_key'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryItemResponse', $response);
    return $_response_object;
}

1;
