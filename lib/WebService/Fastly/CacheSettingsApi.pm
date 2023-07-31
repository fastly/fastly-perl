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
package WebService::Fastly::CacheSettingsApi;

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
# create_cache_settings
#
# Create a cache settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  (optional)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $name Name for the cache settings object. (optional)
# @param string $stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). (optional)
# @param string $ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). (optional)
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
    'action' => {
        data_type => 'string',
        description => 'If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. ',
        required => '0',
    },
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the cache settings object.',
        required => '0',
    },
    'stale_ttl' => {
        data_type => 'string',
        description => 'Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).',
        required => '0',
    },
    'ttl' => {
        data_type => 'string',
        description => 'Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_cache_settings' } = {
        summary => 'Create a cache settings object',
        params => $params,
        returns => 'CacheSettingResponse',
        };
}
# @return CacheSettingResponse
#
sub create_cache_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_cache_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_cache_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/cache_settings';

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
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'stale_ttl'} ) {
                $form_params->{'stale_ttl'} = $self->{api_client}->to_form_value($args{'stale_ttl'});
    }

    # form params
    if ( exists $args{'ttl'} ) {
                $form_params->{'ttl'} = $self->{api_client}->to_form_value($args{'ttl'});
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
    my $_response_object = $self->{api_client}->deserialize('CacheSettingResponse', $response);
    return $_response_object;
}

#
# delete_cache_settings
#
# Delete a cache settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $cache_settings_name Name for the cache settings object. (required)
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
    'cache_settings_name' => {
        data_type => 'string',
        description => 'Name for the cache settings object.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_cache_settings' } = {
        summary => 'Delete a cache settings object',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_cache_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_cache_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_cache_settings");
    }

    # verify the required parameter 'cache_settings_name' is set
    unless (exists $args{'cache_settings_name'}) {
      croak("Missing the required parameter 'cache_settings_name' when calling delete_cache_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}';

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
    if ( exists $args{'cache_settings_name'}) {
        my $_base_variable = "{" . "cache_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cache_settings_name'});
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
# get_cache_settings
#
# Get a cache settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $cache_settings_name Name for the cache settings object. (required)
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
    'cache_settings_name' => {
        data_type => 'string',
        description => 'Name for the cache settings object.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_cache_settings' } = {
        summary => 'Get a cache settings object',
        params => $params,
        returns => 'CacheSettingResponse',
        };
}
# @return CacheSettingResponse
#
sub get_cache_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_cache_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_cache_settings");
    }

    # verify the required parameter 'cache_settings_name' is set
    unless (exists $args{'cache_settings_name'}) {
      croak("Missing the required parameter 'cache_settings_name' when calling get_cache_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}';

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
    if ( exists $args{'cache_settings_name'}) {
        my $_base_variable = "{" . "cache_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cache_settings_name'});
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
    my $_response_object = $self->{api_client}->deserialize('CacheSettingResponse', $response);
    return $_response_object;
}

#
# list_cache_settings
#
# List cache settings objects
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
    __PACKAGE__->method_documentation->{ 'list_cache_settings' } = {
        summary => 'List cache settings objects',
        params => $params,
        returns => 'ARRAY[CacheSettingResponse]',
        };
}
# @return ARRAY[CacheSettingResponse]
#
sub list_cache_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_cache_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_cache_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/cache_settings';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[CacheSettingResponse]', $response);
    return $_response_object;
}

#
# update_cache_settings
#
# Update a cache settings object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $cache_settings_name Name for the cache settings object. (required)
# @param string $action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  (optional)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $name Name for the cache settings object. (optional)
# @param string $stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). (optional)
# @param string $ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). (optional)
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
    'cache_settings_name' => {
        data_type => 'string',
        description => 'Name for the cache settings object.',
        required => '1',
    },
    'action' => {
        data_type => 'string',
        description => 'If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. ',
        required => '0',
    },
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the cache settings object.',
        required => '0',
    },
    'stale_ttl' => {
        data_type => 'string',
        description => 'Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).',
        required => '0',
    },
    'ttl' => {
        data_type => 'string',
        description => 'Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_cache_settings' } = {
        summary => 'Update a cache settings object',
        params => $params,
        returns => 'CacheSettingResponse',
        };
}
# @return CacheSettingResponse
#
sub update_cache_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_cache_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_cache_settings");
    }

    # verify the required parameter 'cache_settings_name' is set
    unless (exists $args{'cache_settings_name'}) {
      croak("Missing the required parameter 'cache_settings_name' when calling update_cache_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}';

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
    if ( exists $args{'cache_settings_name'}) {
        my $_base_variable = "{" . "cache_settings_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cache_settings_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'stale_ttl'} ) {
                $form_params->{'stale_ttl'} = $self->{api_client}->to_form_value($args{'stale_ttl'});
    }

    # form params
    if ( exists $args{'ttl'} ) {
                $form_params->{'ttl'} = $self->{api_client}->to_form_value($args{'ttl'});
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
    my $_response_object = $self->{api_client}->deserialize('CacheSettingResponse', $response);
    return $_response_object;
}

1;
