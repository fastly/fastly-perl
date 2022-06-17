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
package WebService::Fastly::WafRuleRevisionsApi;

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
# get_waf_rule_revision
#
# Get a revision of a rule
#
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param int $waf_rule_revision_number Revision number. (required)
# @param string $include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule&#x60;, &#x60;vcl&#x60;, and &#x60;source&#x60;. The &#x60;vcl&#x60; and &#x60;source&#x60; relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included.  (optional)
{
    my $params = {
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
        required => '1',
    },
    'waf_rule_revision_number' => {
        data_type => 'int',
        description => 'Revision number.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule&#x60;, &#x60;vcl&#x60;, and &#x60;source&#x60;. The &#x60;vcl&#x60; and &#x60;source&#x60; relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_waf_rule_revision' } = {
        summary => 'Get a revision of a rule',
        params => $params,
        returns => 'WafRuleRevisionResponse',
        };
}
# @return WafRuleRevisionResponse
#
sub get_waf_rule_revision {
    my ($self, %args) = @_;

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling get_waf_rule_revision");
    }

    # verify the required parameter 'waf_rule_revision_number' is set
    unless (exists $args{'waf_rule_revision_number'}) {
      croak("Missing the required parameter 'waf_rule_revision_number' when calling get_waf_rule_revision");
    }

    # parse inputs
    my $_resource_path = '/waf/rules/{waf_rule_id}/revisions/{waf_rule_revision_number}';

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
    if ( exists $args{'waf_rule_id'}) {
        my $_base_variable = "{" . "waf_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'waf_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'waf_rule_revision_number'}) {
        my $_base_variable = "{" . "waf_rule_revision_number" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'waf_rule_revision_number'});
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
    my $_response_object = $self->{api_client}->deserialize('WafRuleRevisionResponse', $response);
    return $_response_object;
}

#
# list_waf_rule_revisions
#
# List revisions for a rule
#
# @param string $waf_rule_id Alphanumeric string identifying a WAF rule. (required)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $include Include relationships. Optional. (optional, default to 'waf_rule')
{
    my $params = {
    'waf_rule_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a WAF rule.',
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
        description => 'Include relationships. Optional.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_waf_rule_revisions' } = {
        summary => 'List revisions for a rule',
        params => $params,
        returns => 'WafRuleRevisionsResponse',
        };
}
# @return WafRuleRevisionsResponse
#
sub list_waf_rule_revisions {
    my ($self, %args) = @_;

    # verify the required parameter 'waf_rule_id' is set
    unless (exists $args{'waf_rule_id'}) {
      croak("Missing the required parameter 'waf_rule_id' when calling list_waf_rule_revisions");
    }

    # parse inputs
    my $_resource_path = '/waf/rules/{waf_rule_id}/revisions';

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
    my $_response_object = $self->{api_client}->deserialize('WafRuleRevisionsResponse', $response);
    return $_response_object;
}

1;
