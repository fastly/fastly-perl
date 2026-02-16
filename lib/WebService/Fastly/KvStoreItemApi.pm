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
package WebService::Fastly::KvStoreItemApi;

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
# kv_store_delete_item
#
# Delete an item.
#
# @param string $store_id  (required)
# @param string $key  (required)
# @param int $if_generation_match  (optional)
# @param boolean $force  (optional, default to false)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'if_generation_match' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'force' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_delete_item' } = {
        summary => 'Delete an item.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub kv_store_delete_item {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_delete_item");
    }

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling kv_store_delete_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}/keys/{key}';

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

    # query params
    if ( exists $args{'force'}) {
        $query_params->{'force'} = $self->{api_client}->to_query_value($args{'force'});
    }

    # header params
    if ( exists $args{'if_generation_match'}) {
        $header_params->{'if-generation-match'} = $self->{api_client}->to_header_value($args{'if_generation_match'});
    }

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'key'}) {
        my $_base_variable = "{" . "key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key'});
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
# kv_store_get_item
#
# Get an item.
#
# @param string $store_id  (required)
# @param string $key  (required)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_get_item' } = {
        summary => 'Get an item.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub kv_store_get_item {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_get_item");
    }

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling kv_store_get_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}/keys/{key}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/octet-stream');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'key'}) {
        my $_base_variable = "{" . "key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# kv_store_list_item_keys
#
# List item keys.
#
# @param string $store_id  (required)
# @param string $cursor  (optional)
# @param int $limit  (optional, default to 100)
# @param string $prefix  (optional)
# @param string $consistency  (optional, default to 'strong')
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'cursor' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'prefix' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'consistency' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_list_item_keys' } = {
        summary => 'List item keys.',
        params => $params,
        returns => 'InlineResponse20011',
        };
}
# @return InlineResponse20011
#
sub kv_store_list_item_keys {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_list_item_keys");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}/keys';

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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'prefix'}) {
        $query_params->{'prefix'} = $self->{api_client}->to_query_value($args{'prefix'});
    }

    # query params
    if ( exists $args{'consistency'}) {
        $query_params->{'consistency'} = $self->{api_client}->to_query_value($args{'consistency'});
    }

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20011', $response);
    return $_response_object;
}

#
# kv_store_upsert_item
#
# Insert or update an item.
#
# @param string $store_id  (required)
# @param string $key  (required)
# @param int $if_generation_match  (optional)
# @param int $time_to_live_sec  (optional)
# @param string $metadata  (optional)
# @param boolean $add  (optional, default to false)
# @param boolean $append  (optional, default to false)
# @param boolean $prepend  (optional, default to false)
# @param boolean $background_fetch  (optional, default to false)
# @param string $body  (optional)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'if_generation_match' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'time_to_live_sec' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'metadata' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'add' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'append' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'prepend' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'background_fetch' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'body' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_upsert_item' } = {
        summary => 'Insert or update an item.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub kv_store_upsert_item {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_upsert_item");
    }

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling kv_store_upsert_item");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}/keys/{key}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/octet-stream');

    # query params
    if ( exists $args{'add'}) {
        $query_params->{'add'} = $self->{api_client}->to_query_value($args{'add'});
    }

    # query params
    if ( exists $args{'append'}) {
        $query_params->{'append'} = $self->{api_client}->to_query_value($args{'append'});
    }

    # query params
    if ( exists $args{'prepend'}) {
        $query_params->{'prepend'} = $self->{api_client}->to_query_value($args{'prepend'});
    }

    # query params
    if ( exists $args{'background_fetch'}) {
        $query_params->{'background_fetch'} = $self->{api_client}->to_query_value($args{'background_fetch'});
    }

    # header params
    if ( exists $args{'if_generation_match'}) {
        $header_params->{'if-generation-match'} = $self->{api_client}->to_header_value($args{'if_generation_match'});
    }

    # header params
    if ( exists $args{'time_to_live_sec'}) {
        $header_params->{'time_to_live_sec'} = $self->{api_client}->to_header_value($args{'time_to_live_sec'});
    }

    # header params
    if ( exists $args{'metadata'}) {
        $header_params->{'metadata'} = $self->{api_client}->to_header_value($args{'metadata'});
    }

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'key'}) {
        my $_base_variable = "{" . "key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
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
