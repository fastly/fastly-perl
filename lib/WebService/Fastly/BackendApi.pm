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
package WebService::Fastly::BackendApi;

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
# create_backend
#
# Create a backend
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. (optional)
# @param boolean $auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;. (optional)
# @param int $between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;. (optional)
# @param string $client_cert Unused. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param int $connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;. (optional)
# @param int $first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;. (optional)
# @param int $fetch_timeout Maximum duration in milliseconds to wait for the entire response to be received after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.fetch_timeout&#x60;. (optional)
# @param string $healthcheck The name of the healthcheck to use with this backend. (optional)
# @param string $hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param string $ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param string $ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param int $keepalive_time How long in seconds to keep a persistent connection to the backend between requests. By default, Varnish keeps connections open as long as it can. (optional)
# @param int $max_conn Maximum number of concurrent connections this backend will accept. (optional)
# @param string $max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $name The name of the backend. (optional)
# @param string $override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL. (optional)
# @param int $port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request. (optional)
# @param boolean $prefer_ipv6 Prefer IPv6 connections to origins for hostname backends. Default is &#39;false&#39; for Delivery services and &#39;true&#39; for Compute services. (optional)
# @param string $request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests. (optional)
# @param string $share_key Value that when shared across backends will enable those backends to share the same health check. (optional)
# @param string $shield Identifier of the POP to use as a [shield](https://www.fastly.com/documentation/guides/getting-started/hosts/shielding/). (optional)
# @param string $ssl_ca_cert CA certificate attached to origin. (optional)
# @param string $ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all. (optional)
# @param boolean $ssl_check_cert Be strict on checking SSL certs. (optional, default to true)
# @param string $ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $ssl_client_cert Client certificate attached to origin. (optional)
# @param string $ssl_client_key Client key attached to origin. (optional)
# @param string $ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation. (optional)
# @param string $ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all. (optional)
# @param boolean $tcp_keepalive_enable Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified. (optional)
# @param int $tcp_keepalive_interval Interval in seconds between subsequent keepalive probes. (optional, default to 10)
# @param int $tcp_keepalive_probes Number of unacknowledged probes to send before considering the connection dead. (optional, default to 3)
# @param int $tcp_keepalive_time Interval in seconds between the last data packet sent and the first keepalive probe. (optional, default to 300)
# @param boolean $use_ssl Whether or not to require TLS for connections to this backend. (optional)
# @param int $weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true. (optional)
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
    'address' => {
        data_type => 'string',
        description => 'A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.',
        required => '0',
    },
    'auto_loadbalance' => {
        data_type => 'boolean',
        description => 'Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.',
        required => '0',
    },
    'between_bytes_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.',
        required => '0',
    },
    'client_cert' => {
        data_type => 'string',
        description => 'Unused.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'connect_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.',
        required => '0',
    },
    'first_byte_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.',
        required => '0',
    },
    'fetch_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for the entire response to be received after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.fetch_timeout&#x60;.',
        required => '0',
    },
    'healthcheck' => {
        data_type => 'string',
        description => 'The name of the healthcheck to use with this backend.',
        required => '0',
    },
    'hostname' => {
        data_type => 'string',
        description => 'The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'ipv4' => {
        data_type => 'string',
        description => 'IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'ipv6' => {
        data_type => 'string',
        description => 'IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'keepalive_time' => {
        data_type => 'int',
        description => 'How long in seconds to keep a persistent connection to the backend between requests. By default, Varnish keeps connections open as long as it can.',
        required => '0',
    },
    'max_conn' => {
        data_type => 'int',
        description => 'Maximum number of concurrent connections this backend will accept.',
        required => '0',
    },
    'max_tls_version' => {
        data_type => 'string',
        description => 'Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'min_tls_version' => {
        data_type => 'string',
        description => 'Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.',
        required => '0',
    },
    'prefer_ipv6' => {
        data_type => 'boolean',
        description => 'Prefer IPv6 connections to origins for hostname backends. Default is &#39;false&#39; for Delivery services and &#39;true&#39; for Compute services.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.',
        required => '0',
    },
    'share_key' => {
        data_type => 'string',
        description => 'Value that when shared across backends will enable those backends to share the same health check.',
        required => '0',
    },
    'shield' => {
        data_type => 'string',
        description => 'Identifier of the POP to use as a [shield](https://www.fastly.com/documentation/guides/getting-started/hosts/shielding/).',
        required => '0',
    },
    'ssl_ca_cert' => {
        data_type => 'string',
        description => 'CA certificate attached to origin.',
        required => '0',
    },
    'ssl_cert_hostname' => {
        data_type => 'string',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.',
        required => '0',
    },
    'ssl_check_cert' => {
        data_type => 'boolean',
        description => 'Be strict on checking SSL certs.',
        required => '0',
    },
    'ssl_ciphers' => {
        data_type => 'string',
        description => 'List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'ssl_client_cert' => {
        data_type => 'string',
        description => 'Client certificate attached to origin.',
        required => '0',
    },
    'ssl_client_key' => {
        data_type => 'string',
        description => 'Client key attached to origin.',
        required => '0',
    },
    'ssl_hostname' => {
        data_type => 'string',
        description => 'Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.',
        required => '0',
    },
    'ssl_sni_hostname' => {
        data_type => 'string',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.',
        required => '0',
    },
    'tcp_keepalive_enable' => {
        data_type => 'boolean',
        description => 'Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified.',
        required => '0',
    },
    'tcp_keepalive_interval' => {
        data_type => 'int',
        description => 'Interval in seconds between subsequent keepalive probes.',
        required => '0',
    },
    'tcp_keepalive_probes' => {
        data_type => 'int',
        description => 'Number of unacknowledged probes to send before considering the connection dead.',
        required => '0',
    },
    'tcp_keepalive_time' => {
        data_type => 'int',
        description => 'Interval in seconds between the last data packet sent and the first keepalive probe.',
        required => '0',
    },
    'use_ssl' => {
        data_type => 'boolean',
        description => 'Whether or not to require TLS for connections to this backend.',
        required => '0',
    },
    'weight' => {
        data_type => 'int',
        description => 'Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_backend' } = {
        summary => 'Create a backend',
        params => $params,
        returns => 'BackendResponse',
        };
}
# @return BackendResponse
#
sub create_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/backend';

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
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'auto_loadbalance'} ) {
                $form_params->{'auto_loadbalance'} = $self->{api_client}->to_form_value($args{'auto_loadbalance'});
    }

    # form params
    if ( exists $args{'between_bytes_timeout'} ) {
                $form_params->{'between_bytes_timeout'} = $self->{api_client}->to_form_value($args{'between_bytes_timeout'});
    }

    # form params
    if ( exists $args{'client_cert'} ) {
                $form_params->{'client_cert'} = $self->{api_client}->to_form_value($args{'client_cert'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
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
    if ( exists $args{'fetch_timeout'} ) {
                $form_params->{'fetch_timeout'} = $self->{api_client}->to_form_value($args{'fetch_timeout'});
    }

    # form params
    if ( exists $args{'healthcheck'} ) {
                $form_params->{'healthcheck'} = $self->{api_client}->to_form_value($args{'healthcheck'});
    }

    # form params
    if ( exists $args{'hostname'} ) {
                $form_params->{'hostname'} = $self->{api_client}->to_form_value($args{'hostname'});
    }

    # form params
    if ( exists $args{'ipv4'} ) {
                $form_params->{'ipv4'} = $self->{api_client}->to_form_value($args{'ipv4'});
    }

    # form params
    if ( exists $args{'ipv6'} ) {
                $form_params->{'ipv6'} = $self->{api_client}->to_form_value($args{'ipv6'});
    }

    # form params
    if ( exists $args{'keepalive_time'} ) {
                $form_params->{'keepalive_time'} = $self->{api_client}->to_form_value($args{'keepalive_time'});
    }

    # form params
    if ( exists $args{'max_conn'} ) {
                $form_params->{'max_conn'} = $self->{api_client}->to_form_value($args{'max_conn'});
    }

    # form params
    if ( exists $args{'max_tls_version'} ) {
                $form_params->{'max_tls_version'} = $self->{api_client}->to_form_value($args{'max_tls_version'});
    }

    # form params
    if ( exists $args{'min_tls_version'} ) {
                $form_params->{'min_tls_version'} = $self->{api_client}->to_form_value($args{'min_tls_version'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'prefer_ipv6'} ) {
                $form_params->{'prefer_ipv6'} = $self->{api_client}->to_form_value($args{'prefer_ipv6'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'share_key'} ) {
                $form_params->{'share_key'} = $self->{api_client}->to_form_value($args{'share_key'});
    }

    # form params
    if ( exists $args{'shield'} ) {
                $form_params->{'shield'} = $self->{api_client}->to_form_value($args{'shield'});
    }

    # form params
    if ( exists $args{'ssl_ca_cert'} ) {
                $form_params->{'ssl_ca_cert'} = $self->{api_client}->to_form_value($args{'ssl_ca_cert'});
    }

    # form params
    if ( exists $args{'ssl_cert_hostname'} ) {
                $form_params->{'ssl_cert_hostname'} = $self->{api_client}->to_form_value($args{'ssl_cert_hostname'});
    }

    # form params
    if ( exists $args{'ssl_check_cert'} ) {
                $form_params->{'ssl_check_cert'} = $self->{api_client}->to_form_value($args{'ssl_check_cert'});
    }

    # form params
    if ( exists $args{'ssl_ciphers'} ) {
                $form_params->{'ssl_ciphers'} = $self->{api_client}->to_form_value($args{'ssl_ciphers'});
    }

    # form params
    if ( exists $args{'ssl_client_cert'} ) {
                $form_params->{'ssl_client_cert'} = $self->{api_client}->to_form_value($args{'ssl_client_cert'});
    }

    # form params
    if ( exists $args{'ssl_client_key'} ) {
                $form_params->{'ssl_client_key'} = $self->{api_client}->to_form_value($args{'ssl_client_key'});
    }

    # form params
    if ( exists $args{'ssl_hostname'} ) {
                $form_params->{'ssl_hostname'} = $self->{api_client}->to_form_value($args{'ssl_hostname'});
    }

    # form params
    if ( exists $args{'ssl_sni_hostname'} ) {
                $form_params->{'ssl_sni_hostname'} = $self->{api_client}->to_form_value($args{'ssl_sni_hostname'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_enable'} ) {
                $form_params->{'tcp_keepalive_enable'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_enable'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_interval'} ) {
                $form_params->{'tcp_keepalive_interval'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_interval'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_probes'} ) {
                $form_params->{'tcp_keepalive_probes'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_probes'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_time'} ) {
                $form_params->{'tcp_keepalive_time'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_time'});
    }

    # form params
    if ( exists $args{'use_ssl'} ) {
                $form_params->{'use_ssl'} = $self->{api_client}->to_form_value($args{'use_ssl'});
    }

    # form params
    if ( exists $args{'weight'} ) {
                $form_params->{'weight'} = $self->{api_client}->to_form_value($args{'weight'});
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
    my $_response_object = $self->{api_client}->deserialize('BackendResponse', $response);
    return $_response_object;
}

#
# delete_backend
#
# Delete a backend
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_backend' } = {
        summary => 'Delete a backend',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling delete_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}';

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
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
# get_backend
#
# Describe a backend
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_backend' } = {
        summary => 'Describe a backend',
        params => $params,
        returns => 'BackendResponse',
        };
}
# @return BackendResponse
#
sub get_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling get_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}';

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
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
    my $_response_object = $self->{api_client}->deserialize('BackendResponse', $response);
    return $_response_object;
}

#
# list_backends
#
# List backends
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
    __PACKAGE__->method_documentation->{ 'list_backends' } = {
        summary => 'List backends',
        params => $params,
        returns => 'ARRAY[BackendResponse]',
        };
}
# @return ARRAY[BackendResponse]
#
sub list_backends {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_backends");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_backends");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/backend';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BackendResponse]', $response);
    return $_response_object;
}

#
# update_backend
#
# Update a backend
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
# @param string $address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. (optional)
# @param boolean $auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;. (optional)
# @param int $between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;. (optional)
# @param string $client_cert Unused. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param int $connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;. (optional)
# @param int $first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;. (optional)
# @param int $fetch_timeout Maximum duration in milliseconds to wait for the entire response to be received after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.fetch_timeout&#x60;. (optional)
# @param string $healthcheck The name of the healthcheck to use with this backend. (optional)
# @param string $hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param string $ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param string $ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location. (optional)
# @param int $keepalive_time How long in seconds to keep a persistent connection to the backend between requests. By default, Varnish keeps connections open as long as it can. (optional)
# @param int $max_conn Maximum number of concurrent connections this backend will accept. (optional)
# @param string $max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $name The name of the backend. (optional)
# @param string $override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL. (optional)
# @param int $port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request. (optional)
# @param boolean $prefer_ipv6 Prefer IPv6 connections to origins for hostname backends. Default is &#39;false&#39; for Delivery services and &#39;true&#39; for Compute services. (optional)
# @param string $request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests. (optional)
# @param string $share_key Value that when shared across backends will enable those backends to share the same health check. (optional)
# @param string $shield Identifier of the POP to use as a [shield](https://www.fastly.com/documentation/guides/getting-started/hosts/shielding/). (optional)
# @param string $ssl_ca_cert CA certificate attached to origin. (optional)
# @param string $ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all. (optional)
# @param boolean $ssl_check_cert Be strict on checking SSL certs. (optional, default to true)
# @param string $ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated. (optional)
# @param string $ssl_client_cert Client certificate attached to origin. (optional)
# @param string $ssl_client_key Client key attached to origin. (optional)
# @param string $ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation. (optional)
# @param string $ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all. (optional)
# @param boolean $tcp_keepalive_enable Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified. (optional)
# @param int $tcp_keepalive_interval Interval in seconds between subsequent keepalive probes. (optional, default to 10)
# @param int $tcp_keepalive_probes Number of unacknowledged probes to send before considering the connection dead. (optional, default to 3)
# @param int $tcp_keepalive_time Interval in seconds between the last data packet sent and the first keepalive probe. (optional, default to 300)
# @param boolean $use_ssl Whether or not to require TLS for connections to this backend. (optional)
# @param int $weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true. (optional)
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.',
        required => '0',
    },
    'auto_loadbalance' => {
        data_type => 'boolean',
        description => 'Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.',
        required => '0',
    },
    'between_bytes_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.',
        required => '0',
    },
    'client_cert' => {
        data_type => 'string',
        description => 'Unused.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'connect_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.',
        required => '0',
    },
    'first_byte_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.',
        required => '0',
    },
    'fetch_timeout' => {
        data_type => 'int',
        description => 'Maximum duration in milliseconds to wait for the entire response to be received after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.fetch_timeout&#x60;.',
        required => '0',
    },
    'healthcheck' => {
        data_type => 'string',
        description => 'The name of the healthcheck to use with this backend.',
        required => '0',
    },
    'hostname' => {
        data_type => 'string',
        description => 'The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'ipv4' => {
        data_type => 'string',
        description => 'IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'ipv6' => {
        data_type => 'string',
        description => 'IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        required => '0',
    },
    'keepalive_time' => {
        data_type => 'int',
        description => 'How long in seconds to keep a persistent connection to the backend between requests. By default, Varnish keeps connections open as long as it can.',
        required => '0',
    },
    'max_conn' => {
        data_type => 'int',
        description => 'Maximum number of concurrent connections this backend will accept.',
        required => '0',
    },
    'max_tls_version' => {
        data_type => 'string',
        description => 'Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'min_tls_version' => {
        data_type => 'string',
        description => 'Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '0',
    },
    'override_host' => {
        data_type => 'string',
        description => 'If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.',
        required => '0',
    },
    'prefer_ipv6' => {
        data_type => 'boolean',
        description => 'Prefer IPv6 connections to origins for hostname backends. Default is &#39;false&#39; for Delivery services and &#39;true&#39; for Compute services.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.',
        required => '0',
    },
    'share_key' => {
        data_type => 'string',
        description => 'Value that when shared across backends will enable those backends to share the same health check.',
        required => '0',
    },
    'shield' => {
        data_type => 'string',
        description => 'Identifier of the POP to use as a [shield](https://www.fastly.com/documentation/guides/getting-started/hosts/shielding/).',
        required => '0',
    },
    'ssl_ca_cert' => {
        data_type => 'string',
        description => 'CA certificate attached to origin.',
        required => '0',
    },
    'ssl_cert_hostname' => {
        data_type => 'string',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.',
        required => '0',
    },
    'ssl_check_cert' => {
        data_type => 'boolean',
        description => 'Be strict on checking SSL certs.',
        required => '0',
    },
    'ssl_ciphers' => {
        data_type => 'string',
        description => 'List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        required => '0',
    },
    'ssl_client_cert' => {
        data_type => 'string',
        description => 'Client certificate attached to origin.',
        required => '0',
    },
    'ssl_client_key' => {
        data_type => 'string',
        description => 'Client key attached to origin.',
        required => '0',
    },
    'ssl_hostname' => {
        data_type => 'string',
        description => 'Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.',
        required => '0',
    },
    'ssl_sni_hostname' => {
        data_type => 'string',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.',
        required => '0',
    },
    'tcp_keepalive_enable' => {
        data_type => 'boolean',
        description => 'Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified.',
        required => '0',
    },
    'tcp_keepalive_interval' => {
        data_type => 'int',
        description => 'Interval in seconds between subsequent keepalive probes.',
        required => '0',
    },
    'tcp_keepalive_probes' => {
        data_type => 'int',
        description => 'Number of unacknowledged probes to send before considering the connection dead.',
        required => '0',
    },
    'tcp_keepalive_time' => {
        data_type => 'int',
        description => 'Interval in seconds between the last data packet sent and the first keepalive probe.',
        required => '0',
    },
    'use_ssl' => {
        data_type => 'boolean',
        description => 'Whether or not to require TLS for connections to this backend.',
        required => '0',
    },
    'weight' => {
        data_type => 'int',
        description => 'Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_backend' } = {
        summary => 'Update a backend',
        params => $params,
        returns => 'BackendResponse',
        };
}
# @return BackendResponse
#
sub update_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling update_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}';

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'auto_loadbalance'} ) {
                $form_params->{'auto_loadbalance'} = $self->{api_client}->to_form_value($args{'auto_loadbalance'});
    }

    # form params
    if ( exists $args{'between_bytes_timeout'} ) {
                $form_params->{'between_bytes_timeout'} = $self->{api_client}->to_form_value($args{'between_bytes_timeout'});
    }

    # form params
    if ( exists $args{'client_cert'} ) {
                $form_params->{'client_cert'} = $self->{api_client}->to_form_value($args{'client_cert'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
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
    if ( exists $args{'fetch_timeout'} ) {
                $form_params->{'fetch_timeout'} = $self->{api_client}->to_form_value($args{'fetch_timeout'});
    }

    # form params
    if ( exists $args{'healthcheck'} ) {
                $form_params->{'healthcheck'} = $self->{api_client}->to_form_value($args{'healthcheck'});
    }

    # form params
    if ( exists $args{'hostname'} ) {
                $form_params->{'hostname'} = $self->{api_client}->to_form_value($args{'hostname'});
    }

    # form params
    if ( exists $args{'ipv4'} ) {
                $form_params->{'ipv4'} = $self->{api_client}->to_form_value($args{'ipv4'});
    }

    # form params
    if ( exists $args{'ipv6'} ) {
                $form_params->{'ipv6'} = $self->{api_client}->to_form_value($args{'ipv6'});
    }

    # form params
    if ( exists $args{'keepalive_time'} ) {
                $form_params->{'keepalive_time'} = $self->{api_client}->to_form_value($args{'keepalive_time'});
    }

    # form params
    if ( exists $args{'max_conn'} ) {
                $form_params->{'max_conn'} = $self->{api_client}->to_form_value($args{'max_conn'});
    }

    # form params
    if ( exists $args{'max_tls_version'} ) {
                $form_params->{'max_tls_version'} = $self->{api_client}->to_form_value($args{'max_tls_version'});
    }

    # form params
    if ( exists $args{'min_tls_version'} ) {
                $form_params->{'min_tls_version'} = $self->{api_client}->to_form_value($args{'min_tls_version'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'override_host'} ) {
                $form_params->{'override_host'} = $self->{api_client}->to_form_value($args{'override_host'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'prefer_ipv6'} ) {
                $form_params->{'prefer_ipv6'} = $self->{api_client}->to_form_value($args{'prefer_ipv6'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'share_key'} ) {
                $form_params->{'share_key'} = $self->{api_client}->to_form_value($args{'share_key'});
    }

    # form params
    if ( exists $args{'shield'} ) {
                $form_params->{'shield'} = $self->{api_client}->to_form_value($args{'shield'});
    }

    # form params
    if ( exists $args{'ssl_ca_cert'} ) {
                $form_params->{'ssl_ca_cert'} = $self->{api_client}->to_form_value($args{'ssl_ca_cert'});
    }

    # form params
    if ( exists $args{'ssl_cert_hostname'} ) {
                $form_params->{'ssl_cert_hostname'} = $self->{api_client}->to_form_value($args{'ssl_cert_hostname'});
    }

    # form params
    if ( exists $args{'ssl_check_cert'} ) {
                $form_params->{'ssl_check_cert'} = $self->{api_client}->to_form_value($args{'ssl_check_cert'});
    }

    # form params
    if ( exists $args{'ssl_ciphers'} ) {
                $form_params->{'ssl_ciphers'} = $self->{api_client}->to_form_value($args{'ssl_ciphers'});
    }

    # form params
    if ( exists $args{'ssl_client_cert'} ) {
                $form_params->{'ssl_client_cert'} = $self->{api_client}->to_form_value($args{'ssl_client_cert'});
    }

    # form params
    if ( exists $args{'ssl_client_key'} ) {
                $form_params->{'ssl_client_key'} = $self->{api_client}->to_form_value($args{'ssl_client_key'});
    }

    # form params
    if ( exists $args{'ssl_hostname'} ) {
                $form_params->{'ssl_hostname'} = $self->{api_client}->to_form_value($args{'ssl_hostname'});
    }

    # form params
    if ( exists $args{'ssl_sni_hostname'} ) {
                $form_params->{'ssl_sni_hostname'} = $self->{api_client}->to_form_value($args{'ssl_sni_hostname'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_enable'} ) {
                $form_params->{'tcp_keepalive_enable'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_enable'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_interval'} ) {
                $form_params->{'tcp_keepalive_interval'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_interval'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_probes'} ) {
                $form_params->{'tcp_keepalive_probes'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_probes'});
    }

    # form params
    if ( exists $args{'tcp_keepalive_time'} ) {
                $form_params->{'tcp_keepalive_time'} = $self->{api_client}->to_form_value($args{'tcp_keepalive_time'});
    }

    # form params
    if ( exists $args{'use_ssl'} ) {
                $form_params->{'use_ssl'} = $self->{api_client}->to_form_value($args{'use_ssl'});
    }

    # form params
    if ( exists $args{'weight'} ) {
                $form_params->{'weight'} = $self->{api_client}->to_form_value($args{'weight'});
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
    my $_response_object = $self->{api_client}->deserialize('BackendResponse', $response);
    return $_response_object;
}

1;
