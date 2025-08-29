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
package WebService::Fastly::PoolApi;

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
# create_server_pool
#
# Create a server pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (optional, default to 'null')
# @param int $use_tls Whether to use TLS. (optional, default to 0)
# @param DateTime $created_at Date and time in ISO 8601 format. (optional)
# @param DateTime $deleted_at Date and time in ISO 8601 format. (optional)
# @param DateTime $updated_at Date and time in ISO 8601 format. (optional)
# @param string $service_id  (optional)
# @param string $version  (optional)
# @param string $name Name for the Pool. (optional)
# @param string $shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding. (optional, default to 'null')
# @param string $request_condition Condition which, if met, will select this configuration during a request. Optional. (optional)
# @param string $tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. (optional)
# @param string $tls_sni_hostname SNI hostname. Optional. (optional)
# @param int $min_tls_version Minimum allowed TLS version on connections to this server. Optional. (optional)
# @param int $max_tls_version Maximum allowed TLS version on connections to this server. Optional. (optional)
# @param string $healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param string $type What type of load balance group to use. (optional)
# @param string $override_host The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (optional, default to 'null')
# @param int $between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;. (optional, default to 10000)
# @param int $connect_timeout How long to wait for a timeout in milliseconds. Optional. (optional)
# @param int $first_byte_timeout How long to wait for the first byte in milliseconds. Optional. (optional)
# @param int $max_conn_default Maximum number of connections. Optional. (optional, default to 200)
# @param int $quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (optional, default to 75)
# @param int $tls_check_cert Be strict on checking TLS certs. Optional. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'tls_ca_cert' => {
        data_type => 'string',
        description => 'A secure certificate to authenticate a server with. Must be in PEM format.',
        required => '0',
    },
    'tls_client_cert' => {
        data_type => 'string',
        description => 'The client certificate used to make authenticated requests. Must be in PEM format.',
        required => '0',
    },
    'tls_client_key' => {
        data_type => 'string',
        description => 'The client private key used to make authenticated requests. Must be in PEM format.',
        required => '0',
    },
    'tls_cert_hostname' => {
        data_type => 'string',
        description => 'The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).',
        required => '0',
    },
    'use_tls' => {
        data_type => 'int',
        description => 'Whether to use TLS.',
        required => '0',
    },
    'created_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'deleted_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'updated_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'version' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the Pool.',
        required => '0',
    },
    'shield' => {
        data_type => 'string',
        description => 'Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        required => '0',
    },
    'tls_ciphers' => {
        data_type => 'string',
        description => 'List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.',
        required => '0',
    },
    'tls_sni_hostname' => {
        data_type => 'string',
        description => 'SNI hostname. Optional.',
        required => '0',
    },
    'min_tls_version' => {
        data_type => 'int',
        description => 'Minimum allowed TLS version on connections to this server. Optional.',
        required => '0',
    },
    'max_tls_version' => {
        data_type => 'int',
        description => 'Maximum allowed TLS version on connections to this server. Optional.',
        required => '0',
    },
    'healthcheck' => {
        data_type => 'string',
        description => 'Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'What type of load balance group to use.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.',
        required => '0',
    },
    'between_bytes_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.',
        required => '0',
    },
    'connect_timeout' => {
        data_type => 'int',
        description => 'How long to wait for a timeout in milliseconds. Optional.',
        required => '0',
    },
    'first_byte_timeout' => {
        data_type => 'int',
        description => 'How long to wait for the first byte in milliseconds. Optional.',
        required => '0',
    },
    'max_conn_default' => {
        data_type => 'int',
        description => 'Maximum number of connections. Optional.',
        required => '0',
    },
    'quorum' => {
        data_type => 'int',
        description => 'Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up.',
        required => '0',
    },
    'tls_check_cert' => {
        data_type => 'int',
        description => 'Be strict on checking TLS certs. Optional.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_server_pool' } = {
        summary => 'Create a server pool',
        params => $params,
        returns => 'PoolResponsePost',
        };
}
# @return PoolResponsePost
#
sub create_server_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_server_pool");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_server_pool");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/pool';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'tls_ca_cert'} ) {
                $form_params->{'tls_ca_cert'} = $self->{api_client}->to_form_value($args{'tls_ca_cert'});
    }

    # form params
    if ( exists $args{'tls_client_cert'} ) {
                $form_params->{'tls_client_cert'} = $self->{api_client}->to_form_value($args{'tls_client_cert'});
    }

    # form params
    if ( exists $args{'tls_client_key'} ) {
                $form_params->{'tls_client_key'} = $self->{api_client}->to_form_value($args{'tls_client_key'});
    }

    # form params
    if ( exists $args{'tls_cert_hostname'} ) {
                $form_params->{'tls_cert_hostname'} = $self->{api_client}->to_form_value($args{'tls_cert_hostname'});
    }

    # form params
    if ( exists $args{'use_tls'} ) {
                $form_params->{'use_tls'} = $self->{api_client}->to_form_value($args{'use_tls'});
    }

    # form params
    if ( exists $args{'created_at'} ) {
                $form_params->{'created_at'} = $self->{api_client}->to_form_value($args{'created_at'});
    }

    # form params
    if ( exists $args{'deleted_at'} ) {
                $form_params->{'deleted_at'} = $self->{api_client}->to_form_value($args{'deleted_at'});
    }

    # form params
    if ( exists $args{'updated_at'} ) {
                $form_params->{'updated_at'} = $self->{api_client}->to_form_value($args{'updated_at'});
    }

    # form params
    if ( exists $args{'service_id'} ) {
                $form_params->{'service_id'} = $self->{api_client}->to_form_value($args{'service_id'});
    }

    # form params
    if ( exists $args{'version'} ) {
                $form_params->{'version'} = $self->{api_client}->to_form_value($args{'version'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'shield'} ) {
                $form_params->{'shield'} = $self->{api_client}->to_form_value($args{'shield'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'tls_ciphers'} ) {
                $form_params->{'tls_ciphers'} = $self->{api_client}->to_form_value($args{'tls_ciphers'});
    }

    # form params
    if ( exists $args{'tls_sni_hostname'} ) {
                $form_params->{'tls_sni_hostname'} = $self->{api_client}->to_form_value($args{'tls_sni_hostname'});
    }

    # form params
    if ( exists $args{'min_tls_version'} ) {
                $form_params->{'min_tls_version'} = $self->{api_client}->to_form_value($args{'min_tls_version'});
    }

    # form params
    if ( exists $args{'max_tls_version'} ) {
                $form_params->{'max_tls_version'} = $self->{api_client}->to_form_value($args{'max_tls_version'});
    }

    # form params
    if ( exists $args{'healthcheck'} ) {
                $form_params->{'healthcheck'} = $self->{api_client}->to_form_value($args{'healthcheck'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
    }

    # form params
    if ( exists $args{'between_bytes_timeout'} ) {
                $form_params->{'between_bytes_timeout'} = $self->{api_client}->to_form_value($args{'between_bytes_timeout'});
    }

    # form params
    if ( exists $args{'connect_timeout'} ) {
                $form_params->{'connect_timeout'} = $self->{api_client}->to_form_value($args{'connect_timeout'});
    }

    # form params
    if ( exists $args{'first_byte_timeout'} ) {
                $form_params->{'first_byte_timeout'} = $self->{api_client}->to_form_value($args{'first_byte_timeout'});
    }

    # form params
    if ( exists $args{'max_conn_default'} ) {
                $form_params->{'max_conn_default'} = $self->{api_client}->to_form_value($args{'max_conn_default'});
    }

    # form params
    if ( exists $args{'quorum'} ) {
                $form_params->{'quorum'} = $self->{api_client}->to_form_value($args{'quorum'});
    }

    # form params
    if ( exists $args{'tls_check_cert'} ) {
                $form_params->{'tls_check_cert'} = $self->{api_client}->to_form_value($args{'tls_check_cert'});
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
    my $_response_object = $self->{api_client}->deserialize('PoolResponsePost', $response);
    return $_response_object;
}

#
# delete_server_pool
#
# Delete a server pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $pool_name Name for the Pool. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'pool_name' => {
        data_type => 'string',
        description => 'Name for the Pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_server_pool' } = {
        summary => 'Delete a server pool',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_server_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_server_pool");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_server_pool");
    }

    # verify the required parameter 'pool_name' is set
    unless (exists $args{'pool_name'}) {
      croak("Missing the required parameter 'pool_name' when calling delete_server_pool");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'pool_name'}) {
        my $_base_variable = "{" . "pool_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_name'});
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
# get_server_pool
#
# Get a server pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $pool_name Name for the Pool. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'pool_name' => {
        data_type => 'string',
        description => 'Name for the Pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_server_pool' } = {
        summary => 'Get a server pool',
        params => $params,
        returns => 'PoolResponse',
        };
}
# @return PoolResponse
#
sub get_server_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_server_pool");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_server_pool");
    }

    # verify the required parameter 'pool_name' is set
    unless (exists $args{'pool_name'}) {
      croak("Missing the required parameter 'pool_name' when calling get_server_pool");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'pool_name'}) {
        my $_base_variable = "{" . "pool_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_name'});
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
    my $_response_object = $self->{api_client}->deserialize('PoolResponse', $response);
    return $_response_object;
}

#
# list_server_pools
#
# List server pools
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_server_pools' } = {
        summary => 'List server pools',
        params => $params,
        returns => 'ARRAY[PoolResponse]',
        };
}
# @return ARRAY[PoolResponse]
#
sub list_server_pools {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_server_pools");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_server_pools");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/pool';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[PoolResponse]', $response);
    return $_response_object;
}

#
# update_server_pool
#
# Update a server pool
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $pool_name Name for the Pool. (required)
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (optional, default to 'null')
# @param int $use_tls Whether to use TLS. (optional, default to 0)
# @param DateTime $created_at Date and time in ISO 8601 format. (optional)
# @param DateTime $deleted_at Date and time in ISO 8601 format. (optional)
# @param DateTime $updated_at Date and time in ISO 8601 format. (optional)
# @param string $service_id  (optional)
# @param string $version  (optional)
# @param string $name Name for the Pool. (optional)
# @param string $shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding. (optional, default to 'null')
# @param string $request_condition Condition which, if met, will select this configuration during a request. Optional. (optional)
# @param string $tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. (optional)
# @param string $tls_sni_hostname SNI hostname. Optional. (optional)
# @param int $min_tls_version Minimum allowed TLS version on connections to this server. Optional. (optional)
# @param int $max_tls_version Maximum allowed TLS version on connections to this server. Optional. (optional)
# @param string $healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param string $type What type of load balance group to use. (optional)
# @param string $override_host The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (optional, default to 'null')
# @param int $between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;. (optional, default to 10000)
# @param int $connect_timeout How long to wait for a timeout in milliseconds. Optional. (optional)
# @param int $first_byte_timeout How long to wait for the first byte in milliseconds. Optional. (optional)
# @param int $max_conn_default Maximum number of connections. Optional. (optional, default to 200)
# @param int $quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (optional, default to 75)
# @param int $tls_check_cert Be strict on checking TLS certs. Optional. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'pool_name' => {
        data_type => 'string',
        description => 'Name for the Pool.',
        required => '1',
    },
    'tls_ca_cert' => {
        data_type => 'string',
        description => 'A secure certificate to authenticate a server with. Must be in PEM format.',
        required => '0',
    },
    'tls_client_cert' => {
        data_type => 'string',
        description => 'The client certificate used to make authenticated requests. Must be in PEM format.',
        required => '0',
    },
    'tls_client_key' => {
        data_type => 'string',
        description => 'The client private key used to make authenticated requests. Must be in PEM format.',
        required => '0',
    },
    'tls_cert_hostname' => {
        data_type => 'string',
        description => 'The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).',
        required => '0',
    },
    'use_tls' => {
        data_type => 'int',
        description => 'Whether to use TLS.',
        required => '0',
    },
    'created_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'deleted_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'updated_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'version' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the Pool.',
        required => '0',
    },
    'shield' => {
        data_type => 'string',
        description => 'Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        required => '0',
    },
    'tls_ciphers' => {
        data_type => 'string',
        description => 'List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.',
        required => '0',
    },
    'tls_sni_hostname' => {
        data_type => 'string',
        description => 'SNI hostname. Optional.',
        required => '0',
    },
    'min_tls_version' => {
        data_type => 'int',
        description => 'Minimum allowed TLS version on connections to this server. Optional.',
        required => '0',
    },
    'max_tls_version' => {
        data_type => 'int',
        description => 'Maximum allowed TLS version on connections to this server. Optional.',
        required => '0',
    },
    'healthcheck' => {
        data_type => 'string',
        description => 'Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'What type of load balance group to use.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.',
        required => '0',
    },
    'between_bytes_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.',
        required => '0',
    },
    'connect_timeout' => {
        data_type => 'int',
        description => 'How long to wait for a timeout in milliseconds. Optional.',
        required => '0',
    },
    'first_byte_timeout' => {
        data_type => 'int',
        description => 'How long to wait for the first byte in milliseconds. Optional.',
        required => '0',
    },
    'max_conn_default' => {
        data_type => 'int',
        description => 'Maximum number of connections. Optional.',
        required => '0',
    },
    'quorum' => {
        data_type => 'int',
        description => 'Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up.',
        required => '0',
    },
    'tls_check_cert' => {
        data_type => 'int',
        description => 'Be strict on checking TLS certs. Optional.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_server_pool' } = {
        summary => 'Update a server pool',
        params => $params,
        returns => 'PoolResponse',
        };
}
# @return PoolResponse
#
sub update_server_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_server_pool");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_server_pool");
    }

    # verify the required parameter 'pool_name' is set
    unless (exists $args{'pool_name'}) {
      croak("Missing the required parameter 'pool_name' when calling update_server_pool");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'pool_name'}) {
        my $_base_variable = "{" . "pool_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'tls_ca_cert'} ) {
                $form_params->{'tls_ca_cert'} = $self->{api_client}->to_form_value($args{'tls_ca_cert'});
    }

    # form params
    if ( exists $args{'tls_client_cert'} ) {
                $form_params->{'tls_client_cert'} = $self->{api_client}->to_form_value($args{'tls_client_cert'});
    }

    # form params
    if ( exists $args{'tls_client_key'} ) {
                $form_params->{'tls_client_key'} = $self->{api_client}->to_form_value($args{'tls_client_key'});
    }

    # form params
    if ( exists $args{'tls_cert_hostname'} ) {
                $form_params->{'tls_cert_hostname'} = $self->{api_client}->to_form_value($args{'tls_cert_hostname'});
    }

    # form params
    if ( exists $args{'use_tls'} ) {
                $form_params->{'use_tls'} = $self->{api_client}->to_form_value($args{'use_tls'});
    }

    # form params
    if ( exists $args{'created_at'} ) {
                $form_params->{'created_at'} = $self->{api_client}->to_form_value($args{'created_at'});
    }

    # form params
    if ( exists $args{'deleted_at'} ) {
                $form_params->{'deleted_at'} = $self->{api_client}->to_form_value($args{'deleted_at'});
    }

    # form params
    if ( exists $args{'updated_at'} ) {
                $form_params->{'updated_at'} = $self->{api_client}->to_form_value($args{'updated_at'});
    }

    # form params
    if ( exists $args{'service_id'} ) {
                $form_params->{'service_id'} = $self->{api_client}->to_form_value($args{'service_id'});
    }

    # form params
    if ( exists $args{'version'} ) {
                $form_params->{'version'} = $self->{api_client}->to_form_value($args{'version'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'shield'} ) {
                $form_params->{'shield'} = $self->{api_client}->to_form_value($args{'shield'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'tls_ciphers'} ) {
                $form_params->{'tls_ciphers'} = $self->{api_client}->to_form_value($args{'tls_ciphers'});
    }

    # form params
    if ( exists $args{'tls_sni_hostname'} ) {
                $form_params->{'tls_sni_hostname'} = $self->{api_client}->to_form_value($args{'tls_sni_hostname'});
    }

    # form params
    if ( exists $args{'min_tls_version'} ) {
                $form_params->{'min_tls_version'} = $self->{api_client}->to_form_value($args{'min_tls_version'});
    }

    # form params
    if ( exists $args{'max_tls_version'} ) {
                $form_params->{'max_tls_version'} = $self->{api_client}->to_form_value($args{'max_tls_version'});
    }

    # form params
    if ( exists $args{'healthcheck'} ) {
                $form_params->{'healthcheck'} = $self->{api_client}->to_form_value($args{'healthcheck'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
    }

    # form params
    if ( exists $args{'between_bytes_timeout'} ) {
                $form_params->{'between_bytes_timeout'} = $self->{api_client}->to_form_value($args{'between_bytes_timeout'});
    }

    # form params
    if ( exists $args{'connect_timeout'} ) {
                $form_params->{'connect_timeout'} = $self->{api_client}->to_form_value($args{'connect_timeout'});
    }

    # form params
    if ( exists $args{'first_byte_timeout'} ) {
                $form_params->{'first_byte_timeout'} = $self->{api_client}->to_form_value($args{'first_byte_timeout'});
    }

    # form params
    if ( exists $args{'max_conn_default'} ) {
                $form_params->{'max_conn_default'} = $self->{api_client}->to_form_value($args{'max_conn_default'});
    }

    # form params
    if ( exists $args{'quorum'} ) {
                $form_params->{'quorum'} = $self->{api_client}->to_form_value($args{'quorum'});
    }

    # form params
    if ( exists $args{'tls_check_cert'} ) {
                $form_params->{'tls_check_cert'} = $self->{api_client}->to_form_value($args{'tls_check_cert'});
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
    my $_response_object = $self->{api_client}->deserialize('PoolResponse', $response);
    return $_response_object;
}

1;
