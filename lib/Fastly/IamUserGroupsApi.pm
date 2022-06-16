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
package Fastly::IamUserGroupsApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# delete_a_user_group
#
# Delete a user group
#
# @param string $user_group_id Alphanumeric string identifying the user group. (required)
{
    my $params = {
    'user_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user group.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_a_user_group' } = {
        summary => 'Delete a user group',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_a_user_group {
    my ($self, %args) = @_;

    # verify the required parameter 'user_group_id' is set
    unless (exists $args{'user_group_id'}) {
      croak("Missing the required parameter 'user_group_id' when calling delete_a_user_group");
    }

    # parse inputs
    my $_resource_path = '/user-groups/{user_group_id}';

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
    if ( exists $args{'user_group_id'}) {
        my $_base_variable = "{" . "user_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_group_id'});
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
# get_a_user_group
#
# Get a user group
#
# @param string $user_group_id Alphanumeric string identifying the user group. (required)
{
    my $params = {
    'user_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user group.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_a_user_group' } = {
        summary => 'Get a user group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_a_user_group {
    my ($self, %args) = @_;

    # verify the required parameter 'user_group_id' is set
    unless (exists $args{'user_group_id'}) {
      croak("Missing the required parameter 'user_group_id' when calling get_a_user_group");
    }

    # parse inputs
    my $_resource_path = '/user-groups/{user_group_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'user_group_id'}) {
        my $_base_variable = "{" . "user_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_group_id'});
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
# list_user_group_members
#
# List members of a user group
#
# @param string $user_group_id Alphanumeric string identifying the user group. (required)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param int $page Current page. (optional)
{
    my $params = {
    'user_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user group.',
        required => '1',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_user_group_members' } = {
        summary => 'List members of a user group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_user_group_members {
    my ($self, %args) = @_;

    # verify the required parameter 'user_group_id' is set
    unless (exists $args{'user_group_id'}) {
      croak("Missing the required parameter 'user_group_id' when calling list_user_group_members");
    }

    # parse inputs
    my $_resource_path = '/user-groups/{user_group_id}/members';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    if ( exists $args{'user_group_id'}) {
        my $_base_variable = "{" . "user_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_group_id'});
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
# list_user_group_roles
#
# List roles in a user group
#
# @param string $user_group_id Alphanumeric string identifying the user group. (required)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param int $page Current page. (optional)
{
    my $params = {
    'user_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user group.',
        required => '1',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_user_group_roles' } = {
        summary => 'List roles in a user group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_user_group_roles {
    my ($self, %args) = @_;

    # verify the required parameter 'user_group_id' is set
    unless (exists $args{'user_group_id'}) {
      croak("Missing the required parameter 'user_group_id' when calling list_user_group_roles");
    }

    # parse inputs
    my $_resource_path = '/user-groups/{user_group_id}/roles';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    if ( exists $args{'user_group_id'}) {
        my $_base_variable = "{" . "user_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_group_id'});
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
# list_user_group_service_groups
#
# List service groups in a user group
#
# @param string $user_group_id Alphanumeric string identifying the user group. (required)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param int $page Current page. (optional)
{
    my $params = {
    'user_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user group.',
        required => '1',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_user_group_service_groups' } = {
        summary => 'List service groups in a user group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_user_group_service_groups {
    my ($self, %args) = @_;

    # verify the required parameter 'user_group_id' is set
    unless (exists $args{'user_group_id'}) {
      croak("Missing the required parameter 'user_group_id' when calling list_user_group_service_groups");
    }

    # parse inputs
    my $_resource_path = '/user-groups/{user_group_id}/service-groups';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    if ( exists $args{'user_group_id'}) {
        my $_base_variable = "{" . "user_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_group_id'});
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
# list_user_groups
#
# List user groups
#
# @param int $per_page Number of records per page. (optional, default to 20)
# @param int $page Current page. (optional)
{
    my $params = {
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_user_groups' } = {
        summary => 'List user groups',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_user_groups {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user-groups';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;
