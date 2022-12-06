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
package WebService::Fastly::HealthcheckApi;

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
# create_healthcheck
#
# Create a health check
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param int $check_interval How often to run the health check in milliseconds. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param int $expected_response The status code expected from the host. (optional)
# @param ARRAY[string] $headers Array of custom headers that will be added to the health check probes. This feature is part of an **alpha release**, which may be subject to breaking changes and improvements over time. (optional)
# @param string $host Which host to check. (optional)
# @param string $http_version Whether to use version 1.0 or 1.1 HTTP. (optional)
# @param int $initial When loading a config, the initial number of probes to be seen as OK. (optional)
# @param string $method Which HTTP method to use. (optional)
# @param string $name The name of the health check. (optional)
# @param string $path The path to check. (optional)
# @param int $threshold How many health checks must succeed to be considered healthy. (optional)
# @param int $timeout Timeout in milliseconds. (optional)
# @param int $window The number of most recent health check queries to keep for this health check. (optional)
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
    'check_interval' => {
        data_type => 'int',
        description => 'How often to run the health check in milliseconds.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'expected_response' => {
        data_type => 'int',
        description => 'The status code expected from the host.',
        required => '0',
    },
    'headers' => {
        data_type => 'ARRAY[string]',
        description => 'Array of custom headers that will be added to the health check probes. This feature is part of an **alpha release**, which may be subject to breaking changes and improvements over time.',
        required => '0',
    },
    'host' => {
        data_type => 'string',
        description => 'Which host to check.',
        required => '0',
    },
    'http_version' => {
        data_type => 'string',
        description => 'Whether to use version 1.0 or 1.1 HTTP.',
        required => '0',
    },
    'initial' => {
        data_type => 'int',
        description => 'When loading a config, the initial number of probes to be seen as OK.',
        required => '0',
    },
    'method' => {
        data_type => 'string',
        description => 'Which HTTP method to use.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the health check.',
        required => '0',
    },
    'path' => {
        data_type => 'string',
        description => 'The path to check.',
        required => '0',
    },
    'threshold' => {
        data_type => 'int',
        description => 'How many health checks must succeed to be considered healthy.',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Timeout in milliseconds.',
        required => '0',
    },
    'window' => {
        data_type => 'int',
        description => 'The number of most recent health check queries to keep for this health check.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_healthcheck' } = {
        summary => 'Create a health check',
        params => $params,
        returns => 'HealthcheckResponse',
        };
}
# @return HealthcheckResponse
#
sub create_healthcheck {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_healthcheck");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_healthcheck");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/healthcheck';

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
    if ( exists $args{'check_interval'} ) {
                $form_params->{'check_interval'} = $self->{api_client}->to_form_value($args{'check_interval'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'expected_response'} ) {
                $form_params->{'expected_response'} = $self->{api_client}->to_form_value($args{'expected_response'});
    }

    # form params
    if ( exists $args{'headers'} ) {
                $form_params->{'headers'} = $self->{api_client}->to_form_value($args{'headers'});
    }

    # form params
    if ( exists $args{'host'} ) {
                $form_params->{'host'} = $self->{api_client}->to_form_value($args{'host'});
    }

    # form params
    if ( exists $args{'http_version'} ) {
                $form_params->{'http_version'} = $self->{api_client}->to_form_value($args{'http_version'});
    }

    # form params
    if ( exists $args{'initial'} ) {
                $form_params->{'initial'} = $self->{api_client}->to_form_value($args{'initial'});
    }

    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'path'} ) {
                $form_params->{'path'} = $self->{api_client}->to_form_value($args{'path'});
    }

    # form params
    if ( exists $args{'threshold'} ) {
                $form_params->{'threshold'} = $self->{api_client}->to_form_value($args{'threshold'});
    }

    # form params
    if ( exists $args{'timeout'} ) {
                $form_params->{'timeout'} = $self->{api_client}->to_form_value($args{'timeout'});
    }

    # form params
    if ( exists $args{'window'} ) {
                $form_params->{'window'} = $self->{api_client}->to_form_value($args{'window'});
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
    my $_response_object = $self->{api_client}->deserialize('HealthcheckResponse', $response);
    return $_response_object;
}

#
# delete_healthcheck
#
# Delete a health check
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $healthcheck_name The name of the health check. (required)
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
    'healthcheck_name' => {
        data_type => 'string',
        description => 'The name of the health check.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_healthcheck' } = {
        summary => 'Delete a health check',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_healthcheck {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_healthcheck");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_healthcheck");
    }

    # verify the required parameter 'healthcheck_name' is set
    unless (exists $args{'healthcheck_name'}) {
      croak("Missing the required parameter 'healthcheck_name' when calling delete_healthcheck");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}';

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
    if ( exists $args{'healthcheck_name'}) {
        my $_base_variable = "{" . "healthcheck_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'healthcheck_name'});
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
# get_healthcheck
#
# Get a health check
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $healthcheck_name The name of the health check. (required)
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
    'healthcheck_name' => {
        data_type => 'string',
        description => 'The name of the health check.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_healthcheck' } = {
        summary => 'Get a health check',
        params => $params,
        returns => 'HealthcheckResponse',
        };
}
# @return HealthcheckResponse
#
sub get_healthcheck {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_healthcheck");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_healthcheck");
    }

    # verify the required parameter 'healthcheck_name' is set
    unless (exists $args{'healthcheck_name'}) {
      croak("Missing the required parameter 'healthcheck_name' when calling get_healthcheck");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}';

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
    if ( exists $args{'healthcheck_name'}) {
        my $_base_variable = "{" . "healthcheck_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'healthcheck_name'});
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
    my $_response_object = $self->{api_client}->deserialize('HealthcheckResponse', $response);
    return $_response_object;
}

#
# list_healthchecks
#
# List health checks
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
    __PACKAGE__->method_documentation->{ 'list_healthchecks' } = {
        summary => 'List health checks',
        params => $params,
        returns => 'ARRAY[HealthcheckResponse]',
        };
}
# @return ARRAY[HealthcheckResponse]
#
sub list_healthchecks {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_healthchecks");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_healthchecks");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/healthcheck';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[HealthcheckResponse]', $response);
    return $_response_object;
}

#
# update_healthcheck
#
# Update a health check
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $healthcheck_name The name of the health check. (required)
# @param int $check_interval How often to run the health check in milliseconds. (optional)
# @param string $comment A freeform descriptive note. (optional)
# @param int $expected_response The status code expected from the host. (optional)
# @param ARRAY[string] $headers Array of custom headers that will be added to the health check probes. This feature is part of an **alpha release**, which may be subject to breaking changes and improvements over time. (optional)
# @param string $host Which host to check. (optional)
# @param string $http_version Whether to use version 1.0 or 1.1 HTTP. (optional)
# @param int $initial When loading a config, the initial number of probes to be seen as OK. (optional)
# @param string $method Which HTTP method to use. (optional)
# @param string $name The name of the health check. (optional)
# @param string $path The path to check. (optional)
# @param int $threshold How many health checks must succeed to be considered healthy. (optional)
# @param int $timeout Timeout in milliseconds. (optional)
# @param int $window The number of most recent health check queries to keep for this health check. (optional)
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
    'healthcheck_name' => {
        data_type => 'string',
        description => 'The name of the health check.',
        required => '1',
    },
    'check_interval' => {
        data_type => 'int',
        description => 'How often to run the health check in milliseconds.',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'expected_response' => {
        data_type => 'int',
        description => 'The status code expected from the host.',
        required => '0',
    },
    'headers' => {
        data_type => 'ARRAY[string]',
        description => 'Array of custom headers that will be added to the health check probes. This feature is part of an **alpha release**, which may be subject to breaking changes and improvements over time.',
        required => '0',
    },
    'host' => {
        data_type => 'string',
        description => 'Which host to check.',
        required => '0',
    },
    'http_version' => {
        data_type => 'string',
        description => 'Whether to use version 1.0 or 1.1 HTTP.',
        required => '0',
    },
    'initial' => {
        data_type => 'int',
        description => 'When loading a config, the initial number of probes to be seen as OK.',
        required => '0',
    },
    'method' => {
        data_type => 'string',
        description => 'Which HTTP method to use.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the health check.',
        required => '0',
    },
    'path' => {
        data_type => 'string',
        description => 'The path to check.',
        required => '0',
    },
    'threshold' => {
        data_type => 'int',
        description => 'How many health checks must succeed to be considered healthy.',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Timeout in milliseconds.',
        required => '0',
    },
    'window' => {
        data_type => 'int',
        description => 'The number of most recent health check queries to keep for this health check.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_healthcheck' } = {
        summary => 'Update a health check',
        params => $params,
        returns => 'HealthcheckResponse',
        };
}
# @return HealthcheckResponse
#
sub update_healthcheck {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_healthcheck");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_healthcheck");
    }

    # verify the required parameter 'healthcheck_name' is set
    unless (exists $args{'healthcheck_name'}) {
      croak("Missing the required parameter 'healthcheck_name' when calling update_healthcheck");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}';

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
    if ( exists $args{'healthcheck_name'}) {
        my $_base_variable = "{" . "healthcheck_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'healthcheck_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'check_interval'} ) {
                $form_params->{'check_interval'} = $self->{api_client}->to_form_value($args{'check_interval'});
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'expected_response'} ) {
                $form_params->{'expected_response'} = $self->{api_client}->to_form_value($args{'expected_response'});
    }

    # form params
    if ( exists $args{'headers'} ) {
                $form_params->{'headers'} = $self->{api_client}->to_form_value($args{'headers'});
    }

    # form params
    if ( exists $args{'host'} ) {
                $form_params->{'host'} = $self->{api_client}->to_form_value($args{'host'});
    }

    # form params
    if ( exists $args{'http_version'} ) {
                $form_params->{'http_version'} = $self->{api_client}->to_form_value($args{'http_version'});
    }

    # form params
    if ( exists $args{'initial'} ) {
                $form_params->{'initial'} = $self->{api_client}->to_form_value($args{'initial'});
    }

    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'path'} ) {
                $form_params->{'path'} = $self->{api_client}->to_form_value($args{'path'});
    }

    # form params
    if ( exists $args{'threshold'} ) {
                $form_params->{'threshold'} = $self->{api_client}->to_form_value($args{'threshold'});
    }

    # form params
    if ( exists $args{'timeout'} ) {
                $form_params->{'timeout'} = $self->{api_client}->to_form_value($args{'timeout'});
    }

    # form params
    if ( exists $args{'window'} ) {
                $form_params->{'window'} = $self->{api_client}->to_form_value($args{'window'});
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
    my $_response_object = $self->{api_client}->deserialize('HealthcheckResponse', $response);
    return $_response_object;
}

1;
