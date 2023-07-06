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
package WebService::Fastly::LegacyWafUpdateStatusApi;

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
# get_waf_update_status
#
# Get the status of a WAF update
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $update_status_id Alphanumeric string identifying a WAF update status. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    'update_status_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF update status.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_update_status' } = {
        summary => 'Get the status of a WAF update',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_waf_update_status {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_waf_update_status");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_update_status");
    }

    # verify the required parameter 'update_status_id' is set
    unless (exists $args{'update_status_id'}) {
      croak("Missing the required parameter 'update_status_id' when calling get_waf_update_status");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/update_statuses/{update_status_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'update_status_id'}) {
        my $_base_variable = "{" . "update_status_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'update_status_id'});
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
# list_waf_update_statuses
#
# List update statuses
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional, comma separated values. Permitted values: &#x60;waf&#x60;.  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
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
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma separated values. Permitted values: &#x60;waf&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_waf_update_statuses' } = {
        summary => 'List update statuses',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_waf_update_statuses {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_waf_update_statuses");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling list_waf_update_statuses");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/update_statuses';

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
    if ( exists $args{'page[number]'}) {
        $query_params->{'page[number]'} = $self->{api_client}->to_query_value($args{'page[number]'});
    }

    # query params
    if ( exists $args{'page[size]'}) {
        $query_params->{'page[size]'} = $self->{api_client}->to_query_value($args{'page[size]'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
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

1;
