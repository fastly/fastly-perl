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
package WebService::Fastly::LegacyWafRuleStatusApi;

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
# get_waf_firewall_rule_status
#
# Get the status of a rule on a firewall
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
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
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_firewall_rule_status' } = {
        summary => 'Get the status of a rule on a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_waf_firewall_rule_status {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_waf_firewall_rule_status");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_firewall_rule_status");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_waf_firewall_rule_status");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status';

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
    if ( exists $args{'waf_rule_id'}) {
        my $_base_variable = "{" . "waf_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'waf_rule_id'});
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
# list_waf_firewall_rule_statuses
#
# List rule statuses
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $filter[status] Limit results to rule statuses with the specified status. (optional)
# @param string $filter[rule][message] Limit results to rule statuses whose rules have the specified message. (optional)
# @param string $filter[rule][rule_id] Limit results to rule statuses whose rules represent the specified ModSecurity rule_id. (optional)
# @param string $filter[rule][tags] Limit results to rule statuses whose rules relate to the specified tag IDs. (optional)
# @param string $filter[rule][tags][name] Limit results to rule statuses whose rules related to the named tags. (optional)
# @param string $include Include relationships. Optional, comma separated values. Permitted values: &#x60;tags&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
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
    'filter[status]' => {
        data_type => 'string',
        description => 'Limit results to rule statuses with the specified status.',
        required => '0',
    },
    'filter[rule][message]' => {
        data_type => 'string',
        description => 'Limit results to rule statuses whose rules have the specified message.',
        required => '0',
    },
    'filter[rule][rule_id]' => {
        data_type => 'string',
        description => 'Limit results to rule statuses whose rules represent the specified ModSecurity rule_id.',
        required => '0',
    },
    'filter[rule][tags]' => {
        data_type => 'string',
        description => 'Limit results to rule statuses whose rules relate to the specified tag IDs.',
        required => '0',
    },
    'filter[rule][tags][name]' => {
        data_type => 'string',
        description => 'Limit results to rule statuses whose rules related to the named tags.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma separated values. Permitted values: &#x60;tags&#x60;. ',
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
    __PACKAGE__->method_documentation->{ 'list_waf_firewall_rule_statuses' } = {
        summary => 'List rule statuses',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_waf_firewall_rule_statuses {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_waf_firewall_rule_statuses");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling list_waf_firewall_rule_statuses");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/rule_statuses';

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
    if ( exists $args{'filter[status]'}) {
        $query_params->{'filter[status]'} = $self->{api_client}->to_query_value($args{'filter[status]'});
    }

    # query params
    if ( exists $args{'filter[rule][message]'}) {
        $query_params->{'filter[rule][message]'} = $self->{api_client}->to_query_value($args{'filter[rule][message]'});
    }

    # query params
    if ( exists $args{'filter[rule][rule_id]'}) {
        $query_params->{'filter[rule][rule_id]'} = $self->{api_client}->to_query_value($args{'filter[rule][rule_id]'});
    }

    # query params
    if ( exists $args{'filter[rule][tags]'}) {
        $query_params->{'filter[rule][tags]'} = $self->{api_client}->to_query_value($args{'filter[rule][tags]'});
    }

    # query params
    if ( exists $args{'filter[rule][tags][name]'}) {
        $query_params->{'filter[rule][tags][name]'} = $self->{api_client}->to_query_value($args{'filter[rule][tags][name]'});
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

#
# update_waf_firewall_rule_status
#
# Update the status of a rule
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param HASH[string,object] $request_body  (optional)
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
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_firewall_rule_status' } = {
        summary => 'Update the status of a rule',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_waf_firewall_rule_status {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_waf_firewall_rule_status");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_firewall_rule_status");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling update_waf_firewall_rule_status");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status';

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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'waf_rule_id'}) {
        my $_base_variable = "{" . "waf_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'waf_rule_id'});
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
# update_waf_firewall_rule_statuses_tag
#
# Create or update status of a tagged group of rules
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $name The tag name to use to determine the set of rules to update. For example, OWASP or language-php. (optional)
# @param string $force Whether or not to update rule statuses for disabled rules. Optional. (optional)
# @param HASH[string,object] $request_body  (optional)
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
    'name' => {
        data_type => 'string',
        description => 'The tag name to use to determine the set of rules to update. For example, OWASP or language-php.',
        required => '0',
    },
    'force' => {
        data_type => 'string',
        description => 'Whether or not to update rule statuses for disabled rules. Optional.',
        required => '0',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_firewall_rule_statuses_tag' } = {
        summary => 'Create or update status of a tagged group of rules',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_waf_firewall_rule_statuses_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_waf_firewall_rule_statuses_tag");
    }

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_firewall_rule_statuses_tag");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/wafs/{firewall_id}/rule_statuses';

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

    # query params
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
    }

    # query params
    if ( exists $args{'force'}) {
        $query_params->{'force'} = $self->{api_client}->to_query_value($args{'force'});
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
