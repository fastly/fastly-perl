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
package Fastly::WafFirewallsApi;

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
# create_waf_firewall
#
# Create a firewall
#
# @param WafFirewall $waf_firewall  (optional)
{
    my $params = {
    'waf_firewall' => {
        data_type => 'WafFirewall',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_waf_firewall' } = {
        summary => 'Create a firewall',
        params => $params,
        returns => 'WafFirewallResponse',
        };
}
# @return WafFirewallResponse
#
sub create_waf_firewall {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/waf/firewalls';

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

    my $_body_data;
    # body params
    if ( exists $args{'waf_firewall'}) {
        $_body_data = $args{'waf_firewall'};
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallResponse', $response);
    return $_response_object;
}

#
# delete_waf_firewall
#
# Delete a firewall
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param WafFirewall $waf_firewall  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'waf_firewall' => {
        data_type => 'WafFirewall',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_waf_firewall' } = {
        summary => 'Delete a firewall',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling delete_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_firewall'}) {
        $_body_data = $args{'waf_firewall'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_waf_firewall
#
# Get a firewall
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param string $filter[service_version_number] Limit the results returned to a specific service version. (optional)
# @param string $include Include related objects. Optional. (optional, default to 'waf_firewall_versions')
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'filter[service_version_number]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific service version.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_firewall' } = {
        summary => 'Get a firewall',
        params => $params,
        returns => 'WafFirewallResponse',
        };
}
# @return WafFirewallResponse
#
sub get_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}';

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
    if ( exists $args{'filter[service_version_number]'}) {
        $query_params->{'filter[service_version_number]'} = $self->{api_client}->to_query_value($args{'filter[service_version_number]'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallResponse', $response);
    return $_response_object;
}

#
# list_waf_firewalls
#
# List firewalls
#
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $filter[service_id] Limit the results returned to a specific service. (optional)
# @param string $filter[service_version_number] Limit the results returned to a specific service version. (optional)
# @param string $include Include related objects. Optional. (optional, default to 'waf_firewall_versions')
{
    my $params = {
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
    'filter[service_id]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific service.',
        required => '0',
    },
    'filter[service_version_number]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific service version.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_waf_firewalls' } = {
        summary => 'List firewalls',
        params => $params,
        returns => 'WafFirewallsResponse',
        };
}
# @return WafFirewallsResponse
#
sub list_waf_firewalls {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/waf/firewalls';

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
    if ( exists $args{'filter[service_id]'}) {
        $query_params->{'filter[service_id]'} = $self->{api_client}->to_query_value($args{'filter[service_id]'});
    }

    # query params
    if ( exists $args{'filter[service_version_number]'}) {
        $query_params->{'filter[service_version_number]'} = $self->{api_client}->to_query_value($args{'filter[service_version_number]'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallsResponse', $response);
    return $_response_object;
}

#
# update_waf_firewall
#
# Update a firewall
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param WafFirewall $waf_firewall  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'waf_firewall' => {
        data_type => 'WafFirewall',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_firewall' } = {
        summary => 'Update a firewall',
        params => $params,
        returns => 'WafFirewallResponse',
        };
}
# @return WafFirewallResponse
#
sub update_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}';

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

    my $_body_data;
    # body params
    if ( exists $args{'waf_firewall'}) {
        $_body_data = $args{'waf_firewall'};
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
    my $_response_object = $self->{api_client}->deserialize('WafFirewallResponse', $response);
    return $_response_object;
}

1;
