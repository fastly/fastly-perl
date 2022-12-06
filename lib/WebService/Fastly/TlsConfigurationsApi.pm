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
package WebService::Fastly::TlsConfigurationsApi;

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
# get_tls_config
#
# Get a TLS configuration
#
# @param string $tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;.  (optional)
{
    my $params = {
    'tls_configuration_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS configuration.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tls_config' } = {
        summary => 'Get a TLS configuration',
        params => $params,
        returns => 'TlsConfigurationResponse',
        };
}
# @return TlsConfigurationResponse
#
sub get_tls_config {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_configuration_id' is set
    unless (exists $args{'tls_configuration_id'}) {
      croak("Missing the required parameter 'tls_configuration_id' when calling get_tls_config");
    }

    # parse inputs
    my $_resource_path = '/tls/configurations/{tls_configuration_id}';

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

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'tls_configuration_id'}) {
        my $_base_variable = "{" . "tls_configuration_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_configuration_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsConfigurationResponse', $response);
    return $_response_object;
}

#
# list_tls_configs
#
# List TLS configurations
#
# @param string $filter[bulk] Optionally filters by the bulk attribute. (optional)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'filter[bulk]' => {
        data_type => 'string',
        description => 'Optionally filters by the bulk attribute.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. ',
        required => '0',
    },
    'page[number]' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    'page[size]' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_tls_configs' } = {
        summary => 'List TLS configurations',
        params => $params,
        returns => 'TlsConfigurationsResponse',
        };
}
# @return TlsConfigurationsResponse
#
sub list_tls_configs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/configurations';

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

    # query params
    if ( exists $args{'filter[bulk]'}) {
        $query_params->{'filter[bulk]'} = $self->{api_client}->to_query_value($args{'filter[bulk]'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # query params
    if ( exists $args{'page[number]'}) {
        $query_params->{'page[number]'} = $self->{api_client}->to_query_value($args{'page[number]'});
    }

    # query params
    if ( exists $args{'page[size]'}) {
        $query_params->{'page[size]'} = $self->{api_client}->to_query_value($args{'page[size]'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsConfigurationsResponse', $response);
    return $_response_object;
}

#
# update_tls_config
#
# Update a TLS configuration
#
# @param string $tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
# @param TlsConfiguration $tls_configuration  (optional)
{
    my $params = {
    'tls_configuration_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS configuration.',
        required => '1',
    },
    'tls_configuration' => {
        data_type => 'TlsConfiguration',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_tls_config' } = {
        summary => 'Update a TLS configuration',
        params => $params,
        returns => 'TlsConfigurationResponse',
        };
}
# @return TlsConfigurationResponse
#
sub update_tls_config {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_configuration_id' is set
    unless (exists $args{'tls_configuration_id'}) {
      croak("Missing the required parameter 'tls_configuration_id' when calling update_tls_config");
    }

    # parse inputs
    my $_resource_path = '/tls/configurations/{tls_configuration_id}';

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
    if ( exists $args{'tls_configuration_id'}) {
        my $_base_variable = "{" . "tls_configuration_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_configuration_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tls_configuration'}) {
        $_body_data = $args{'tls_configuration'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsConfigurationResponse', $response);
    return $_response_object;
}

1;
