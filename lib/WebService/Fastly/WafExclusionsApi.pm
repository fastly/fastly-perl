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
package WebService::Fastly::WafExclusionsApi;

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
# create_waf_rule_exclusion
#
# Create a WAF rule exclusion
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param WafExclusion $waf_exclusion  (optional)
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
    'waf_exclusion' => {
        data_type => 'WafExclusion',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_waf_rule_exclusion' } = {
        summary => 'Create a WAF rule exclusion',
        params => $params,
        returns => 'WafExclusionResponse',
        };
}
# @return WafExclusionResponse
#
sub create_waf_rule_exclusion {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling create_waf_rule_exclusion");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling create_waf_rule_exclusion");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions';

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

    # path params
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_exclusion'}) {
        $_body_data = $args{'waf_exclusion'};
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
    my $_response_object = $self->{api_client}->deserialize('WafExclusionResponse', $response);
    return $_response_object;
}

#
# delete_waf_rule_exclusion
#
# Delete a WAF rule exclusion
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param int $exclusion_number A numeric ID identifying a WAF exclusion. (required)
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
    'exclusion_number' => {
        data_type => 'int',
        description => 'A numeric ID identifying a WAF exclusion.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_waf_rule_exclusion' } = {
        summary => 'Delete a WAF rule exclusion',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_waf_rule_exclusion {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling delete_waf_rule_exclusion");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling delete_waf_rule_exclusion");
    }

    # verify the required parameter 'exclusion_number' is set
    unless (exists $args{'exclusion_number'}) {
      croak("Missing the required parameter 'exclusion_number' when calling delete_waf_rule_exclusion");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}';

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
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'exclusion_number'}) {
        my $_base_variable = "{" . "exclusion_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'exclusion_number'});
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
# get_waf_rule_exclusion
#
# Get a WAF rule exclusion
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param int $exclusion_number A numeric ID identifying a WAF exclusion. (required)
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
    'exclusion_number' => {
        data_type => 'int',
        description => 'A numeric ID identifying a WAF exclusion.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_rule_exclusion' } = {
        summary => 'Get a WAF rule exclusion',
        params => $params,
        returns => 'WafExclusionResponse',
        };
}
# @return WafExclusionResponse
#
sub get_waf_rule_exclusion {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling get_waf_rule_exclusion");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling get_waf_rule_exclusion");
    }

    # verify the required parameter 'exclusion_number' is set
    unless (exists $args{'exclusion_number'}) {
      croak("Missing the required parameter 'exclusion_number' when calling get_waf_rule_exclusion");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}';

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
    if ( exists $args{'firewall_version_number'}) {
        my $_base_variable = "{" . "firewall_version_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'firewall_version_number'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'exclusion_number'}) {
        my $_base_variable = "{" . "exclusion_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'exclusion_number'});
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
    my $_response_object = $self->{api_client}->deserialize('WafExclusionResponse', $response);
    return $_response_object;
}

#
# list_waf_rule_exclusions
#
# List WAF rule exclusions
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param string $filter[exclusion_type] Filters the results based on this exclusion type. (optional)
# @param string $filter[name] Filters the results based on name. (optional)
# @param int $filter[waf_rules/modsec_rule_id] Filters the results based on this ModSecurity rule ID. (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rules&#x60; and &#x60;waf_rule_revisions&#x60;.  (optional)
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
    'filter[exclusion_type]' => {
        data_type => 'string',
        description => 'Filters the results based on this exclusion type.',
        required => '0',
    },
    'filter[name]' => {
        data_type => 'string',
        description => 'Filters the results based on name.',
        required => '0',
    },
    'filter[waf_rules/modsec_rule_id]' => {
        data_type => 'int',
        description => 'Filters the results based on this ModSecurity rule ID.',
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
        description => 'Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rules&#x60; and &#x60;waf_rule_revisions&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_waf_rule_exclusions' } = {
        summary => 'List WAF rule exclusions',
        params => $params,
        returns => 'WafExclusionsResponse',
        };
}
# @return WafExclusionsResponse
#
sub list_waf_rule_exclusions {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling list_waf_rule_exclusions");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling list_waf_rule_exclusions");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions';

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
    if ( exists $args{'filter[exclusion_type]'}) {
        $query_params->{'filter[exclusion_type]'} = $self->{api_client}->to_query_value($args{'filter[exclusion_type]'});
    }

    # query params
    if ( exists $args{'filter[name]'}) {
        $query_params->{'filter[name]'} = $self->{api_client}->to_query_value($args{'filter[name]'});
    }

    # query params
    if ( exists $args{'filter[waf_rules/modsec_rule_id]'}) {
        $query_params->{'filter[waf_rules.modsec_rule_id]'} = $self->{api_client}->to_query_value($args{'filter[waf_rules/modsec_rule_id]'});
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
    my $_response_object = $self->{api_client}->deserialize('WafExclusionsResponse', $response);
    return $_response_object;
}

#
# update_waf_rule_exclusion
#
# Update a WAF rule exclusion
#
# @param string $firewall_id Alphanumeric string identifying a WAF Firewall. (required)
# @param int $firewall_version_number Integer identifying a WAF firewall version. (required)
# @param int $exclusion_number A numeric ID identifying a WAF exclusion. (required)
# @param WafExclusion $waf_exclusion  (optional)
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
    'exclusion_number' => {
        data_type => 'int',
        description => 'A numeric ID identifying a WAF exclusion.',
        required => '1',
    },
    'waf_exclusion' => {
        data_type => 'WafExclusion',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_waf_rule_exclusion' } = {
        summary => 'Update a WAF rule exclusion',
        params => $params,
        returns => 'WafExclusionResponse',
        };
}
# @return WafExclusionResponse
#
sub update_waf_rule_exclusion {
    my ($self, %args) = @_;

    # verify the required parameter 'firewall_id' is set
    unless (exists $args{'firewall_id'}) {
      croak("Missing the required parameter 'firewall_id' when calling update_waf_rule_exclusion");
    }

    # verify the required parameter 'firewall_version_number' is set
    unless (exists $args{'firewall_version_number'}) {
      croak("Missing the required parameter 'firewall_version_number' when calling update_waf_rule_exclusion");
    }

    # verify the required parameter 'exclusion_number' is set
    unless (exists $args{'exclusion_number'}) {
      croak("Missing the required parameter 'exclusion_number' when calling update_waf_rule_exclusion");
    }

    # parse inputs
    my $_resource_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}';

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

    # path params
    if ( exists $args{'exclusion_number'}) {
        my $_base_variable = "{" . "exclusion_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'exclusion_number'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'waf_exclusion'}) {
        $_body_data = $args{'waf_exclusion'};
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
    my $_response_object = $self->{api_client}->deserialize('WafExclusionResponse', $response);
    return $_response_object;
}

1;
