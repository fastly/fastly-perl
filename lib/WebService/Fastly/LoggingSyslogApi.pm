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
package WebService::Fastly::LoggingSyslogApi;

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
# create_log_syslog
#
# Create a syslog log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (optional, default to 'null')
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 514)
# @param LoggingMessageType $message_type  (optional)
# @param string $hostname The hostname used for the syslog endpoint. (optional)
# @param string $ipv4 The IPv4 address used for the syslog endpoint. (optional)
# @param string $token Whether to prepend each message with a specific token. (optional, default to 'null')
# @param LoggingUseTls $use_tls  (optional)
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
    'name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '0',
    },
    'placement' => {
        data_type => 'string',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        required => '0',
    },
    'format' => {
        data_type => 'string',
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
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
    'tls_hostname' => {
        data_type => 'string',
        description => 'The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname or IPv4 address.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'The port number.',
        required => '0',
    },
    'message_type' => {
        data_type => 'LoggingMessageType',
        description => '',
        required => '0',
    },
    'hostname' => {
        data_type => 'string',
        description => 'The hostname used for the syslog endpoint.',
        required => '0',
    },
    'ipv4' => {
        data_type => 'string',
        description => 'The IPv4 address used for the syslog endpoint.',
        required => '0',
    },
    'token' => {
        data_type => 'string',
        description => 'Whether to prepend each message with a specific token.',
        required => '0',
    },
    'use_tls' => {
        data_type => 'LoggingUseTls',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_log_syslog' } = {
        summary => 'Create a syslog log endpoint',
        params => $params,
        returns => 'LoggingSyslogResponse',
        };
}
# @return LoggingSyslogResponse
#
sub create_log_syslog {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_log_syslog");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_log_syslog");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/syslog';

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
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'placement'} ) {
                $form_params->{'placement'} = $self->{api_client}->to_form_value($args{'placement'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'format'} ) {
                $form_params->{'format'} = $self->{api_client}->to_form_value($args{'format'});
    }

    # form params
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
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
    if ( exists $args{'tls_hostname'} ) {
                $form_params->{'tls_hostname'} = $self->{api_client}->to_form_value($args{'tls_hostname'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
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
    if ( exists $args{'token'} ) {
                $form_params->{'token'} = $self->{api_client}->to_form_value($args{'token'});
    }

    # form params
    if ( exists $args{'use_tls'} ) {
                $form_params->{'use_tls'} = $self->{api_client}->to_form_value($args{'use_tls'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSyslogResponse', $response);
    return $_response_object;
}

#
# delete_log_syslog
#
# Delete a syslog log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_syslog_name The name for the real-time logging configuration. (required)
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
    'logging_syslog_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_log_syslog' } = {
        summary => 'Delete a syslog log endpoint',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_log_syslog {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_log_syslog");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_log_syslog");
    }

    # verify the required parameter 'logging_syslog_name' is set
    unless (exists $args{'logging_syslog_name'}) {
      croak("Missing the required parameter 'logging_syslog_name' when calling delete_log_syslog");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}';

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
    if ( exists $args{'logging_syslog_name'}) {
        my $_base_variable = "{" . "logging_syslog_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_syslog_name'});
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
# get_log_syslog
#
# Get a syslog log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_syslog_name The name for the real-time logging configuration. (required)
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
    'logging_syslog_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_log_syslog' } = {
        summary => 'Get a syslog log endpoint',
        params => $params,
        returns => 'LoggingSyslogResponse',
        };
}
# @return LoggingSyslogResponse
#
sub get_log_syslog {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_log_syslog");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_log_syslog");
    }

    # verify the required parameter 'logging_syslog_name' is set
    unless (exists $args{'logging_syslog_name'}) {
      croak("Missing the required parameter 'logging_syslog_name' when calling get_log_syslog");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}';

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
    if ( exists $args{'logging_syslog_name'}) {
        my $_base_variable = "{" . "logging_syslog_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_syslog_name'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSyslogResponse', $response);
    return $_response_object;
}

#
# list_log_syslog
#
# List Syslog log endpoints
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
    __PACKAGE__->method_documentation->{ 'list_log_syslog' } = {
        summary => 'List Syslog log endpoints',
        params => $params,
        returns => 'ARRAY[LoggingSyslogResponse]',
        };
}
# @return ARRAY[LoggingSyslogResponse]
#
sub list_log_syslog {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_log_syslog");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_log_syslog");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/syslog';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[LoggingSyslogResponse]', $response);
    return $_response_object;
}

#
# update_log_syslog
#
# Update a syslog log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_syslog_name The name for the real-time logging configuration. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (optional, default to 'null')
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 514)
# @param LoggingMessageType $message_type  (optional)
# @param string $hostname The hostname used for the syslog endpoint. (optional)
# @param string $ipv4 The IPv4 address used for the syslog endpoint. (optional)
# @param string $token Whether to prepend each message with a specific token. (optional, default to 'null')
# @param LoggingUseTls $use_tls  (optional)
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
    'logging_syslog_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '0',
    },
    'placement' => {
        data_type => 'string',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        required => '0',
    },
    'format' => {
        data_type => 'string',
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
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
    'tls_hostname' => {
        data_type => 'string',
        description => 'The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname or IPv4 address.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'The port number.',
        required => '0',
    },
    'message_type' => {
        data_type => 'LoggingMessageType',
        description => '',
        required => '0',
    },
    'hostname' => {
        data_type => 'string',
        description => 'The hostname used for the syslog endpoint.',
        required => '0',
    },
    'ipv4' => {
        data_type => 'string',
        description => 'The IPv4 address used for the syslog endpoint.',
        required => '0',
    },
    'token' => {
        data_type => 'string',
        description => 'Whether to prepend each message with a specific token.',
        required => '0',
    },
    'use_tls' => {
        data_type => 'LoggingUseTls',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_log_syslog' } = {
        summary => 'Update a syslog log endpoint',
        params => $params,
        returns => 'LoggingSyslogResponse',
        };
}
# @return LoggingSyslogResponse
#
sub update_log_syslog {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_log_syslog");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_log_syslog");
    }

    # verify the required parameter 'logging_syslog_name' is set
    unless (exists $args{'logging_syslog_name'}) {
      croak("Missing the required parameter 'logging_syslog_name' when calling update_log_syslog");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}';

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
    if ( exists $args{'logging_syslog_name'}) {
        my $_base_variable = "{" . "logging_syslog_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_syslog_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'placement'} ) {
                $form_params->{'placement'} = $self->{api_client}->to_form_value($args{'placement'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'format'} ) {
                $form_params->{'format'} = $self->{api_client}->to_form_value($args{'format'});
    }

    # form params
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
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
    if ( exists $args{'tls_hostname'} ) {
                $form_params->{'tls_hostname'} = $self->{api_client}->to_form_value($args{'tls_hostname'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
    }

    # form params
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
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
    if ( exists $args{'token'} ) {
                $form_params->{'token'} = $self->{api_client}->to_form_value($args{'token'});
    }

    # form params
    if ( exists $args{'use_tls'} ) {
                $form_params->{'use_tls'} = $self->{api_client}->to_form_value($args{'use_tls'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSyslogResponse', $response);
    return $_response_object;
}

1;
