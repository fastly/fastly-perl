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
package WebService::Fastly::WafActiveRulesApi;

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
# bulk_update_waf_active_rules
#
# Update multiple active rules
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param WafActiveRuleData $body  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'body' => {
        data_type => 'WafActiveRuleData',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_update_waf_active_rules' } = {
        summary => 'Update multiple active rules',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_update_waf_active_rules {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling bulk_update_waf_active_rules");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling bulk_update_waf_active_rules");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/bulk';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
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
# create_waf_active_rule
#
# Add a rule to a WAF as an active rule
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param WafActiveRule $waf_active_rule  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'waf_active_rule' => {
        data_type => 'WafActiveRule',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_waf_active_rule' } = {
        summary => 'Add a rule to a WAF as an active rule',
        params => $params,
        returns => 'WafActiveRuleCreationResponse',
        };
}
# @return WafActiveRuleCreationResponse
#
sub create_waf_active_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling create_waf_active_rule");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_waf_active_rule");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json', 'application/vnd.api+json; ext=bulk');

    # path params
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
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
    if ( exists $args{'waf_active_rule'}) {
        $_body_data = $args{'waf_active_rule'};
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
    my $_response_object = $self->{api_client}->deserialize('WafActiveRuleCreationResponse', $response);
    return $_response_object;
}

#
# create_waf_active_rules_tag
#
# Create active rules by tag
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $waf_tag_name Name of the tag. (required)
# @param WafActiveRule $waf_active_rule  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'waf_tag_name' => {
        data_type => 'string',
        description => 'Name of the tag.',
        required => '1',
    },
    'waf_active_rule' => {
        data_type => 'WafActiveRule',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_waf_active_rules_tag' } = {
        summary => 'Create active rules by tag',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_waf_active_rules_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling create_waf_active_rules_tag");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_waf_active_rules_tag");
    }

    # verify the required parameter 'waf_tag_name' is set
    unless (exists $args{'waf_tag_name'}) {
      croak("Missing the required parameter 'waf_tag_name' when calling create_waf_active_rules_tag");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/tags/{waf_tag_name}/active-rules';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'waf_tag_name'}) {
        my $_base_variable = "{" . "waf_tag_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'waf_tag_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_active_rule'}) {
        $_body_data = $args{'waf_active_rule'};
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
# delete_waf_active_rule
#
# Delete an active rule
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_waf_active_rule' } = {
        summary => 'Delete an active rule',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_waf_active_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling delete_waf_active_rule");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_waf_active_rule");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling delete_waf_active_rule");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_waf_active_rule
#
# Get an active WAF rule object
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param string $include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;.  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_active_rule' } = {
        summary => 'Get an active WAF rule object',
        params => $params,
        returns => 'WafActiveRuleResponse',
        };
}
# @return WafActiveRuleResponse
#
sub get_waf_active_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_active_rule");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_waf_active_rule");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_waf_active_rule");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WafActiveRuleResponse', $response);
    return $_response_object;
}

#
# list_waf_active_rules
#
# List active rules on a WAF
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $filter[status] Limit results to active rules with the specified status. (optional)
# @param string $filter[waf_rule_revision][message] Limit results to active rules with the specified message. (optional)
# @param string $filter[waf_rule_revision][modsec_rule_id] Limit results to active rules that represent the specified ModSecurity modsec_rule_id. (optional)
# @param string $filter[outdated] Limit results to active rules referencing an outdated rule revision. (optional)
# @param string $include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'filter[status]' => {
        data_type => 'string',
        description => 'Limit results to active rules with the specified status.',
        required => '0',
    },
    'filter[waf_rule_revision][message]' => {
        data_type => 'string',
        description => 'Limit results to active rules with the specified message.',
        required => '0',
    },
    'filter[waf_rule_revision][modsec_rule_id]' => {
        data_type => 'string',
        description => 'Limit results to active rules that represent the specified ModSecurity modsec_rule_id.',
        required => '0',
    },
    'filter[outdated]' => {
        data_type => 'string',
        description => 'Limit results to active rules referencing an outdated rule revision.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. ',
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
    __PACKAGE__->method_documentation->{ 'list_waf_active_rules' } = {
        summary => 'List active rules on a WAF',
        params => $params,
        returns => 'WafActiveRulesResponse',
        };
}
# @return WafActiveRulesResponse
#
sub list_waf_active_rules {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling list_waf_active_rules");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_waf_active_rules");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules';

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
    if ( exists $args{'filter[waf_rule_revision][message]'}) {
        $query_params->{'filter[waf_rule_revision][message]'} = $self->{api_client}->to_query_value($args{'filter[waf_rule_revision][message]'});
    }

    # query params
    if ( exists $args{'filter[waf_rule_revision][modsec_rule_id]'}) {
        $query_params->{'filter[waf_rule_revision][modsec_rule_id]'} = $self->{api_client}->to_query_value($args{'filter[waf_rule_revision][modsec_rule_id]'});
    }

    # query params
    if ( exists $args{'filter[outdated]'}) {
        $query_params->{'filter[outdated]'} = $self->{api_client}->to_query_value($args{'filter[outdated]'});
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
    if ( exists $args{'firewall_id'}) {
        my $_base_variable = "{" . "firewall_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WafActiveRulesResponse', $response);
    return $_response_object;
}

#
# update_waf_active_rule
#
# Update an active rule
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param WafActiveRule $waf_active_rule  (optional)
{
    my $params = {
    'firewall_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF Firewall.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    'waf_active_rule' => {
        data_type => 'WafActiveRule',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_active_rule' } = {
        summary => 'Update an active rule',
        params => $params,
        returns => 'WafActiveRuleResponse',
        };
}
# @return WafActiveRuleResponse
#
sub update_waf_active_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_active_rule");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_waf_active_rule");
    }

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling update_waf_active_rule");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}';

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
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    if ( exists $args{'waf_active_rule'}) {
        $_body_data = $args{'waf_active_rule'};
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
    my $_response_object = $self->{api_client}->deserialize('WafActiveRuleResponse', $response);
    return $_response_object;
}

1;
