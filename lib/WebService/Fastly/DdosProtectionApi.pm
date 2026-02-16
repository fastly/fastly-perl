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
package WebService::Fastly::DdosProtectionApi;

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
# ddos_protection_event_get
#
# Get event by ID
#
# @param string $event_id Unique ID of the event. (required)
{
    my $params = {
    'event_id' => {
        data_type => 'string',
        description => 'Unique ID of the event.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_event_get' } = {
        summary => 'Get event by ID',
        params => $params,
        returns => 'DdosProtectionEvent',
        };
}
# @return DdosProtectionEvent
#
sub ddos_protection_event_get {
    my ($self, %args) = @_;

    # verify the required parameter 'event_id' is set
    unless (exists $args{'event_id'}) {
      croak("Missing the required parameter 'event_id' when calling ddos_protection_event_get");
    }

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/events/{event_id}';

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
    if ( exists $args{'event_id'}) {
        my $_base_variable = "{" . "event_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DdosProtectionEvent', $response);
    return $_response_object;
}

#
# ddos_protection_event_list
#
# Get events
#
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
# @param string $service_id Filter results based on a service_id. (optional)
# @param DateTime $from Represents the start of a date-time range expressed in RFC 3339 format. (optional)
# @param DateTime $to Represents the end of a date-time range expressed in RFC 3339 format. (optional)
# @param string $name  (optional)
{
    my $params = {
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Filter results based on a service_id.',
        required => '0',
    },
    'from' => {
        data_type => 'DateTime',
        description => 'Represents the start of a date-time range expressed in RFC 3339 format.',
        required => '0',
    },
    'to' => {
        data_type => 'DateTime',
        description => 'Represents the end of a date-time range expressed in RFC 3339 format.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_event_list' } = {
        summary => 'Get events',
        params => $params,
        returns => 'InlineResponse2005',
        };
}
# @return InlineResponse2005
#
sub ddos_protection_event_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/events';

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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'service_id'}) {
        $query_params->{'service_id'} = $self->{api_client}->to_query_value($args{'service_id'});
    }

    # query params
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2005', $response);
    return $_response_object;
}

#
# ddos_protection_event_rule_list
#
# Get all rules for an event
#
# @param string $event_id Unique ID of the event. (required)
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
# @param string $include Include relationships. Optional. Comma-separated values. (optional)
{
    my $params = {
    'event_id' => {
        data_type => 'string',
        description => 'Unique ID of the event.',
        required => '1',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include relationships. Optional. Comma-separated values.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_event_rule_list' } = {
        summary => 'Get all rules for an event',
        params => $params,
        returns => 'InlineResponse2006',
        };
}
# @return InlineResponse2006
#
sub ddos_protection_event_rule_list {
    my ($self, %args) = @_;

    # verify the required parameter 'event_id' is set
    unless (exists $args{'event_id'}) {
      croak("Missing the required parameter 'event_id' when calling ddos_protection_event_rule_list");
    }

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/events/{event_id}/rules';

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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'event_id'}) {
        my $_base_variable = "{" . "event_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2006', $response);
    return $_response_object;
}

#
# ddos_protection_rule_get
#
# Get a rule by ID
#
# @param string $rule_id Unique ID of the rule. (required)
{
    my $params = {
    'rule_id' => {
        data_type => 'string',
        description => 'Unique ID of the rule.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_rule_get' } = {
        summary => 'Get a rule by ID',
        params => $params,
        returns => 'DdosProtectionRule',
        };
}
# @return DdosProtectionRule
#
sub ddos_protection_rule_get {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling ddos_protection_rule_get");
    }

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/rules/{rule_id}';

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
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DdosProtectionRule', $response);
    return $_response_object;
}

#
# ddos_protection_rule_patch
#
# Update rule
#
# @param string $rule_id Unique ID of the rule. (required)
# @param DdosProtectionRulePatch $ddos_protection_rule_patch  (optional)
{
    my $params = {
    'rule_id' => {
        data_type => 'string',
        description => 'Unique ID of the rule.',
        required => '1',
    },
    'ddos_protection_rule_patch' => {
        data_type => 'DdosProtectionRulePatch',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_rule_patch' } = {
        summary => 'Update rule',
        params => $params,
        returns => 'DdosProtectionRule',
        };
}
# @return DdosProtectionRule
#
sub ddos_protection_rule_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling ddos_protection_rule_patch");
    }

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/rules/{rule_id}';

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
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ddos_protection_rule_patch'}) {
        $_body_data = $args{'ddos_protection_rule_patch'};
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
    my $_response_object = $self->{api_client}->deserialize('DdosProtectionRule', $response);
    return $_response_object;
}

#
# ddos_protection_traffic_stats_rule_get
#
# Get traffic stats for a rule
#
# @param string $event_id Unique ID of the event. (required)
# @param string $rule_id Unique ID of the rule. (required)
{
    my $params = {
    'event_id' => {
        data_type => 'string',
        description => 'Unique ID of the event.',
        required => '1',
    },
    'rule_id' => {
        data_type => 'string',
        description => 'Unique ID of the rule.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ddos_protection_traffic_stats_rule_get' } = {
        summary => 'Get traffic stats for a rule',
        params => $params,
        returns => 'DdosProtectionTrafficStats',
        };
}
# @return DdosProtectionTrafficStats
#
sub ddos_protection_traffic_stats_rule_get {
    my ($self, %args) = @_;

    # verify the required parameter 'event_id' is set
    unless (exists $args{'event_id'}) {
      croak("Missing the required parameter 'event_id' when calling ddos_protection_traffic_stats_rule_get");
    }

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling ddos_protection_traffic_stats_rule_get");
    }

    # parse inputs
    my $_resource_path = '/ddos-protection/v1/events/{event_id}/rules/{rule_id}/traffic-stats';

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
    if ( exists $args{'event_id'}) {
        my $_base_variable = "{" . "event_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DdosProtectionTrafficStats', $response);
    return $_response_object;
}

1;
