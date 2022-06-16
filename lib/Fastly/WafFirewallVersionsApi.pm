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
package Fastly::WafFirewallVersionsApi;

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
# clone_waf_firewall_version
#
# Clone a firewall version
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'firewall_version_number' => {
        data_type => 'int',
        description => 'Integer identifying a WAF firewall version.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'clone_waf_firewall_version' } = {
        summary => 'Clone a firewall version',
        params => $params,
        returns => 'WafFirewallVersionResponse',
        };
}
# @return WafFirewallVersionResponse
#
sub clone_waf_firewall_version {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling clone_waf_firewall_version");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling clone_waf_firewall_version");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/clone';

    my $_method = 'PUT';
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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallVersionResponse', $response);
    return $_response_object;
}

#
# create_waf_firewall_version
#
# Create a firewall version
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param WafFirewallVersion $waf_firewall_version  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'waf_firewall_version' => {
        data_type => 'WafFirewallVersion',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_waf_firewall_version' } = {
        summary => 'Create a firewall version',
        params => $params,
        returns => 'WafFirewallVersionResponse',
        };
}
# @return WafFirewallVersionResponse
#
sub create_waf_firewall_version {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling create_waf_firewall_version");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions';

    my $_method = 'POST';
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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_firewall_version'}) {
        $_body_data = $args{'waf_firewall_version'};
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallVersionResponse', $response);
    return $_response_object;
}

#
# deploy_activate_waf_firewall_version
#
# Deploy or activate a firewall version
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'firewall_version_number' => {
        data_type => 'int',
        description => 'Integer identifying a WAF firewall version.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'deploy_activate_waf_firewall_version' } = {
        summary => 'Deploy or activate a firewall version',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub deploy_activate_waf_firewall_version {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling deploy_activate_waf_firewall_version");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling deploy_activate_waf_firewall_version");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/activate';

    my $_method = 'PUT';
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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
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
# get_waf_firewall_version
#
# Get a firewall version
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param string $include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_firewall&#x60; and &#x60;waf_active_rules&#x60;.  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'firewall_version_number' => {
        data_type => 'int',
        description => 'Integer identifying a WAF firewall version.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_firewall&#x60; and &#x60;waf_active_rules&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_firewall_version' } = {
        summary => 'Get a firewall version',
        params => $params,
        returns => 'WafFirewallVersionResponse',
        };
}
# @return WafFirewallVersionResponse
#
sub get_waf_firewall_version {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_firewall_version");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling get_waf_firewall_version");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}';

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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallVersionResponse', $response);
    return $_response_object;
}

#
# list_waf_firewall_versions
#
# List firewall versions
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param string $include Include relationships. Optional. (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional.',
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
    __PACKAGE__->method_documentation->{ 'list_waf_firewall_versions' } = {
        summary => 'List firewall versions',
        params => $params,
        returns => 'WafFirewallVersionsResponse',
        };
}
# @return WafFirewallVersionsResponse
#
sub list_waf_firewall_versions {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling list_waf_firewall_versions");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions';

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

    # query params
    if ( exists $args{'page[number]'}) {
        $query_params->{'page[number]'} = $self->{api_client}->to_query_value($args{'page[number]'});
    }

    # query params
    if ( exists $args{'page[size]'}) {
        $query_params->{'page[size]'} = $self->{api_client}->to_query_value($args{'page[size]'});
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallVersionsResponse', $response);
    return $_response_object;
}

#
# update_waf_firewall_version
#
# Update a firewall version
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param WafFirewallVersion $waf_firewall_version  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'firewall_version_number' => {
        data_type => 'int',
        description => 'Integer identifying a WAF firewall version.',
        required => '1',
    },
    'waf_firewall_version' => {
        data_type => 'WafFirewallVersion',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_firewall_version' } = {
        summary => 'Update a firewall version',
        params => $params,
        returns => 'WafFirewallVersionResponse',
        };
}
# @return WafFirewallVersionResponse
#
sub update_waf_firewall_version {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_firewall_version");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling update_waf_firewall_version");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}';

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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_firewall_version'}) {
        $_body_data = $args{'waf_firewall_version'};
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallVersionResponse', $response);
    return $_response_object;
}

1;
