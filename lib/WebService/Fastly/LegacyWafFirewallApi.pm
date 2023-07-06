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
package WebService::Fastly::LegacyWafFirewallApi;

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
# create_legacy_waf_firewall_service
#
# Create a firewall
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param HASH[string,object] $request_body  (optional)
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
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_legacy_waf_firewall_service' } = {
        summary => 'Create a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_legacy_waf_firewall_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_legacy_waf_firewall_service");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_legacy_waf_firewall_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/wafs';

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

#
# disable_legacy_waf_firewall
#
# Disable a firewall
#
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'disable_legacy_waf_firewall' } = {
        summary => 'Disable a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub disable_legacy_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling disable_legacy_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/wafs/{firewall_id}/disable';

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

#
# enable_legacy_waf_firewall
#
# Enable a firewall
#
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'enable_legacy_waf_firewall' } = {
        summary => 'Enable a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub enable_legacy_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling enable_legacy_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/wafs/{firewall_id}/enable';

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

#
# get_legacy_waf_firewall
#
# Get a firewall object
#
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;, &#x60;rules&#x60;, &#x60;rule_statuses&#x60;.  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;, &#x60;rules&#x60;, &#x60;rule_statuses&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_legacy_waf_firewall' } = {
        summary => 'Get a firewall object',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_legacy_waf_firewall {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_legacy_waf_firewall");
    }

    # parse inputs
    my $_resource_path = '/wafs/{firewall_id}';

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
# get_legacy_waf_firewall_service
#
# Get a firewall
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
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
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_legacy_waf_firewall_service' } = {
        summary => 'Get a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_legacy_waf_firewall_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_legacy_waf_firewall_service");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_legacy_waf_firewall_service");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_legacy_waf_firewall_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/wafs/{firewall_id}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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

#
# list_legacy_waf_firewalls
#
# List active firewalls
#
# @param string $filter[rules][rule_id] Limit the returned firewalls to a specific rule ID. (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;.  (optional)
{
    my $params = {
    'filter[rules][rule_id]' => {
        data_type => 'string',
        description => 'Limit the returned firewalls to a specific rule ID.',
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
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_legacy_waf_firewalls' } = {
        summary => 'List active firewalls',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_legacy_waf_firewalls {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/wafs';

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
    if ( exists $args{'filter[rules][rule_id]'}) {
        $query_params->{'filter[rules][rule_id]'} = $self->{api_client}->to_query_value($args{'filter[rules][rule_id]'});
    }

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
# list_legacy_waf_firewalls_service
#
# List firewalls
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;.  (optional)
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
        description => 'Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_legacy_waf_firewalls_service' } = {
        summary => 'List firewalls',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_legacy_waf_firewalls_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_legacy_waf_firewalls_service");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_legacy_waf_firewalls_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/wafs';

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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# update_legacy_waf_firewall_service
#
# Update a firewall
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param HASH[string,object] $request_body  (optional)
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
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a Firewall.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_legacy_waf_firewall_service' } = {
        summary => 'Update a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_legacy_waf_firewall_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_legacy_waf_firewall_service");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_legacy_waf_firewall_service");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_legacy_waf_firewall_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/wafs/{firewall_id}';

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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
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
