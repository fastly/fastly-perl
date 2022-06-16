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
package Fastly::RequestSettingsApi;

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
# delete_request_settings
#
# Delete a Request Settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $request_settings_name Name for the request settings. (required)
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
    'request_settings_name' => {
        data_type => 'string',
        description => 'Name for the request settings.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_request_settings' } = {
        summary => 'Delete a Request Settings object',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_request_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_request_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_request_settings");
    }

    # verify the required parameter 'request_settings_name' is set
    unless (exists $args{'request_settings_name'}) {
      croak("Missing the required parameter 'request_settings_name' when calling delete_request_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}';

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
    if ( exists $args{'request_settings_name'}) {
        my $_base_variable = "{" . "request_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'request_settings_name'});
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
# get_request_settings
#
# Get a Request Settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $request_settings_name Name for the request settings. (required)
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
    'request_settings_name' => {
        data_type => 'string',
        description => 'Name for the request settings.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_request_settings' } = {
        summary => 'Get a Request Settings object',
        params => $params,
        returns => 'RequestSettingsResponse',
        };
}
# @return RequestSettingsResponse
#
sub get_request_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_request_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_request_settings");
    }

    # verify the required parameter 'request_settings_name' is set
    unless (exists $args{'request_settings_name'}) {
      croak("Missing the required parameter 'request_settings_name' when calling get_request_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}';

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
    if ( exists $args{'request_settings_name'}) {
        my $_base_variable = "{" . "request_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'request_settings_name'});
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
    my $_response_object = $self->{api_client}->deserialize('RequestSettingsResponse', $response);
    return $_response_object;
}

#
# list_request_settings
#
# List Request Settings objects
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
    __PACKAGE__->method_documentation->{ 'list_request_settings' } = {
        summary => 'List Request Settings objects',
        params => $params,
        returns => 'ARRAY[RequestSettingsResponse]',
        };
}
# @return ARRAY[RequestSettingsResponse]
#
sub list_request_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_request_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_request_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/request_settings';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[RequestSettingsResponse]', $response);
    return $_response_object;
}

#
# update_request_settings
#
# Update a Request Settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $request_settings_name Name for the request settings. (required)
# @param string $action Allows you to terminate request handling and immediately perform an action. (optional)
# @param int $bypass_busy_wait Disable collapsed forwarding, so you don&#39;t wait for other objects to origin. (optional)
# @param string $default_host Sets the host header. (optional)
# @param int $force_miss Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable. (optional)
# @param int $force_ssl Forces the request use SSL (redirects a non-SSL to SSL). (optional)
# @param int $geo_headers Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers. (optional)
# @param string $hash_keys Comma separated list of varnish request object fields that should be in the hash key. (optional)
# @param int $max_stale_age How old an object is allowed to be to serve stale-if-error or stale-while-revalidate. (optional)
# @param string $name Name for the request settings. (optional)
# @param string $request_condition Condition which, if met, will select this configuration during a request. Optional. (optional)
# @param int $timer_support Injects the X-Timer info into the request for viewing origin fetch durations. (optional)
# @param string $xff Short for X-Forwarded-For. (optional)
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
    'request_settings_name' => {
        data_type => 'string',
        description => 'Name for the request settings.',
        required => '1',
    },
    'action' => {
        data_type => 'string',
        description => 'Allows you to terminate request handling and immediately perform an action.',
        required => '0',
    },
    'bypass_busy_wait' => {
        data_type => 'int',
        description => 'Disable collapsed forwarding, so you don&#39;t wait for other objects to origin.',
        required => '0',
    },
    'default_host' => {
        data_type => 'string',
        description => 'Sets the host header.',
        required => '0',
    },
    'force_miss' => {
        data_type => 'int',
        description => 'Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.',
        required => '0',
    },
    'force_ssl' => {
        data_type => 'int',
        description => 'Forces the request use SSL (redirects a non-SSL to SSL).',
        required => '0',
    },
    'geo_headers' => {
        data_type => 'int',
        description => 'Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.',
        required => '0',
    },
    'hash_keys' => {
        data_type => 'string',
        description => 'Comma separated list of varnish request object fields that should be in the hash key.',
        required => '0',
    },
    'max_stale_age' => {
        data_type => 'int',
        description => 'How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the request settings.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        required => '0',
    },
    'timer_support' => {
        data_type => 'int',
        description => 'Injects the X-Timer info into the request for viewing origin fetch durations.',
        required => '0',
    },
    'xff' => {
        data_type => 'string',
        description => 'Short for X-Forwarded-For.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_request_settings' } = {
        summary => 'Update a Request Settings object',
        params => $params,
        returns => 'RequestSettingsResponse',
        };
}
# @return RequestSettingsResponse
#
sub update_request_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_request_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_request_settings");
    }

    # verify the required parameter 'request_settings_name' is set
    unless (exists $args{'request_settings_name'}) {
      croak("Missing the required parameter 'request_settings_name' when calling update_request_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}';

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
    if ( exists $args{'request_settings_name'}) {
        my $_base_variable = "{" . "request_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'request_settings_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'bypass_busy_wait'} ) {
                $form_params->{'bypass_busy_wait'} = $self->{api_client}->to_form_value($args{'bypass_busy_wait'});
    }

    # form params
    if ( exists $args{'default_host'} ) {
                $form_params->{'default_host'} = $self->{api_client}->to_form_value($args{'default_host'});
    }

    # form params
    if ( exists $args{'force_miss'} ) {
                $form_params->{'force_miss'} = $self->{api_client}->to_form_value($args{'force_miss'});
    }

    # form params
    if ( exists $args{'force_ssl'} ) {
                $form_params->{'force_ssl'} = $self->{api_client}->to_form_value($args{'force_ssl'});
    }

    # form params
    if ( exists $args{'geo_headers'} ) {
                $form_params->{'geo_headers'} = $self->{api_client}->to_form_value($args{'geo_headers'});
    }

    # form params
    if ( exists $args{'hash_keys'} ) {
                $form_params->{'hash_keys'} = $self->{api_client}->to_form_value($args{'hash_keys'});
    }

    # form params
    if ( exists $args{'max_stale_age'} ) {
                $form_params->{'max_stale_age'} = $self->{api_client}->to_form_value($args{'max_stale_age'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'timer_support'} ) {
                $form_params->{'timer_support'} = $self->{api_client}->to_form_value($args{'timer_support'});
    }

    # form params
    if ( exists $args{'xff'} ) {
                $form_params->{'xff'} = $self->{api_client}->to_form_value($args{'xff'});
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
    my $_response_object = $self->{api_client}->deserialize('RequestSettingsResponse', $response);
    return $_response_object;
}

1;
