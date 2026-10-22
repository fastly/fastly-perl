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
package WebService::Fastly::NetworkProtectApi;

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
# create_network_protect_endpoint
#
# Create a Network Protect endpoint
#
# @param NetworkProtectEndpointCreate $network_protect_endpoint_create  (required)
{
    my $params = {
    'network_protect_endpoint_create' => {
        data_type => 'NetworkProtectEndpointCreate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_network_protect_endpoint' } = {
        summary => 'Create a Network Protect endpoint',
        params => $params,
        returns => 'NetworkProtectEndpointResponse',
        };
}
# @return NetworkProtectEndpointResponse
#
sub create_network_protect_endpoint {
    my ($self, %args) = @_;

    # verify the required parameter 'network_protect_endpoint_create' is set
    unless (exists $args{'network_protect_endpoint_create'}) {
      croak("Missing the required parameter 'network_protect_endpoint_create' when calling create_network_protect_endpoint");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/endpoints';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_endpoint_create'}) {
        $_body_data = $args{'network_protect_endpoint_create'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectEndpointResponse', $response);
    return $_response_object;
}

#
# create_network_protect_network
#
# Create a Network Protect network
#
# @param NetworkProtectNetworkCreate $network_protect_network_create  (required)
{
    my $params = {
    'network_protect_network_create' => {
        data_type => 'NetworkProtectNetworkCreate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_network_protect_network' } = {
        summary => 'Create a Network Protect network',
        params => $params,
        returns => 'NetworkProtectNetworkResponse',
        };
}
# @return NetworkProtectNetworkResponse
#
sub create_network_protect_network {
    my ($self, %args) = @_;

    # verify the required parameter 'network_protect_network_create' is set
    unless (exists $args{'network_protect_network_create'}) {
      croak("Missing the required parameter 'network_protect_network_create' when calling create_network_protect_network");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/networks';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_network_create'}) {
        $_body_data = $args{'network_protect_network_create'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectNetworkResponse', $response);
    return $_response_object;
}

#
# create_network_protect_prefix_list
#
# Create a Network Protect prefix list
#
# @param NetworkProtectPrefixListCreate $network_protect_prefix_list_create  (required)
{
    my $params = {
    'network_protect_prefix_list_create' => {
        data_type => 'NetworkProtectPrefixListCreate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_network_protect_prefix_list' } = {
        summary => 'Create a Network Protect prefix list',
        params => $params,
        returns => 'NetworkProtectPrefixListResponse',
        };
}
# @return NetworkProtectPrefixListResponse
#
sub create_network_protect_prefix_list {
    my ($self, %args) = @_;

    # verify the required parameter 'network_protect_prefix_list_create' is set
    unless (exists $args{'network_protect_prefix_list_create'}) {
      croak("Missing the required parameter 'network_protect_prefix_list_create' when calling create_network_protect_prefix_list");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/prefix-lists';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_prefix_list_create'}) {
        $_body_data = $args{'network_protect_prefix_list_create'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectPrefixListResponse', $response);
    return $_response_object;
}

#
# create_network_protect_rule_set
#
# Create a Network Protect rule set
#
# @param NetworkProtectRuleSetCreate $network_protect_rule_set_create  (required)
{
    my $params = {
    'network_protect_rule_set_create' => {
        data_type => 'NetworkProtectRuleSetCreate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_network_protect_rule_set' } = {
        summary => 'Create a Network Protect rule set',
        params => $params,
        returns => 'NetworkProtectRuleSetResponse',
        };
}
# @return NetworkProtectRuleSetResponse
#
sub create_network_protect_rule_set {
    my ($self, %args) = @_;

    # verify the required parameter 'network_protect_rule_set_create' is set
    unless (exists $args{'network_protect_rule_set_create'}) {
      croak("Missing the required parameter 'network_protect_rule_set_create' when calling create_network_protect_rule_set");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/rule-sets';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_rule_set_create'}) {
        $_body_data = $args{'network_protect_rule_set_create'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectRuleSetResponse', $response);
    return $_response_object;
}

#
# delete_network_protect_endpoint
#
# Delete a Network Protect endpoint
#
# @param string $endpoint_id Unique identifier of the Network Protect endpoint. (required)
{
    my $params = {
    'endpoint_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect endpoint.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_network_protect_endpoint' } = {
        summary => 'Delete a Network Protect endpoint',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_network_protect_endpoint {
    my ($self, %args) = @_;

    # verify the required parameter 'endpoint_id' is set
    unless (exists $args{'endpoint_id'}) {
      croak("Missing the required parameter 'endpoint_id' when calling delete_network_protect_endpoint");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/endpoints/{endpoint_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'endpoint_id'}) {
        my $_base_variable = "{" . "endpoint_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'endpoint_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_network_protect_network
#
# Delete a Network Protect network
#
# @param string $network_id Unique identifier of the Network Protect network. (required)
{
    my $params = {
    'network_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect network.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_network_protect_network' } = {
        summary => 'Delete a Network Protect network',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_network_protect_network {
    my ($self, %args) = @_;

    # verify the required parameter 'network_id' is set
    unless (exists $args{'network_id'}) {
      croak("Missing the required parameter 'network_id' when calling delete_network_protect_network");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/networks/{network_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'network_id'}) {
        my $_base_variable = "{" . "network_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'network_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_network_protect_prefix_list
#
# Delete a Network Protect prefix list
#
# @param string $prefix_list_id Unique identifier of the Network Protect prefix list. (required)
{
    my $params = {
    'prefix_list_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect prefix list.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_network_protect_prefix_list' } = {
        summary => 'Delete a Network Protect prefix list',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_network_protect_prefix_list {
    my ($self, %args) = @_;

    # verify the required parameter 'prefix_list_id' is set
    unless (exists $args{'prefix_list_id'}) {
      croak("Missing the required parameter 'prefix_list_id' when calling delete_network_protect_prefix_list");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/prefix-lists/{prefix_list_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'prefix_list_id'}) {
        my $_base_variable = "{" . "prefix_list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'prefix_list_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_network_protect_rule_set
#
# Delete a Network Protect rule set
#
# @param string $rule_set_id Unique identifier of the Network Protect rule set. (required)
{
    my $params = {
    'rule_set_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect rule set.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_network_protect_rule_set' } = {
        summary => 'Delete a Network Protect rule set',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_network_protect_rule_set {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_set_id' is set
    unless (exists $args{'rule_set_id'}) {
      croak("Missing the required parameter 'rule_set_id' when calling delete_network_protect_rule_set");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/rule-sets/{rule_set_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'rule_set_id'}) {
        my $_base_variable = "{" . "rule_set_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_set_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_network_protect_endpoint
#
# Get a Network Protect endpoint
#
# @param string $endpoint_id Unique identifier of the Network Protect endpoint. (required)
{
    my $params = {
    'endpoint_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect endpoint.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_network_protect_endpoint' } = {
        summary => 'Get a Network Protect endpoint',
        params => $params,
        returns => 'NetworkProtectEndpointResponse',
        };
}
# @return NetworkProtectEndpointResponse
#
sub get_network_protect_endpoint {
    my ($self, %args) = @_;

    # verify the required parameter 'endpoint_id' is set
    unless (exists $args{'endpoint_id'}) {
      croak("Missing the required parameter 'endpoint_id' when calling get_network_protect_endpoint");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/endpoints/{endpoint_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'endpoint_id'}) {
        my $_base_variable = "{" . "endpoint_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'endpoint_id'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectEndpointResponse', $response);
    return $_response_object;
}

#
# get_network_protect_network
#
# Get a Network Protect network
#
# @param string $network_id Unique identifier of the Network Protect network. (required)
{
    my $params = {
    'network_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect network.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_network_protect_network' } = {
        summary => 'Get a Network Protect network',
        params => $params,
        returns => 'NetworkProtectNetworkResponse',
        };
}
# @return NetworkProtectNetworkResponse
#
sub get_network_protect_network {
    my ($self, %args) = @_;

    # verify the required parameter 'network_id' is set
    unless (exists $args{'network_id'}) {
      croak("Missing the required parameter 'network_id' when calling get_network_protect_network");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/networks/{network_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'network_id'}) {
        my $_base_variable = "{" . "network_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'network_id'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectNetworkResponse', $response);
    return $_response_object;
}

#
# get_network_protect_prefix_list
#
# Get a Network Protect prefix list
#
# @param string $prefix_list_id Unique identifier of the Network Protect prefix list. (required)
{
    my $params = {
    'prefix_list_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect prefix list.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_network_protect_prefix_list' } = {
        summary => 'Get a Network Protect prefix list',
        params => $params,
        returns => 'NetworkProtectPrefixListResponse',
        };
}
# @return NetworkProtectPrefixListResponse
#
sub get_network_protect_prefix_list {
    my ($self, %args) = @_;

    # verify the required parameter 'prefix_list_id' is set
    unless (exists $args{'prefix_list_id'}) {
      croak("Missing the required parameter 'prefix_list_id' when calling get_network_protect_prefix_list");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/prefix-lists/{prefix_list_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'prefix_list_id'}) {
        my $_base_variable = "{" . "prefix_list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'prefix_list_id'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectPrefixListResponse', $response);
    return $_response_object;
}

#
# get_network_protect_rule_set
#
# Get a Network Protect rule set
#
# @param string $rule_set_id Unique identifier of the Network Protect rule set. (required)
{
    my $params = {
    'rule_set_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect rule set.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_network_protect_rule_set' } = {
        summary => 'Get a Network Protect rule set',
        params => $params,
        returns => 'NetworkProtectRuleSetResponse',
        };
}
# @return NetworkProtectRuleSetResponse
#
sub get_network_protect_rule_set {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_set_id' is set
    unless (exists $args{'rule_set_id'}) {
      croak("Missing the required parameter 'rule_set_id' when calling get_network_protect_rule_set");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/rule-sets/{rule_set_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'rule_set_id'}) {
        my $_base_variable = "{" . "rule_set_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_set_id'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectRuleSetResponse', $response);
    return $_response_object;
}

#
# list_network_protect_endpoints
#
# List Network Protect endpoints
#
# @param int $limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (optional, default to 100)
# @param string $cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_network_protect_endpoints' } = {
        summary => 'List Network Protect endpoints',
        params => $params,
        returns => 'NetworkProtectEndpointsResponse',
        };
}
# @return NetworkProtectEndpointsResponse
#
sub list_network_protect_endpoints {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/network-protect/v1/endpoints';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectEndpointsResponse', $response);
    return $_response_object;
}

#
# list_network_protect_networks
#
# List Network Protect networks
#
# @param int $limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (optional, default to 100)
# @param string $cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_network_protect_networks' } = {
        summary => 'List Network Protect networks',
        params => $params,
        returns => 'NetworkProtectNetworksResponse',
        };
}
# @return NetworkProtectNetworksResponse
#
sub list_network_protect_networks {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/network-protect/v1/networks';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectNetworksResponse', $response);
    return $_response_object;
}

#
# list_network_protect_prefix_lists
#
# List Network Protect prefix lists
#
# @param int $limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (optional, default to 100)
# @param string $cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_network_protect_prefix_lists' } = {
        summary => 'List Network Protect prefix lists',
        params => $params,
        returns => 'NetworkProtectPrefixListsResponse',
        };
}
# @return NetworkProtectPrefixListsResponse
#
sub list_network_protect_prefix_lists {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/network-protect/v1/prefix-lists';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectPrefixListsResponse', $response);
    return $_response_object;
}

#
# list_network_protect_rule_sets
#
# List Network Protect rule sets
#
# @param int $limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (optional, default to 100)
# @param string $cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_network_protect_rule_sets' } = {
        summary => 'List Network Protect rule sets',
        params => $params,
        returns => 'NetworkProtectRuleSetsResponse',
        };
}
# @return NetworkProtectRuleSetsResponse
#
sub list_network_protect_rule_sets {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/network-protect/v1/rule-sets';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectRuleSetsResponse', $response);
    return $_response_object;
}

#
# update_network_protect_endpoint
#
# Update a Network Protect endpoint
#
# @param string $endpoint_id Unique identifier of the Network Protect endpoint. (required)
# @param NetworkProtectEndpointUpdate $network_protect_endpoint_update  (required)
{
    my $params = {
    'endpoint_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect endpoint.',
        required => '1',
    },
    'network_protect_endpoint_update' => {
        data_type => 'NetworkProtectEndpointUpdate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_network_protect_endpoint' } = {
        summary => 'Update a Network Protect endpoint',
        params => $params,
        returns => 'NetworkProtectEndpointResponse',
        };
}
# @return NetworkProtectEndpointResponse
#
sub update_network_protect_endpoint {
    my ($self, %args) = @_;

    # verify the required parameter 'endpoint_id' is set
    unless (exists $args{'endpoint_id'}) {
      croak("Missing the required parameter 'endpoint_id' when calling update_network_protect_endpoint");
    }

    # verify the required parameter 'network_protect_endpoint_update' is set
    unless (exists $args{'network_protect_endpoint_update'}) {
      croak("Missing the required parameter 'network_protect_endpoint_update' when calling update_network_protect_endpoint");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/endpoints/{endpoint_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'endpoint_id'}) {
        my $_base_variable = "{" . "endpoint_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'endpoint_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_endpoint_update'}) {
        $_body_data = $args{'network_protect_endpoint_update'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectEndpointResponse', $response);
    return $_response_object;
}

#
# update_network_protect_network
#
# Update a Network Protect network
#
# @param string $network_id Unique identifier of the Network Protect network. (required)
# @param NetworkProtectNetworkUpdate $network_protect_network_update  (required)
{
    my $params = {
    'network_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect network.',
        required => '1',
    },
    'network_protect_network_update' => {
        data_type => 'NetworkProtectNetworkUpdate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_network_protect_network' } = {
        summary => 'Update a Network Protect network',
        params => $params,
        returns => 'NetworkProtectNetworkResponse',
        };
}
# @return NetworkProtectNetworkResponse
#
sub update_network_protect_network {
    my ($self, %args) = @_;

    # verify the required parameter 'network_id' is set
    unless (exists $args{'network_id'}) {
      croak("Missing the required parameter 'network_id' when calling update_network_protect_network");
    }

    # verify the required parameter 'network_protect_network_update' is set
    unless (exists $args{'network_protect_network_update'}) {
      croak("Missing the required parameter 'network_protect_network_update' when calling update_network_protect_network");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/networks/{network_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'network_id'}) {
        my $_base_variable = "{" . "network_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'network_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_network_update'}) {
        $_body_data = $args{'network_protect_network_update'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectNetworkResponse', $response);
    return $_response_object;
}

#
# update_network_protect_prefix_list
#
# Update a Network Protect prefix list
#
# @param string $prefix_list_id Unique identifier of the Network Protect prefix list. (required)
# @param NetworkProtectPrefixListUpdate $network_protect_prefix_list_update  (required)
{
    my $params = {
    'prefix_list_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect prefix list.',
        required => '1',
    },
    'network_protect_prefix_list_update' => {
        data_type => 'NetworkProtectPrefixListUpdate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_network_protect_prefix_list' } = {
        summary => 'Update a Network Protect prefix list',
        params => $params,
        returns => 'NetworkProtectPrefixListResponse',
        };
}
# @return NetworkProtectPrefixListResponse
#
sub update_network_protect_prefix_list {
    my ($self, %args) = @_;

    # verify the required parameter 'prefix_list_id' is set
    unless (exists $args{'prefix_list_id'}) {
      croak("Missing the required parameter 'prefix_list_id' when calling update_network_protect_prefix_list");
    }

    # verify the required parameter 'network_protect_prefix_list_update' is set
    unless (exists $args{'network_protect_prefix_list_update'}) {
      croak("Missing the required parameter 'network_protect_prefix_list_update' when calling update_network_protect_prefix_list");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/prefix-lists/{prefix_list_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'prefix_list_id'}) {
        my $_base_variable = "{" . "prefix_list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'prefix_list_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_prefix_list_update'}) {
        $_body_data = $args{'network_protect_prefix_list_update'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectPrefixListResponse', $response);
    return $_response_object;
}

#
# update_network_protect_rule_set
#
# Update a Network Protect rule set
#
# @param string $rule_set_id Unique identifier of the Network Protect rule set. (required)
# @param NetworkProtectRuleSetUpdate $network_protect_rule_set_update  (required)
{
    my $params = {
    'rule_set_id' => {
        data_type => 'string',
        description => 'Unique identifier of the Network Protect rule set.',
        required => '1',
    },
    'network_protect_rule_set_update' => {
        data_type => 'NetworkProtectRuleSetUpdate',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_network_protect_rule_set' } = {
        summary => 'Update a Network Protect rule set',
        params => $params,
        returns => 'NetworkProtectRuleSetResponse',
        };
}
# @return NetworkProtectRuleSetResponse
#
sub update_network_protect_rule_set {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_set_id' is set
    unless (exists $args{'rule_set_id'}) {
      croak("Missing the required parameter 'rule_set_id' when calling update_network_protect_rule_set");
    }

    # verify the required parameter 'network_protect_rule_set_update' is set
    unless (exists $args{'network_protect_rule_set_update'}) {
      croak("Missing the required parameter 'network_protect_rule_set_update' when calling update_network_protect_rule_set");
    }

    # parse inputs
    my $_resource_path = '/network-protect/v1/rule-sets/{rule_set_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'rule_set_id'}) {
        my $_base_variable = "{" . "rule_set_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_set_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'network_protect_rule_set_update'}) {
        $_body_data = $args{'network_protect_rule_set_update'};
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
    my $_response_object = $self->{api_client}->deserialize('NetworkProtectRuleSetResponse', $response);
    return $_response_object;
}

1;
