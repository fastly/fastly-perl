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
package WebService::Fastly::BotManagementApi;

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
# bot_management_get_bot
#
# Get a bot
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param string $category_id The ID of the bot category. (required)
# @param string $bot_id The ID of the bot. (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'category_id' => {
        data_type => 'string',
        description => 'The ID of the bot category.',
        required => '1',
    },
    'bot_id' => {
        data_type => 'string',
        description => 'The ID of the bot.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_get_bot' } = {
        summary => 'Get a bot',
        params => $params,
        returns => 'BotManagementBotResponse',
        };
}
# @return BotManagementBotResponse
#
sub bot_management_get_bot {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_get_bot");
    }

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling bot_management_get_bot");
    }

    # verify the required parameter 'bot_id' is set
    unless (exists $args{'bot_id'}) {
      croak("Missing the required parameter 'bot_id' when calling bot_management_get_bot");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'bot_id'}) {
        my $_base_variable = "{" . "bot_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'bot_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementBotResponse', $response);
    return $_response_object;
}

#
# bot_management_get_category
#
# Get a category
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param string $category_id The ID of the bot category. (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'category_id' => {
        data_type => 'string',
        description => 'The ID of the bot category.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_get_category' } = {
        summary => 'Get a category',
        params => $params,
        returns => 'BotManagementCategoryResponse',
        };
}
# @return BotManagementCategoryResponse
#
sub bot_management_get_category {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_get_category");
    }

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling bot_management_get_category");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementCategoryResponse', $response);
    return $_response_object;
}

#
# bot_management_get_workspace
#
# Get a workspace
#
# @param string $workspace_id The ID of the bot management workspace. (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_get_workspace' } = {
        summary => 'Get a workspace',
        params => $params,
        returns => 'BotManagementWorkspaceResponse',
        };
}
# @return BotManagementWorkspaceResponse
#
sub bot_management_get_workspace {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_get_workspace");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementWorkspaceResponse', $response);
    return $_response_object;
}

#
# bot_management_list_bots
#
# List all bots in a workspace
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results. (optional)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_list_bots' } = {
        summary => 'List all bots in a workspace',
        params => $params,
        returns => 'BotManagementWorkspaceBotsResponse',
        };
}
# @return BotManagementWorkspaceBotsResponse
#
sub bot_management_list_bots {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_list_bots");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/bots';

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

    # path params
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementWorkspaceBotsResponse', $response);
    return $_response_object;
}

#
# bot_management_list_categories
#
# List categories
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results. (optional)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_list_categories' } = {
        summary => 'List categories',
        params => $params,
        returns => 'BotManagementCategoriesResponse',
        };
}
# @return BotManagementCategoriesResponse
#
sub bot_management_list_categories {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_list_categories");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories';

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

    # path params
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementCategoriesResponse', $response);
    return $_response_object;
}

#
# bot_management_list_category_bots
#
# List bots in a category
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param string $category_id The ID of the bot category. (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results. (optional)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'category_id' => {
        data_type => 'string',
        description => 'The ID of the bot category.',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_list_category_bots' } = {
        summary => 'List bots in a category',
        params => $params,
        returns => 'BotManagementBotsResponse',
        };
}
# @return BotManagementBotsResponse
#
sub bot_management_list_category_bots {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_list_category_bots");
    }

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling bot_management_list_category_bots");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots';

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

    # path params
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementBotsResponse', $response);
    return $_response_object;
}

#
# bot_management_list_workspaces
#
# List workspaces
#
# @param string $service_id Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_list_workspaces' } = {
        summary => 'List workspaces',
        params => $params,
        returns => 'BotManagementWorkspacesResponse',
        };
}
# @return BotManagementWorkspacesResponse
#
sub bot_management_list_workspaces {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces';

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
    if ( exists $args{'service_id'}) {
        $query_params->{'service_id'} = $self->{api_client}->to_query_value($args{'service_id'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('BotManagementWorkspacesResponse', $response);
    return $_response_object;
}

#
# bot_management_update_bot
#
# Set a bot action
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param string $category_id The ID of the bot category. (required)
# @param string $bot_id The ID of the bot. (required)
# @param BotManagementBot $bot_management_bot  (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'category_id' => {
        data_type => 'string',
        description => 'The ID of the bot category.',
        required => '1',
    },
    'bot_id' => {
        data_type => 'string',
        description => 'The ID of the bot.',
        required => '1',
    },
    'bot_management_bot' => {
        data_type => 'BotManagementBot',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_update_bot' } = {
        summary => 'Set a bot action',
        params => $params,
        returns => 'BotManagementBotResponse',
        };
}
# @return BotManagementBotResponse
#
sub bot_management_update_bot {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_update_bot");
    }

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling bot_management_update_bot");
    }

    # verify the required parameter 'bot_id' is set
    unless (exists $args{'bot_id'}) {
      croak("Missing the required parameter 'bot_id' when calling bot_management_update_bot");
    }

    # verify the required parameter 'bot_management_bot' is set
    unless (exists $args{'bot_management_bot'}) {
      croak("Missing the required parameter 'bot_management_bot' when calling bot_management_update_bot");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'bot_id'}) {
        my $_base_variable = "{" . "bot_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'bot_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bot_management_bot'}) {
        $_body_data = $args{'bot_management_bot'};
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementBotResponse', $response);
    return $_response_object;
}

#
# bot_management_update_category
#
# Set a category action
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param string $category_id The ID of the bot category. (required)
# @param BotManagementCategory $bot_management_category  (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'category_id' => {
        data_type => 'string',
        description => 'The ID of the bot category.',
        required => '1',
    },
    'bot_management_category' => {
        data_type => 'BotManagementCategory',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_update_category' } = {
        summary => 'Set a category action',
        params => $params,
        returns => 'BotManagementCategoryResponse',
        };
}
# @return BotManagementCategoryResponse
#
sub bot_management_update_category {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_update_category");
    }

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling bot_management_update_category");
    }

    # verify the required parameter 'bot_management_category' is set
    unless (exists $args{'bot_management_category'}) {
      croak("Missing the required parameter 'bot_management_category' when calling bot_management_update_category");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bot_management_category'}) {
        $_body_data = $args{'bot_management_category'};
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementCategoryResponse', $response);
    return $_response_object;
}

#
# bot_management_update_workspace
#
# Update a workspace
#
# @param string $workspace_id The ID of the bot management workspace. (required)
# @param BotManagementWorkspace $bot_management_workspace  (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the bot management workspace.',
        required => '1',
    },
    'bot_management_workspace' => {
        data_type => 'BotManagementWorkspace',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bot_management_update_workspace' } = {
        summary => 'Update a workspace',
        params => $params,
        returns => 'BotManagementWorkspaceResponse',
        };
}
# @return BotManagementWorkspaceResponse
#
sub bot_management_update_workspace {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling bot_management_update_workspace");
    }

    # verify the required parameter 'bot_management_workspace' is set
    unless (exists $args{'bot_management_workspace'}) {
      croak("Missing the required parameter 'bot_management_workspace' when calling bot_management_update_workspace");
    }

    # parse inputs
    my $_resource_path = '/bot-management/v1/workspaces/{workspace_id}';

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
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bot_management_workspace'}) {
        $_body_data = $args{'bot_management_workspace'};
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
    my $_response_object = $self->{api_client}->deserialize('BotManagementWorkspaceResponse', $response);
    return $_response_object;
}

1;
