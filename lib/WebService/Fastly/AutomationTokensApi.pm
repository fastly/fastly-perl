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
package WebService::Fastly::AutomationTokensApi;

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
# create_automation_token
#
# Create Automation Token
#
# @param AutomationTokenCreateRequest $automation_token_create_request  (optional)
{
    my $params = {
    'automation_token_create_request' => {
        data_type => 'AutomationTokenCreateRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_automation_token' } = {
        summary => 'Create Automation Token',
        params => $params,
        returns => 'AutomationTokenCreateResponse',
        };
}
# @return AutomationTokenCreateResponse
#
sub create_automation_token {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/automation-tokens';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'automation_token_create_request'}) {
        $_body_data = $args{'automation_token_create_request'};
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
    my $_response_object = $self->{api_client}->deserialize('AutomationTokenCreateResponse', $response);
    return $_response_object;
}

#
# get_automation_token_id
#
# Retrieve an Automation Token by ID
#
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_automation_token_id' } = {
        summary => 'Retrieve an Automation Token by ID',
        params => $params,
        returns => 'AutomationTokenResponse',
        };
}
# @return AutomationTokenResponse
#
sub get_automation_token_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_automation_token_id");
    }

    # parse inputs
    my $_resource_path = '/automation-tokens/{id}';

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
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
    my $_response_object = $self->{api_client}->deserialize('AutomationTokenResponse', $response);
    return $_response_object;
}

#
# get_automation_tokens_id_services
#
# List Automation Token Services
#
# @param string $id  (required)
# @param int $per_page  (optional)
# @param int $page  (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'per_page' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_automation_tokens_id_services' } = {
        summary => 'List Automation Token Services',
        params => $params,
        returns => 'InlineResponse2004',
        };
}
# @return InlineResponse2004
#
sub get_automation_tokens_id_services {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_automation_tokens_id_services");
    }

    # parse inputs
    my $_resource_path = '/automation-tokens/{id}/services';

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
    if ( exists $args{'per_page'}) {
        $query_params->{'per_page'} = $self->{api_client}->to_query_value($args{'per_page'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2004', $response);
    return $_response_object;
}

#
# list_automation_tokens
#
# List Customer Automation Tokens
#
# @param int $per_page  (optional)
# @param int $page  (optional)
{
    my $params = {
    'per_page' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_automation_tokens' } = {
        summary => 'List Customer Automation Tokens',
        params => $params,
        returns => 'ARRAY[AutomationTokenResponse]',
        };
}
# @return ARRAY[AutomationTokenResponse]
#
sub list_automation_tokens {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/automation-tokens';

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
    if ( exists $args{'per_page'}) {
        $query_params->{'per_page'} = $self->{api_client}->to_query_value($args{'per_page'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[AutomationTokenResponse]', $response);
    return $_response_object;
}

#
# revoke_automation_token_id
#
# Revoke an Automation Token by ID
#
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'revoke_automation_token_id' } = {
        summary => 'Revoke an Automation Token by ID',
        params => $params,
        returns => 'AutomationTokenErrorResponse',
        };
}
# @return AutomationTokenErrorResponse
#
sub revoke_automation_token_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling revoke_automation_token_id");
    }

    # parse inputs
    my $_resource_path = '/automation-tokens/{id}';

    my $_method = 'DELETE';
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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
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
    my $_response_object = $self->{api_client}->deserialize('AutomationTokenErrorResponse', $response);
    return $_response_object;
}

1;
