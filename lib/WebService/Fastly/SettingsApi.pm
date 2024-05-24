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
package WebService::Fastly::SettingsApi;

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
# get_service_settings
#
# Get service settings
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
    __PACKAGE__->method_documentation->{ 'get_service_settings' } = {
        summary => 'Get service settings',
        params => $params,
        returns => 'SettingsResponse',
        };
}
# @return SettingsResponse
#
sub get_service_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_service_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_service_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/settings';

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
    my $_response_object = $self->{api_client}->deserialize('SettingsResponse', $response);
    return $_response_object;
}

#
# update_service_settings
#
# Update service settings
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $general/default_host The default host name for the version. (optional)
# @param int $general/default_ttl The default time-to-live (TTL) for the version. (optional)
# @param boolean $general/stale_if_error Enables serving a stale object if there is an error. (optional, default to false)
# @param int $general/stale_if_error_ttl The default time-to-live (TTL) for serving the stale object for the version. (optional, default to 43200)
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
    'general/default_host' => {
        data_type => 'string',
        description => 'The default host name for the version.',
        required => '0',
    },
    'general/default_ttl' => {
        data_type => 'int',
        description => 'The default time-to-live (TTL) for the version.',
        required => '0',
    },
    'general/stale_if_error' => {
        data_type => 'boolean',
        description => 'Enables serving a stale object if there is an error.',
        required => '0',
    },
    'general/stale_if_error_ttl' => {
        data_type => 'int',
        description => 'The default time-to-live (TTL) for serving the stale object for the version.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_service_settings' } = {
        summary => 'Update service settings',
        params => $params,
        returns => 'SettingsResponse',
        };
}
# @return SettingsResponse
#
sub update_service_settings {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_service_settings");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_service_settings");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/settings';

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

    # form params
    if ( exists $args{'general/default_host'} ) {
                $form_params->{'general.default_host'} = $self->{api_client}->to_form_value($args{'general/default_host'});
    }

    # form params
    if ( exists $args{'general/default_ttl'} ) {
                $form_params->{'general.default_ttl'} = $self->{api_client}->to_form_value($args{'general/default_ttl'});
    }

    # form params
    if ( exists $args{'general/stale_if_error'} ) {
                $form_params->{'general.stale_if_error'} = $self->{api_client}->to_form_value($args{'general/stale_if_error'});
    }

    # form params
    if ( exists $args{'general/stale_if_error_ttl'} ) {
                $form_params->{'general.stale_if_error_ttl'} = $self->{api_client}->to_form_value($args{'general/stale_if_error_ttl'});
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
    my $_response_object = $self->{api_client}->deserialize('SettingsResponse', $response);
    return $_response_object;
}

1;
