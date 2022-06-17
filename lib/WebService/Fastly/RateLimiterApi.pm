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
package WebService::Fastly::RateLimiterApi;

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
# create_rate_limiter
#
# Create a rate limiter
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name A human readable name for the rate limiting rule. (optional)
# @param string $uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited. (optional)
# @param ARRAY[string] $http_methods Array of HTTP methods to apply rate limiting to. (optional)
# @param int $rps_limit Upper limit of requests per second allowed by the rate limiter. (optional)
# @param int $window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. (optional)
# @param ARRAY[string] $client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;. (optional)
# @param int $penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected. (optional)
# @param string $action The action to take when a rate limiter violation is detected. (optional)
# @param RateLimiterResponse1 $response  (optional)
# @param string $response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. (optional)
# @param string $logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. (optional)
# @param int $feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision. (optional)
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
        description => 'A human readable name for the rate limiting rule.',
        required => '0',
    },
    'uri_dictionary_name' => {
        data_type => 'string',
        description => 'The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.',
        required => '0',
    },
    'http_methods' => {
        data_type => 'ARRAY[string]',
        description => 'Array of HTTP methods to apply rate limiting to.',
        required => '0',
    },
    'rps_limit' => {
        data_type => 'int',
        description => 'Upper limit of requests per second allowed by the rate limiter.',
        required => '0',
    },
    'window_size' => {
        data_type => 'int',
        description => 'Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.',
        required => '0',
    },
    'client_key' => {
        data_type => 'ARRAY[string]',
        description => 'Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.',
        required => '0',
    },
    'penalty_box_duration' => {
        data_type => 'int',
        description => 'Length of time in minutes that the rate limiter is in effect after the initial violation is detected.',
        required => '0',
    },
    'action' => {
        data_type => 'string',
        description => 'The action to take when a rate limiter violation is detected.',
        required => '0',
    },
    'response' => {
        data_type => 'RateLimiterResponse1',
        description => '',
        required => '0',
    },
    'response_object_name' => {
        data_type => 'string',
        description => 'Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.',
        required => '0',
    },
    'logger_type' => {
        data_type => 'string',
        description => 'Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.',
        required => '0',
    },
    'feature_revision' => {
        data_type => 'int',
        description => 'Revision number of the rate limiting feature implementation. Defaults to the most recent revision.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_rate_limiter' } = {
        summary => 'Create a rate limiter',
        params => $params,
        returns => 'RateLimiterResponse',
        };
}
# @return RateLimiterResponse
#
sub create_rate_limiter {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_rate_limiter");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_rate_limiter");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/rate-limiters';

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
    if ( exists $args{'uri_dictionary_name'} ) {
                $form_params->{'uri_dictionary_name'} = $self->{api_client}->to_form_value($args{'uri_dictionary_name'});
    }

    # form params
    if ( exists $args{'http_methods'} ) {
                $form_params->{'http_methods'} = $self->{api_client}->to_form_value($args{'http_methods'});
    }

    # form params
    if ( exists $args{'rps_limit'} ) {
                $form_params->{'rps_limit'} = $self->{api_client}->to_form_value($args{'rps_limit'});
    }

    # form params
    if ( exists $args{'window_size'} ) {
                $form_params->{'window_size'} = $self->{api_client}->to_form_value($args{'window_size'});
    }

    # form params
    if ( exists $args{'client_key'} ) {
                $form_params->{'client_key'} = $self->{api_client}->to_form_value($args{'client_key'});
    }

    # form params
    if ( exists $args{'penalty_box_duration'} ) {
                $form_params->{'penalty_box_duration'} = $self->{api_client}->to_form_value($args{'penalty_box_duration'});
    }

    # form params
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'response'} ) {
                $form_params->{'response'} = $self->{api_client}->to_form_value($args{'response'});
    }

    # form params
    if ( exists $args{'response_object_name'} ) {
                $form_params->{'response_object_name'} = $self->{api_client}->to_form_value($args{'response_object_name'});
    }

    # form params
    if ( exists $args{'logger_type'} ) {
                $form_params->{'logger_type'} = $self->{api_client}->to_form_value($args{'logger_type'});
    }

    # form params
    if ( exists $args{'feature_revision'} ) {
                $form_params->{'feature_revision'} = $self->{api_client}->to_form_value($args{'feature_revision'});
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
    my $_response_object = $self->{api_client}->deserialize('RateLimiterResponse', $response);
    return $_response_object;
}

#
# delete_rate_limiter
#
# Delete a rate limiter
#
# @param string $rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
{
    my $params = {
    'rate_limiter_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the rate limiter.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_rate_limiter' } = {
        summary => 'Delete a rate limiter',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_rate_limiter {
    my ($self, %args) = @_;

    # verify the required parameter 'rate_limiter_id' is set
    unless (exists $args{'rate_limiter_id'}) {
      croak("Missing the required parameter 'rate_limiter_id' when calling delete_rate_limiter");
    }

    # parse inputs
    my $_resource_path = '/rate-limiters/{rate_limiter_id}';

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
    if ( exists $args{'rate_limiter_id'}) {
        my $_base_variable = "{" . "rate_limiter_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rate_limiter_id'});
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
# get_rate_limiter
#
# Get a rate limiter
#
# @param string $rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
{
    my $params = {
    'rate_limiter_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the rate limiter.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_rate_limiter' } = {
        summary => 'Get a rate limiter',
        params => $params,
        returns => 'RateLimiterResponse',
        };
}
# @return RateLimiterResponse
#
sub get_rate_limiter {
    my ($self, %args) = @_;

    # verify the required parameter 'rate_limiter_id' is set
    unless (exists $args{'rate_limiter_id'}) {
      croak("Missing the required parameter 'rate_limiter_id' when calling get_rate_limiter");
    }

    # parse inputs
    my $_resource_path = '/rate-limiters/{rate_limiter_id}';

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
    if ( exists $args{'rate_limiter_id'}) {
        my $_base_variable = "{" . "rate_limiter_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rate_limiter_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RateLimiterResponse', $response);
    return $_response_object;
}

#
# list_rate_limiters
#
# List rate limiters
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
    __PACKAGE__->method_documentation->{ 'list_rate_limiters' } = {
        summary => 'List rate limiters',
        params => $params,
        returns => 'ARRAY[RateLimiterResponse]',
        };
}
# @return ARRAY[RateLimiterResponse]
#
sub list_rate_limiters {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_rate_limiters");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_rate_limiters");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/rate-limiters';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[RateLimiterResponse]', $response);
    return $_response_object;
}

#
# update_rate_limiter
#
# Update a rate limiter
#
# @param string $rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
# @param string $name A human readable name for the rate limiting rule. (optional)
# @param string $uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited. (optional)
# @param ARRAY[string] $http_methods Array of HTTP methods to apply rate limiting to. (optional)
# @param int $rps_limit Upper limit of requests per second allowed by the rate limiter. (optional)
# @param int $window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. (optional)
# @param ARRAY[string] $client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;. (optional)
# @param int $penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected. (optional)
# @param string $action The action to take when a rate limiter violation is detected. (optional)
# @param RateLimiterResponse1 $response  (optional)
# @param string $response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. (optional)
# @param string $logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. (optional)
# @param int $feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision. (optional)
{
    my $params = {
    'rate_limiter_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the rate limiter.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'A human readable name for the rate limiting rule.',
        required => '0',
    },
    'uri_dictionary_name' => {
        data_type => 'string',
        description => 'The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.',
        required => '0',
    },
    'http_methods' => {
        data_type => 'ARRAY[string]',
        description => 'Array of HTTP methods to apply rate limiting to.',
        required => '0',
    },
    'rps_limit' => {
        data_type => 'int',
        description => 'Upper limit of requests per second allowed by the rate limiter.',
        required => '0',
    },
    'window_size' => {
        data_type => 'int',
        description => 'Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.',
        required => '0',
    },
    'client_key' => {
        data_type => 'ARRAY[string]',
        description => 'Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.',
        required => '0',
    },
    'penalty_box_duration' => {
        data_type => 'int',
        description => 'Length of time in minutes that the rate limiter is in effect after the initial violation is detected.',
        required => '0',
    },
    'action' => {
        data_type => 'string',
        description => 'The action to take when a rate limiter violation is detected.',
        required => '0',
    },
    'response' => {
        data_type => 'RateLimiterResponse1',
        description => '',
        required => '0',
    },
    'response_object_name' => {
        data_type => 'string',
        description => 'Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.',
        required => '0',
    },
    'logger_type' => {
        data_type => 'string',
        description => 'Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.',
        required => '0',
    },
    'feature_revision' => {
        data_type => 'int',
        description => 'Revision number of the rate limiting feature implementation. Defaults to the most recent revision.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_rate_limiter' } = {
        summary => 'Update a rate limiter',
        params => $params,
        returns => 'RateLimiterResponse',
        };
}
# @return RateLimiterResponse
#
sub update_rate_limiter {
    my ($self, %args) = @_;

    # verify the required parameter 'rate_limiter_id' is set
    unless (exists $args{'rate_limiter_id'}) {
      croak("Missing the required parameter 'rate_limiter_id' when calling update_rate_limiter");
    }

    # parse inputs
    my $_resource_path = '/rate-limiters/{rate_limiter_id}';

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
    if ( exists $args{'rate_limiter_id'}) {
        my $_base_variable = "{" . "rate_limiter_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rate_limiter_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'uri_dictionary_name'} ) {
                $form_params->{'uri_dictionary_name'} = $self->{api_client}->to_form_value($args{'uri_dictionary_name'});
    }

    # form params
    if ( exists $args{'http_methods'} ) {
                $form_params->{'http_methods'} = $self->{api_client}->to_form_value($args{'http_methods'});
    }

    # form params
    if ( exists $args{'rps_limit'} ) {
                $form_params->{'rps_limit'} = $self->{api_client}->to_form_value($args{'rps_limit'});
    }

    # form params
    if ( exists $args{'window_size'} ) {
                $form_params->{'window_size'} = $self->{api_client}->to_form_value($args{'window_size'});
    }

    # form params
    if ( exists $args{'client_key'} ) {
                $form_params->{'client_key'} = $self->{api_client}->to_form_value($args{'client_key'});
    }

    # form params
    if ( exists $args{'penalty_box_duration'} ) {
                $form_params->{'penalty_box_duration'} = $self->{api_client}->to_form_value($args{'penalty_box_duration'});
    }

    # form params
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'response'} ) {
                $form_params->{'response'} = $self->{api_client}->to_form_value($args{'response'});
    }

    # form params
    if ( exists $args{'response_object_name'} ) {
                $form_params->{'response_object_name'} = $self->{api_client}->to_form_value($args{'response_object_name'});
    }

    # form params
    if ( exists $args{'logger_type'} ) {
                $form_params->{'logger_type'} = $self->{api_client}->to_form_value($args{'logger_type'});
    }

    # form params
    if ( exists $args{'feature_revision'} ) {
                $form_params->{'feature_revision'} = $self->{api_client}->to_form_value($args{'feature_revision'});
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
    my $_response_object = $self->{api_client}->deserialize('RateLimiterResponse', $response);
    return $_response_object;
}

1;
