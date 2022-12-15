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
package WebService::Fastly::LoggingHttpsApi;

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
# create_log_https
#
# Create an HTTPS log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (optional, default to 'null')
# @param int $request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (optional, default to 0)
# @param int $request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (optional, default to 0)
# @param string $url The URL to send logs to. Must use HTTPS. Required. (optional)
# @param string $content_type Content type of the header sent with the request. (optional, default to 'null')
# @param string $header_name Name of the custom header sent with the request. (optional, default to 'null')
# @param LoggingMessageType $message_type  (optional)
# @param string $header_value Value of the custom header sent with the request. (optional, default to 'null')
# @param string $method HTTP method used for request. (optional, default to 'POST')
# @param string $json_format Enforces valid JSON formatting for log entries. (optional)
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
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
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
    'request_max_entries' => {
        data_type => 'int',
        description => 'The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k).',
        required => '0',
    },
    'request_max_bytes' => {
        data_type => 'int',
        description => 'The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB).',
        required => '0',
    },
    'url' => {
        data_type => 'string',
        description => 'The URL to send logs to. Must use HTTPS. Required.',
        required => '0',
    },
    'content_type' => {
        data_type => 'string',
        description => 'Content type of the header sent with the request.',
        required => '0',
    },
    'header_name' => {
        data_type => 'string',
        description => 'Name of the custom header sent with the request.',
        required => '0',
    },
    'message_type' => {
        data_type => 'LoggingMessageType',
        description => '',
        required => '0',
    },
    'header_value' => {
        data_type => 'string',
        description => 'Value of the custom header sent with the request.',
        required => '0',
    },
    'method' => {
        data_type => 'string',
        description => 'HTTP method used for request.',
        required => '0',
    },
    'json_format' => {
        data_type => 'string',
        description => 'Enforces valid JSON formatting for log entries.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_log_https' } = {
        summary => 'Create an HTTPS log endpoint',
        params => $params,
        returns => 'LoggingHttpsResponse',
        };
}
# @return LoggingHttpsResponse
#
sub create_log_https {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_log_https");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_log_https");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/https';

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
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
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
    if ( exists $args{'request_max_entries'} ) {
                $form_params->{'request_max_entries'} = $self->{api_client}->to_form_value($args{'request_max_entries'});
    }

    # form params
    if ( exists $args{'request_max_bytes'} ) {
                $form_params->{'request_max_bytes'} = $self->{api_client}->to_form_value($args{'request_max_bytes'});
    }

    # form params
    if ( exists $args{'url'} ) {
                $form_params->{'url'} = $self->{api_client}->to_form_value($args{'url'});
    }

    # form params
    if ( exists $args{'content_type'} ) {
                $form_params->{'content_type'} = $self->{api_client}->to_form_value($args{'content_type'});
    }

    # form params
    if ( exists $args{'header_name'} ) {
                $form_params->{'header_name'} = $self->{api_client}->to_form_value($args{'header_name'});
    }

    # form params
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
    }

    # form params
    if ( exists $args{'header_value'} ) {
                $form_params->{'header_value'} = $self->{api_client}->to_form_value($args{'header_value'});
    }

    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }

    # form params
    if ( exists $args{'json_format'} ) {
                $form_params->{'json_format'} = $self->{api_client}->to_form_value($args{'json_format'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingHttpsResponse', $response);
    return $_response_object;
}

#
# delete_log_https
#
# Delete an HTTPS log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_https_name The name for the real-time logging configuration. (required)
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
    'logging_https_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_log_https' } = {
        summary => 'Delete an HTTPS log endpoint',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_log_https {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_log_https");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_log_https");
    }

    # verify the required parameter 'logging_https_name' is set
    unless (exists $args{'logging_https_name'}) {
      croak("Missing the required parameter 'logging_https_name' when calling delete_log_https");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}';

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
    if ( exists $args{'logging_https_name'}) {
        my $_base_variable = "{" . "logging_https_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_https_name'});
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
# get_log_https
#
# Get an HTTPS log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_https_name The name for the real-time logging configuration. (required)
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
    'logging_https_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_log_https' } = {
        summary => 'Get an HTTPS log endpoint',
        params => $params,
        returns => 'LoggingHttpsResponse',
        };
}
# @return LoggingHttpsResponse
#
sub get_log_https {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_log_https");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_log_https");
    }

    # verify the required parameter 'logging_https_name' is set
    unless (exists $args{'logging_https_name'}) {
      croak("Missing the required parameter 'logging_https_name' when calling get_log_https");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}';

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
    if ( exists $args{'logging_https_name'}) {
        my $_base_variable = "{" . "logging_https_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_https_name'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingHttpsResponse', $response);
    return $_response_object;
}

#
# list_log_https
#
# List HTTPS log endpoints
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
    __PACKAGE__->method_documentation->{ 'list_log_https' } = {
        summary => 'List HTTPS log endpoints',
        params => $params,
        returns => 'ARRAY[LoggingHttpsResponse]',
        };
}
# @return ARRAY[LoggingHttpsResponse]
#
sub list_log_https {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_log_https");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_log_https");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/https';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[LoggingHttpsResponse]', $response);
    return $_response_object;
}

#
# update_log_https
#
# Update an HTTPS log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_https_name The name for the real-time logging configuration. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param string $tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (optional, default to 'null')
# @param string $tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (optional, default to 'null')
# @param int $request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (optional, default to 0)
# @param int $request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (optional, default to 0)
# @param string $url The URL to send logs to. Must use HTTPS. Required. (optional)
# @param string $content_type Content type of the header sent with the request. (optional, default to 'null')
# @param string $header_name Name of the custom header sent with the request. (optional, default to 'null')
# @param LoggingMessageType $message_type  (optional)
# @param string $header_value Value of the custom header sent with the request. (optional, default to 'null')
# @param string $method HTTP method used for request. (optional, default to 'POST')
# @param string $json_format Enforces valid JSON formatting for log entries. (optional)
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
    'logging_https_name' => {
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
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
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
    'request_max_entries' => {
        data_type => 'int',
        description => 'The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k).',
        required => '0',
    },
    'request_max_bytes' => {
        data_type => 'int',
        description => 'The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB).',
        required => '0',
    },
    'url' => {
        data_type => 'string',
        description => 'The URL to send logs to. Must use HTTPS. Required.',
        required => '0',
    },
    'content_type' => {
        data_type => 'string',
        description => 'Content type of the header sent with the request.',
        required => '0',
    },
    'header_name' => {
        data_type => 'string',
        description => 'Name of the custom header sent with the request.',
        required => '0',
    },
    'message_type' => {
        data_type => 'LoggingMessageType',
        description => '',
        required => '0',
    },
    'header_value' => {
        data_type => 'string',
        description => 'Value of the custom header sent with the request.',
        required => '0',
    },
    'method' => {
        data_type => 'string',
        description => 'HTTP method used for request.',
        required => '0',
    },
    'json_format' => {
        data_type => 'string',
        description => 'Enforces valid JSON formatting for log entries.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_log_https' } = {
        summary => 'Update an HTTPS log endpoint',
        params => $params,
        returns => 'LoggingHttpsResponse',
        };
}
# @return LoggingHttpsResponse
#
sub update_log_https {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_log_https");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_log_https");
    }

    # verify the required parameter 'logging_https_name' is set
    unless (exists $args{'logging_https_name'}) {
      croak("Missing the required parameter 'logging_https_name' when calling update_log_https");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}';

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
    if ( exists $args{'logging_https_name'}) {
        my $_base_variable = "{" . "logging_https_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_https_name'});
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
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
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
    if ( exists $args{'request_max_entries'} ) {
                $form_params->{'request_max_entries'} = $self->{api_client}->to_form_value($args{'request_max_entries'});
    }

    # form params
    if ( exists $args{'request_max_bytes'} ) {
                $form_params->{'request_max_bytes'} = $self->{api_client}->to_form_value($args{'request_max_bytes'});
    }

    # form params
    if ( exists $args{'url'} ) {
                $form_params->{'url'} = $self->{api_client}->to_form_value($args{'url'});
    }

    # form params
    if ( exists $args{'content_type'} ) {
                $form_params->{'content_type'} = $self->{api_client}->to_form_value($args{'content_type'});
    }

    # form params
    if ( exists $args{'header_name'} ) {
                $form_params->{'header_name'} = $self->{api_client}->to_form_value($args{'header_name'});
    }

    # form params
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
    }

    # form params
    if ( exists $args{'header_value'} ) {
                $form_params->{'header_value'} = $self->{api_client}->to_form_value($args{'header_value'});
    }

    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }

    # form params
    if ( exists $args{'json_format'} ) {
                $form_params->{'json_format'} = $self->{api_client}->to_form_value($args{'json_format'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingHttpsResponse', $response);
    return $_response_object;
}

1;
