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
package Fastly::ServerApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_pool_server
#
# Add a server to a pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $pool_id Alphanumeric string identifying a Pool. (required)
# @param int $weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (optional, default to 100)
# @param int $max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (optional, default to 0)
# @param int $port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (optional, default to 80)
# @param string $address A hostname, IPv4, or IPv6 address for the server. Required. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param boolean $disabled Allows servers to be enabled and disabled in a pool. (optional, default to false)
# @param string $override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'pool_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Pool.',
        required => '1',
    },
    'weight' => {
        data_type => 'int',
        description => 'Weight (&#x60;1-100&#x60;) used to load balance this server against others.',
        required => '0',
    },
    'max_conn' => {
        data_type => 'int',
        description => 'Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS.',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname, IPv4, or IPv6 address for the server. Required.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'disabled' => {
        data_type => 'boolean',
        description => 'Allows servers to be enabled and disabled in a pool.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_pool_server' } = {
        summary => 'Add a server to a pool',
        params => $params,
        returns => 'ServerResponse',
        };
}
# @return ServerResponse
#
sub create_pool_server {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_pool_server");
    }

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling create_pool_server");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/pool/{pool_id}/server';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'weight'} ) {
                $form_params->{'weight'} = $self->{api_client}->to_form_value($args{'weight'});
    }

    # form params
    if ( exists $args{'max_conn'} ) {
                $form_params->{'max_conn'} = $self->{api_client}->to_form_value($args{'max_conn'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'disabled'} ) {
                $form_params->{'disabled'} = $self->{api_client}->to_form_value($args{'disabled'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
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
    my $_response_object = $self->{api_client}->deserialize('ServerResponse', $response);
    return $_response_object;
}

#
# delete_pool_server
#
# Delete a server from a pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $pool_id Alphanumeric string identifying a Pool. (required)
# @param string $server_id Alphanumeric string identifying a Server. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'pool_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Pool.',
        required => '1',
    },
    'server_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Server.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_pool_server' } = {
        summary => 'Delete a server from a pool',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_pool_server {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_pool_server");
    }

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling delete_pool_server");
    }

    # verify the required parameter 'server_id' is set
    unless (exists $args{'server_id'}) {
      croak("Missing the required parameter 'server_id' when calling delete_pool_server");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'server_id'}) {
        my $_base_variable = "{" . "server_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'server_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DeleteAcl200Response', $response);
    return $_response_object;
}

#
# get_pool_server
#
# Get a pool server
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $pool_id Alphanumeric string identifying a Pool. (required)
# @param string $server_id Alphanumeric string identifying a Server. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'pool_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Pool.',
        required => '1',
    },
    'server_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Server.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_pool_server' } = {
        summary => 'Get a pool server',
        params => $params,
        returns => 'ServerResponse',
        };
}
# @return ServerResponse
#
sub get_pool_server {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_pool_server");
    }

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling get_pool_server");
    }

    # verify the required parameter 'server_id' is set
    unless (exists $args{'server_id'}) {
      croak("Missing the required parameter 'server_id' when calling get_pool_server");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'server_id'}) {
        my $_base_variable = "{" . "server_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'server_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ServerResponse', $response);
    return $_response_object;
}

#
# list_pool_servers
#
# List servers in a pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $pool_id Alphanumeric string identifying a Pool. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'pool_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_pool_servers' } = {
        summary => 'List servers in a pool',
        params => $params,
        returns => 'ARRAY[ServerResponse]',
        };
}
# @return ARRAY[ServerResponse]
#
sub list_pool_servers {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_pool_servers");
    }

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling list_pool_servers");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/pool/{pool_id}/servers';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ServerResponse]', $response);
    return $_response_object;
}

#
# update_pool_server
#
# Update a server
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $pool_id Alphanumeric string identifying a Pool. (required)
# @param string $server_id Alphanumeric string identifying a Server. (required)
# @param int $weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (optional, default to 100)
# @param int $max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (optional, default to 0)
# @param int $port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (optional, default to 80)
# @param string $address A hostname, IPv4, or IPv6 address for the server. Required. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param boolean $disabled Allows servers to be enabled and disabled in a pool. (optional, default to false)
# @param string $override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'pool_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Pool.',
        required => '1',
    },
    'server_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Server.',
        required => '1',
    },
    'weight' => {
        data_type => 'int',
        description => 'Weight (&#x60;1-100&#x60;) used to load balance this server against others.',
        required => '0',
    },
    'max_conn' => {
        data_type => 'int',
        description => 'Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS.',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname, IPv4, or IPv6 address for the server. Required.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'disabled' => {
        data_type => 'boolean',
        description => 'Allows servers to be enabled and disabled in a pool.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_pool_server' } = {
        summary => 'Update a server',
        params => $params,
        returns => 'ServerResponse',
        };
}
# @return ServerResponse
#
sub update_pool_server {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_pool_server");
    }

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling update_pool_server");
    }

    # verify the required parameter 'server_id' is set
    unless (exists $args{'server_id'}) {
      croak("Missing the required parameter 'server_id' when calling update_pool_server");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'server_id'}) {
        my $_base_variable = "{" . "server_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'server_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'weight'} ) {
                $form_params->{'weight'} = $self->{api_client}->to_form_value($args{'weight'});
    }

    # form params
    if ( exists $args{'max_conn'} ) {
                $form_params->{'max_conn'} = $self->{api_client}->to_form_value($args{'max_conn'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'disabled'} ) {
                $form_params->{'disabled'} = $self->{api_client}->to_form_value($args{'disabled'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
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
    my $_response_object = $self->{api_client}->deserialize('ServerResponse', $response);
    return $_response_object;
}

1;
