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
package WebService::Fastly::LegacyWafConfigurationSetsApi;

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
# list_waf_config_sets
#
# List configuration sets
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_waf_config_sets' } = {
        summary => 'List configuration sets',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_waf_config_sets {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/wafs/configuration_sets';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# list_wafs_config_set
#
# List WAFs currently using a configuration set
#
# @param string $configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
{
    my $params = {
    'configuration_set_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF configuration set.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_wafs_config_set' } = {
        summary => 'List WAFs currently using a configuration set',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_wafs_config_set {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_set_id' is set
    unless (exists $args{'configuration_set_id'}) {
      croak("Missing the required parameter 'configuration_set_id' when calling list_wafs_config_set");
    }

    # parse inputs
    my $_resource_path = '/wafs/configuration_sets/{configuration_set_id}/relationships/wafs';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'configuration_set_id'}) {
        my $_base_variable = "{" . "configuration_set_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'configuration_set_id'});
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# use_waf_config_set
#
# Apply a configuration set to a WAF
#
# @param string $configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'configuration_set_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF configuration set.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'use_waf_config_set' } = {
        summary => 'Apply a configuration set to a WAF',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub use_waf_config_set {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_set_id' is set
    unless (exists $args{'configuration_set_id'}) {
      croak("Missing the required parameter 'configuration_set_id' when calling use_waf_config_set");
    }

    # parse inputs
    my $_resource_path = '/wafs/configuration_sets/{configuration_set_id}/relationships/wafs';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # path params
    if ( exists $args{'configuration_set_id'}) {
        my $_base_variable = "{" . "configuration_set_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'configuration_set_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;
