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
package WebService::Fastly::LoggingSftpApi;

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
# create_log_sftp
#
# Create an SFTP log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $message_type How the message should be formatted. (optional, default to 'classic')
# @param string $timestamp_format A timestamp format (optional)
# @param string $compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (optional)
# @param int $period How frequently log files are finalized so they can be available for reading (in seconds). (optional, default to 3600)
# @param int $gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (optional, default to 0)
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 22)
# @param string $password The password for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference. (optional)
# @param string $path The path to upload logs to. (optional, default to 'null')
# @param string $public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (optional, default to 'null')
# @param string $secret_key The SSH private key for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference. (optional, default to 'null')
# @param string $ssh_known_hosts A list of host keys for all hosts we can connect to over SFTP. (optional)
# @param string $user The username for the server. (optional)
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
    'message_type' => {
        data_type => 'string',
        description => 'How the message should be formatted.',
        required => '0',
    },
    'timestamp_format' => {
        data_type => 'string',
        description => 'A timestamp format',
        required => '0',
    },
    'compression_codec' => {
        data_type => 'string',
        description => 'The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
        required => '0',
    },
    'period' => {
        data_type => 'int',
        description => 'How frequently log files are finalized so they can be available for reading (in seconds).',
        required => '0',
    },
    'gzip_level' => {
        data_type => 'int',
        description => 'The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
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
    'password' => {
        data_type => 'string',
        description => 'The password for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference.',
        required => '0',
    },
    'path' => {
        data_type => 'string',
        description => 'The path to upload logs to.',
        required => '0',
    },
    'public_key' => {
        data_type => 'string',
        description => 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk.',
        required => '0',
    },
    'secret_key' => {
        data_type => 'string',
        description => 'The SSH private key for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference.',
        required => '0',
    },
    'ssh_known_hosts' => {
        data_type => 'string',
        description => 'A list of host keys for all hosts we can connect to over SFTP.',
        required => '0',
    },
    'user' => {
        data_type => 'string',
        description => 'The username for the server.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_log_sftp' } = {
        summary => 'Create an SFTP log endpoint',
        params => $params,
        returns => 'LoggingSftpResponse',
        };
}
# @return LoggingSftpResponse
#
sub create_log_sftp {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_log_sftp");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_log_sftp");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/sftp';

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
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
    }

    # form params
    if ( exists $args{'timestamp_format'} ) {
                $form_params->{'timestamp_format'} = $self->{api_client}->to_form_value($args{'timestamp_format'});
    }

    # form params
    if ( exists $args{'compression_codec'} ) {
                $form_params->{'compression_codec'} = $self->{api_client}->to_form_value($args{'compression_codec'});
    }

    # form params
    if ( exists $args{'period'} ) {
                $form_params->{'period'} = $self->{api_client}->to_form_value($args{'period'});
    }

    # form params
    if ( exists $args{'gzip_level'} ) {
                $form_params->{'gzip_level'} = $self->{api_client}->to_form_value($args{'gzip_level'});
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
    if ( exists $args{'password'} ) {
                $form_params->{'password'} = $self->{api_client}->to_form_value($args{'password'});
    }

    # form params
    if ( exists $args{'path'} ) {
                $form_params->{'path'} = $self->{api_client}->to_form_value($args{'path'});
    }

    # form params
    if ( exists $args{'public_key'} ) {
                $form_params->{'public_key'} = $self->{api_client}->to_form_value($args{'public_key'});
    }

    # form params
    if ( exists $args{'secret_key'} ) {
                $form_params->{'secret_key'} = $self->{api_client}->to_form_value($args{'secret_key'});
    }

    # form params
    if ( exists $args{'ssh_known_hosts'} ) {
                $form_params->{'ssh_known_hosts'} = $self->{api_client}->to_form_value($args{'ssh_known_hosts'});
    }

    # form params
    if ( exists $args{'user'} ) {
                $form_params->{'user'} = $self->{api_client}->to_form_value($args{'user'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSftpResponse', $response);
    return $_response_object;
}

#
# delete_log_sftp
#
# Delete an SFTP log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_sftp_name The name for the real-time logging configuration. (required)
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
    'logging_sftp_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_log_sftp' } = {
        summary => 'Delete an SFTP log endpoint',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_log_sftp {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_log_sftp");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_log_sftp");
    }

    # verify the required parameter 'logging_sftp_name' is set
    unless (exists $args{'logging_sftp_name'}) {
      croak("Missing the required parameter 'logging_sftp_name' when calling delete_log_sftp");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name}';

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
    if ( exists $args{'logging_sftp_name'}) {
        my $_base_variable = "{" . "logging_sftp_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_sftp_name'});
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
# get_log_sftp
#
# Get an SFTP log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_sftp_name The name for the real-time logging configuration. (required)
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
    'logging_sftp_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_log_sftp' } = {
        summary => 'Get an SFTP log endpoint',
        params => $params,
        returns => 'LoggingSftpResponse',
        };
}
# @return LoggingSftpResponse
#
sub get_log_sftp {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_log_sftp");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_log_sftp");
    }

    # verify the required parameter 'logging_sftp_name' is set
    unless (exists $args{'logging_sftp_name'}) {
      croak("Missing the required parameter 'logging_sftp_name' when calling get_log_sftp");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name}';

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
    if ( exists $args{'logging_sftp_name'}) {
        my $_base_variable = "{" . "logging_sftp_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_sftp_name'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSftpResponse', $response);
    return $_response_object;
}

#
# list_log_sftp
#
# List SFTP log endpoints
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
    __PACKAGE__->method_documentation->{ 'list_log_sftp' } = {
        summary => 'List SFTP log endpoints',
        params => $params,
        returns => 'ARRAY[LoggingSftpResponse]',
        };
}
# @return ARRAY[LoggingSftpResponse]
#
sub list_log_sftp {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_log_sftp");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_log_sftp");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/sftp';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[LoggingSftpResponse]', $response);
    return $_response_object;
}

#
# update_log_sftp
#
# Update an SFTP log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_sftp_name The name for the real-time logging configuration. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $message_type How the message should be formatted. (optional, default to 'classic')
# @param string $timestamp_format A timestamp format (optional)
# @param string $compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (optional)
# @param int $period How frequently log files are finalized so they can be available for reading (in seconds). (optional, default to 3600)
# @param int $gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (optional, default to 0)
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 22)
# @param string $password The password for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference. (optional)
# @param string $path The path to upload logs to. (optional, default to 'null')
# @param string $public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (optional, default to 'null')
# @param string $secret_key The SSH private key for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference. (optional, default to 'null')
# @param string $ssh_known_hosts A list of host keys for all hosts we can connect to over SFTP. (optional)
# @param string $user The username for the server. (optional)
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
    'logging_sftp_name' => {
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
    'message_type' => {
        data_type => 'string',
        description => 'How the message should be formatted.',
        required => '0',
    },
    'timestamp_format' => {
        data_type => 'string',
        description => 'A timestamp format',
        required => '0',
    },
    'compression_codec' => {
        data_type => 'string',
        description => 'The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
        required => '0',
    },
    'period' => {
        data_type => 'int',
        description => 'How frequently log files are finalized so they can be available for reading (in seconds).',
        required => '0',
    },
    'gzip_level' => {
        data_type => 'int',
        description => 'The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
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
    'password' => {
        data_type => 'string',
        description => 'The password for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference.',
        required => '0',
    },
    'path' => {
        data_type => 'string',
        description => 'The path to upload logs to.',
        required => '0',
    },
    'public_key' => {
        data_type => 'string',
        description => 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk.',
        required => '0',
    },
    'secret_key' => {
        data_type => 'string',
        description => 'The SSH private key for the server. If both &#x60;password&#x60; and &#x60;secret_key&#x60; are passed, &#x60;secret_key&#x60; will be used in preference.',
        required => '0',
    },
    'ssh_known_hosts' => {
        data_type => 'string',
        description => 'A list of host keys for all hosts we can connect to over SFTP.',
        required => '0',
    },
    'user' => {
        data_type => 'string',
        description => 'The username for the server.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_log_sftp' } = {
        summary => 'Update an SFTP log endpoint',
        params => $params,
        returns => 'LoggingSftpResponse',
        };
}
# @return LoggingSftpResponse
#
sub update_log_sftp {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_log_sftp");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_log_sftp");
    }

    # verify the required parameter 'logging_sftp_name' is set
    unless (exists $args{'logging_sftp_name'}) {
      croak("Missing the required parameter 'logging_sftp_name' when calling update_log_sftp");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name}';

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
    if ( exists $args{'logging_sftp_name'}) {
        my $_base_variable = "{" . "logging_sftp_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_sftp_name'});
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
    if ( exists $args{'message_type'} ) {
                $form_params->{'message_type'} = $self->{api_client}->to_form_value($args{'message_type'});
    }

    # form params
    if ( exists $args{'timestamp_format'} ) {
                $form_params->{'timestamp_format'} = $self->{api_client}->to_form_value($args{'timestamp_format'});
    }

    # form params
    if ( exists $args{'compression_codec'} ) {
                $form_params->{'compression_codec'} = $self->{api_client}->to_form_value($args{'compression_codec'});
    }

    # form params
    if ( exists $args{'period'} ) {
                $form_params->{'period'} = $self->{api_client}->to_form_value($args{'period'});
    }

    # form params
    if ( exists $args{'gzip_level'} ) {
                $form_params->{'gzip_level'} = $self->{api_client}->to_form_value($args{'gzip_level'});
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
    if ( exists $args{'password'} ) {
                $form_params->{'password'} = $self->{api_client}->to_form_value($args{'password'});
    }

    # form params
    if ( exists $args{'path'} ) {
                $form_params->{'path'} = $self->{api_client}->to_form_value($args{'path'});
    }

    # form params
    if ( exists $args{'public_key'} ) {
                $form_params->{'public_key'} = $self->{api_client}->to_form_value($args{'public_key'});
    }

    # form params
    if ( exists $args{'secret_key'} ) {
                $form_params->{'secret_key'} = $self->{api_client}->to_form_value($args{'secret_key'});
    }

    # form params
    if ( exists $args{'ssh_known_hosts'} ) {
                $form_params->{'ssh_known_hosts'} = $self->{api_client}->to_form_value($args{'ssh_known_hosts'});
    }

    # form params
    if ( exists $args{'user'} ) {
                $form_params->{'user'} = $self->{api_client}->to_form_value($args{'user'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingSftpResponse', $response);
    return $_response_object;
}

1;
