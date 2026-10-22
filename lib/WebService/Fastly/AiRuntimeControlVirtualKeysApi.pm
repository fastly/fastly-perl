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
package WebService::Fastly::AiRuntimeControlVirtualKeysApi;

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
# arc_create_virtual_key
#
# Create a virtual key
#
# @param ArcVirtualKey $arc_virtual_key  (required)
{
    my $params = {
    'arc_virtual_key' => {
        data_type => 'ArcVirtualKey',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_create_virtual_key' } = {
        summary => 'Create a virtual key',
        params => $params,
        returns => 'ArcCreateVirtualKeyResponse',
        };
}
# @return ArcCreateVirtualKeyResponse
#
sub arc_create_virtual_key {
    my ($self, %args) = @_;

    # verify the required parameter 'arc_virtual_key' is set
    unless (exists $args{'arc_virtual_key'}) {
      croak("Missing the required parameter 'arc_virtual_key' when calling arc_create_virtual_key");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'arc_virtual_key'}) {
        $_body_data = $args{'arc_virtual_key'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcCreateVirtualKeyResponse', $response);
    return $_response_object;
}

#
# arc_delete_virtual_key
#
# Delete a virtual key
#
# @param string $key_id The ID of the virtual key. (required)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_delete_virtual_key' } = {
        summary => 'Delete a virtual key',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub arc_delete_virtual_key {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_delete_virtual_key");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
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
# arc_get_virtual_key
#
# Get a virtual key
#
# @param string $key_id The ID of the virtual key. (required)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_get_virtual_key' } = {
        summary => 'Get a virtual key',
        params => $params,
        returns => 'ArcVirtualKeyResponse',
        };
}
# @return ArcVirtualKeyResponse
#
sub arc_get_virtual_key {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_get_virtual_key");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ArcVirtualKeyResponse', $response);
    return $_response_object;
}

#
# arc_get_virtual_key_failover
#
# Get a virtual key's failover policy
#
# @param string $key_id The ID of the virtual key. (required)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_get_virtual_key_failover' } = {
        summary => 'Get a virtual key&#39;s failover policy',
        params => $params,
        returns => 'ArcVirtualKeyFailoverResponse',
        };
}
# @return ArcVirtualKeyFailoverResponse
#
sub arc_get_virtual_key_failover {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_get_virtual_key_failover");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}/failover';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ArcVirtualKeyFailoverResponse', $response);
    return $_response_object;
}

#
# arc_list_virtual_keys
#
# List virtual keys
#
# @param boolean $include_deleted Include deleted virtual keys in the results. (optional, default to false)
# @param string $search Filter results to virtual keys whose name contains this substring. (optional)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page.  (optional)
# @param int $limit Limit how many results are returned. (optional, default to 10)
# @param string $sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (optional, default to 'created_at')
{
    my $params = {
    'include_deleted' => {
        data_type => 'boolean',
        description => 'Include deleted virtual keys in the results.',
        required => '0',
    },
    'search' => {
        data_type => 'string',
        description => 'Filter results to virtual keys whose name contains this substring.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. ',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_list_virtual_keys' } = {
        summary => 'List virtual keys',
        params => $params,
        returns => 'ArcVirtualKeysResponse',
        };
}
# @return ArcVirtualKeysResponse
#
sub arc_list_virtual_keys {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'include_deleted'}) {
        $query_params->{'include_deleted'} = $self->{api_client}->to_query_value($args{'include_deleted'});
    }

    # query params
    if ( exists $args{'search'}) {
        $query_params->{'search'} = $self->{api_client}->to_query_value($args{'search'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
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
    my $_response_object = $self->{api_client}->deserialize('ArcVirtualKeysResponse', $response);
    return $_response_object;
}

#
# arc_rotate_virtual_key
#
# Rotate a virtual key
#
# @param string $key_id The ID of the virtual key. (required)
# @param ArcRotateVirtualKeyRequest $arc_rotate_virtual_key_request  (optional)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    'arc_rotate_virtual_key_request' => {
        data_type => 'ArcRotateVirtualKeyRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_rotate_virtual_key' } = {
        summary => 'Rotate a virtual key',
        params => $params,
        returns => 'ArcRotateVirtualKeyResponse',
        };
}
# @return ArcRotateVirtualKeyResponse
#
sub arc_rotate_virtual_key {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_rotate_virtual_key");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}/rotate';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'arc_rotate_virtual_key_request'}) {
        $_body_data = $args{'arc_rotate_virtual_key_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcRotateVirtualKeyResponse', $response);
    return $_response_object;
}

#
# arc_update_virtual_key
#
# Update a virtual key
#
# @param string $key_id The ID of the virtual key. (required)
# @param ArcUpdateVirtualKeyRequest $arc_update_virtual_key_request  (required)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    'arc_update_virtual_key_request' => {
        data_type => 'ArcUpdateVirtualKeyRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_update_virtual_key' } = {
        summary => 'Update a virtual key',
        params => $params,
        returns => 'ArcUpdateVirtualKeyResponse',
        };
}
# @return ArcUpdateVirtualKeyResponse
#
sub arc_update_virtual_key {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_update_virtual_key");
    }

    # verify the required parameter 'arc_update_virtual_key_request' is set
    unless (exists $args{'arc_update_virtual_key_request'}) {
      croak("Missing the required parameter 'arc_update_virtual_key_request' when calling arc_update_virtual_key");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'arc_update_virtual_key_request'}) {
        $_body_data = $args{'arc_update_virtual_key_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcUpdateVirtualKeyResponse', $response);
    return $_response_object;
}

#
# arc_update_virtual_key_failover
#
# Update a virtual key's failover policy
#
# @param string $key_id The ID of the virtual key. (required)
# @param ArcVirtualKeyFailoverRequest $arc_virtual_key_failover_request  (required)
{
    my $params = {
    'key_id' => {
        data_type => 'string',
        description => 'The ID of the virtual key.',
        required => '1',
    },
    'arc_virtual_key_failover_request' => {
        data_type => 'ArcVirtualKeyFailoverRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_update_virtual_key_failover' } = {
        summary => 'Update a virtual key&#39;s failover policy',
        params => $params,
        returns => 'ArcVirtualKeyFailoverResponse',
        };
}
# @return ArcVirtualKeyFailoverResponse
#
sub arc_update_virtual_key_failover {
    my ($self, %args) = @_;

    # verify the required parameter 'key_id' is set
    unless (exists $args{'key_id'}) {
      croak("Missing the required parameter 'key_id' when calling arc_update_virtual_key_failover");
    }

    # verify the required parameter 'arc_virtual_key_failover_request' is set
    unless (exists $args{'arc_virtual_key_failover_request'}) {
      croak("Missing the required parameter 'arc_virtual_key_failover_request' when calling arc_update_virtual_key_failover");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/keys/{key_id}/failover';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'key_id'}) {
        my $_base_variable = "{" . "key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'arc_virtual_key_failover_request'}) {
        $_body_data = $args{'arc_virtual_key_failover_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcVirtualKeyFailoverResponse', $response);
    return $_response_object;
}

1;
