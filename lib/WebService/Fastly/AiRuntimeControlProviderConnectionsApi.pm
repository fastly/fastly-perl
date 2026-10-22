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
package WebService::Fastly::AiRuntimeControlProviderConnectionsApi;

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
# arc_create_provider_connection
#
# Create a provider connection
#
# @param ArcProviderConnectionRequest $arc_provider_connection_request  (required)
{
    my $params = {
    'arc_provider_connection_request' => {
        data_type => 'ArcProviderConnectionRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_create_provider_connection' } = {
        summary => 'Create a provider connection',
        params => $params,
        returns => 'ArcProviderConnectionResponse',
        };
}
# @return ArcProviderConnectionResponse
#
sub arc_create_provider_connection {
    my ($self, %args) = @_;

    # verify the required parameter 'arc_provider_connection_request' is set
    unless (exists $args{'arc_provider_connection_request'}) {
      croak("Missing the required parameter 'arc_provider_connection_request' when calling arc_create_provider_connection");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/provider-connections';

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
    if ( exists $args{'arc_provider_connection_request'}) {
        $_body_data = $args{'arc_provider_connection_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcProviderConnectionResponse', $response);
    return $_response_object;
}

#
# arc_delete_provider_connection
#
# Delete a provider connection
#
# @param string $id The ID of the provider connection. (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The ID of the provider connection.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_delete_provider_connection' } = {
        summary => 'Delete a provider connection',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub arc_delete_provider_connection {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling arc_delete_provider_connection");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/provider-connections/{id}';

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
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
# arc_get_provider_connection
#
# Get a provider connection
#
# @param string $id The ID of the provider connection. (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The ID of the provider connection.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_get_provider_connection' } = {
        summary => 'Get a provider connection',
        params => $params,
        returns => 'ArcGetProviderConnectionResponse',
        };
}
# @return ArcGetProviderConnectionResponse
#
sub arc_get_provider_connection {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling arc_get_provider_connection");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/provider-connections/{id}';

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
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
    my $_response_object = $self->{api_client}->deserialize('ArcGetProviderConnectionResponse', $response);
    return $_response_object;
}

#
# arc_list_provider_connections
#
# List provider connections
#
# @param boolean $include_deleted Include deleted provider connections in the results. Deleted connections have a &#x60;deleted_at&#x60; value. (optional, default to false)
# @param string $sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-name&#x60;).  (optional, default to 'created_at')
{
    my $params = {
    'include_deleted' => {
        data_type => 'boolean',
        description => 'Include deleted provider connections in the results. Deleted connections have a &#x60;deleted_at&#x60; value.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-name&#x60;). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_list_provider_connections' } = {
        summary => 'List provider connections',
        params => $params,
        returns => 'ArcProviderConnectionsResponse',
        };
}
# @return ArcProviderConnectionsResponse
#
sub arc_list_provider_connections {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/provider-connections';

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
    my $_response_object = $self->{api_client}->deserialize('ArcProviderConnectionsResponse', $response);
    return $_response_object;
}

#
# arc_update_provider_connection
#
# Update a provider connection
#
# @param string $id The ID of the provider connection. (required)
# @param ArcUpdateProviderConnectionRequest $arc_update_provider_connection_request  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The ID of the provider connection.',
        required => '1',
    },
    'arc_update_provider_connection_request' => {
        data_type => 'ArcUpdateProviderConnectionRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_update_provider_connection' } = {
        summary => 'Update a provider connection',
        params => $params,
        returns => 'ArcProviderConnectionResponse',
        };
}
# @return ArcProviderConnectionResponse
#
sub arc_update_provider_connection {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling arc_update_provider_connection");
    }

    # verify the required parameter 'arc_update_provider_connection_request' is set
    unless (exists $args{'arc_update_provider_connection_request'}) {
      croak("Missing the required parameter 'arc_update_provider_connection_request' when calling arc_update_provider_connection");
    }

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/provider-connections/{id}';

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'arc_update_provider_connection_request'}) {
        $_body_data = $args{'arc_update_provider_connection_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ArcProviderConnectionResponse', $response);
    return $_response_object;
}

1;
