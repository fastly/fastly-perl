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
package WebService::Fastly::LegacyWafRuleApi;

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
# get_legacy_waf_firewall_rule_vcl
#
# Get VCL for a rule associated with a firewall
#
# @param string $firewall_id Alphanumeric string identifying a Firewall. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
{
    my $params = {
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
    __PACKAGE__->method_documentation->{ 'get_legacy_waf_firewall_rule_vcl' } = {
        summary => 'Get VCL for a rule associated with a firewall',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_legacy_waf_firewall_rule_vcl {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_legacy_waf_firewall_rule_vcl");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_legacy_waf_firewall_rule_vcl");
    }

    # parse inputs
    my $_resource_path = '/wafs/{firewall_id}/rules/{waf_rule_id}/vcl';

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
# get_legacy_waf_rule
#
# Get a rule
#
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param string $filter[configuration_set_id] Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. (optional)
# @param string $include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, &#x60;source&#x60;, and &#x60;vcl&#x60;.  (optional)
{
    my $params = {
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    'filter[configuration_set_id]' => {
        data_type => 'string',
        description => 'Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, &#x60;source&#x60;, and &#x60;vcl&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_legacy_waf_rule' } = {
        summary => 'Get a rule',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_legacy_waf_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_legacy_waf_rule");
    }

    # parse inputs
    my $_resource_path = '/wafs/rules/{waf_rule_id}';

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
    if ( exists $args{'filter[configuration_set_id]'}) {
        $query_params->{'filter[configuration_set_id]'} = $self->{api_client}->to_query_value($args{'filter[configuration_set_id]'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
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
# get_legacy_waf_rule_vcl
#
# Get VCL for a rule
#
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
{
    my $params = {
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_legacy_waf_rule_vcl' } = {
        summary => 'Get VCL for a rule',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_legacy_waf_rule_vcl {
    my ($self, %args) = @_;

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_legacy_waf_rule_vcl");
    }

    # parse inputs
    my $_resource_path = '/wafs/rules/{waf_rule_id}/vcl';

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
# list_legacy_waf_rules
#
# List rules in the latest configuration set
#
# @param string $filter[rule_id] Limit the returned rules to a specific rule ID. (optional)
# @param string $filter[severity] Limit the returned rules to a specific severity. (optional)
# @param string $filter[tags][name] Limit the returned rules to a set linked to a tag by name. (optional)
# @param string $filter[configuration_set_id] Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, and &#x60;source&#x60;.  (optional)
{
    my $params = {
    'filter[rule_id]' => {
        data_type => 'string',
        description => 'Limit the returned rules to a specific rule ID.',
        required => '0',
    },
    'filter[severity]' => {
        data_type => 'string',
        description => 'Limit the returned rules to a specific severity.',
        required => '0',
    },
    'filter[tags][name]' => {
        data_type => 'string',
        description => 'Limit the returned rules to a set linked to a tag by name.',
        required => '0',
    },
    'filter[configuration_set_id]' => {
        data_type => 'string',
        description => 'Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.',
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
        description => 'Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, and &#x60;source&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_legacy_waf_rules' } = {
        summary => 'List rules in the latest configuration set',
        params => $params,
        returns => 'ARRAY[object]',
        };
}
# @return ARRAY[object]
#
sub list_legacy_waf_rules {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/wafs/rules';

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
    if ( exists $args{'filter[rule_id]'}) {
        $query_params->{'filter[rule_id]'} = $self->{api_client}->to_query_value($args{'filter[rule_id]'});
    }

    # query params
    if ( exists $args{'filter[severity]'}) {
        $query_params->{'filter[severity]'} = $self->{api_client}->to_query_value($args{'filter[severity]'});
    }

    # query params
    if ( exists $args{'filter[tags][name]'}) {
        $query_params->{'filter[tags][name]'} = $self->{api_client}->to_query_value($args{'filter[tags][name]'});
    }

    # query params
    if ( exists $args{'filter[configuration_set_id]'}) {
        $query_params->{'filter[configuration_set_id]'} = $self->{api_client}->to_query_value($args{'filter[configuration_set_id]'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[object]', $response);
    return $_response_object;
}

1;
