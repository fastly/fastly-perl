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
package Fastly::UserApi;

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
# create_user
#
# Create a user
#
# @param string $login The login associated with the user (typically, an email address). (optional)
# @param string $name The real life name of the user. (optional)
# @param boolean $limit_services Indicates that the user has limited access to the customer&#39;s services. (optional)
# @param boolean $locked Indicates whether the is account is locked for editing or not. (optional)
# @param boolean $require_new_password Indicates if a new password is required at next login. (optional)
# @param RoleUser $role  (optional)
# @param boolean $two_factor_auth_enabled Indicates if 2FA is enabled on the user. (optional)
# @param boolean $two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account. (optional)
{
    my $params = {
    'login' => {
        data_type => 'string',
        description => 'The login associated with the user (typically, an email address).',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The real life name of the user.',
        required => '0',
    },
    'limit_services' => {
        data_type => 'boolean',
        description => 'Indicates that the user has limited access to the customer&#39;s services.',
        required => '0',
    },
    'locked' => {
        data_type => 'boolean',
        description => 'Indicates whether the is account is locked for editing or not.',
        required => '0',
    },
    'require_new_password' => {
        data_type => 'boolean',
        description => 'Indicates if a new password is required at next login.',
        required => '0',
    },
    'role' => {
        data_type => 'RoleUser',
        description => '',
        required => '0',
    },
    'two_factor_auth_enabled' => {
        data_type => 'boolean',
        description => 'Indicates if 2FA is enabled on the user.',
        required => '0',
    },
    'two_factor_setup_required' => {
        data_type => 'boolean',
        description => 'Indicates if 2FA is required by the user&#39;s customer account.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_user' } = {
        summary => 'Create a user',
        params => $params,
        returns => 'UserResponse',
        };
}
# @return UserResponse
#
sub create_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'login'} ) {
                $form_params->{'login'} = $self->{api_client}->to_form_value($args{'login'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'limit_services'} ) {
                $form_params->{'limit_services'} = $self->{api_client}->to_form_value($args{'limit_services'});
    }

    # form params
    if ( exists $args{'locked'} ) {
                $form_params->{'locked'} = $self->{api_client}->to_form_value($args{'locked'});
    }

    # form params
    if ( exists $args{'require_new_password'} ) {
                $form_params->{'require_new_password'} = $self->{api_client}->to_form_value($args{'require_new_password'});
    }

    # form params
    if ( exists $args{'role'} ) {
                $form_params->{'role'} = $self->{api_client}->to_form_value($args{'role'});
    }

    # form params
    if ( exists $args{'two_factor_auth_enabled'} ) {
                $form_params->{'two_factor_auth_enabled'} = $self->{api_client}->to_form_value($args{'two_factor_auth_enabled'});
    }

    # form params
    if ( exists $args{'two_factor_setup_required'} ) {
                $form_params->{'two_factor_setup_required'} = $self->{api_client}->to_form_value($args{'two_factor_setup_required'});
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
    my $_response_object = $self->{api_client}->deserialize('UserResponse', $response);
    return $_response_object;
}

#
# delete_user
#
# Delete a user
#
# @param string $user_id Alphanumeric string identifying the user. (required)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user' } = {
        summary => 'Delete a user',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling delete_user");
    }

    # parse inputs
    my $_resource_path = '/user/{user_id}';

    my $_method = 'DELETE';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DeleteAcl200Response', $response);
    return $_response_object;
}

#
# get_current_user
#
# Get the current user
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_current_user' } = {
        summary => 'Get the current user',
        params => $params,
        returns => 'UserResponse',
        };
}
# @return UserResponse
#
sub get_current_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/current_user';

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
    my $_response_object = $self->{api_client}->deserialize('UserResponse', $response);
    return $_response_object;
}

#
# get_user
#
# Get a user
#
# @param string $user_id Alphanumeric string identifying the user. (required)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user' } = {
        summary => 'Get a user',
        params => $params,
        returns => 'UserResponse',
        };
}
# @return UserResponse
#
sub get_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_user");
    }

    # parse inputs
    my $_resource_path = '/user/{user_id}';

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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserResponse', $response);
    return $_response_object;
}

#
# request_password_reset
#
# Request a password reset
#
# @param string $user_login The login associated with the user (typically, an email address). (required)
{
    my $params = {
    'user_login' => {
        data_type => 'string',
        description => 'The login associated with the user (typically, an email address).',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'request_password_reset' } = {
        summary => 'Request a password reset',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub request_password_reset {
    my ($self, %args) = @_;

    # verify the required parameter 'user_login' is set
    unless (exists $args{'user_login'}) {
      croak("Missing the required parameter 'user_login' when calling request_password_reset");
    }

    # parse inputs
    my $_resource_path = '/user/{user_login}/password/request_reset';

    my $_method = 'POST';
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
    if ( exists $args{'user_login'}) {
        my $_base_variable = "{" . "user_login" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_login'});
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
    my $_response_object = $self->{api_client}->deserialize('DeleteAcl200Response', $response);
    return $_response_object;
}

#
# update_user
#
# Update a user
#
# @param string $user_id Alphanumeric string identifying the user. (required)
# @param string $login The login associated with the user (typically, an email address). (optional)
# @param string $name The real life name of the user. (optional)
# @param boolean $limit_services Indicates that the user has limited access to the customer&#39;s services. (optional)
# @param boolean $locked Indicates whether the is account is locked for editing or not. (optional)
# @param boolean $require_new_password Indicates if a new password is required at next login. (optional)
# @param RoleUser $role  (optional)
# @param boolean $two_factor_auth_enabled Indicates if 2FA is enabled on the user. (optional)
# @param boolean $two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account. (optional)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the user.',
        required => '1',
    },
    'login' => {
        data_type => 'string',
        description => 'The login associated with the user (typically, an email address).',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The real life name of the user.',
        required => '0',
    },
    'limit_services' => {
        data_type => 'boolean',
        description => 'Indicates that the user has limited access to the customer&#39;s services.',
        required => '0',
    },
    'locked' => {
        data_type => 'boolean',
        description => 'Indicates whether the is account is locked for editing or not.',
        required => '0',
    },
    'require_new_password' => {
        data_type => 'boolean',
        description => 'Indicates if a new password is required at next login.',
        required => '0',
    },
    'role' => {
        data_type => 'RoleUser',
        description => '',
        required => '0',
    },
    'two_factor_auth_enabled' => {
        data_type => 'boolean',
        description => 'Indicates if 2FA is enabled on the user.',
        required => '0',
    },
    'two_factor_setup_required' => {
        data_type => 'boolean',
        description => 'Indicates if 2FA is required by the user&#39;s customer account.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user' } = {
        summary => 'Update a user',
        params => $params,
        returns => 'UserResponse',
        };
}
# @return UserResponse
#
sub update_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling update_user");
    }

    # parse inputs
    my $_resource_path = '/user/{user_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'login'} ) {
                $form_params->{'login'} = $self->{api_client}->to_form_value($args{'login'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'limit_services'} ) {
                $form_params->{'limit_services'} = $self->{api_client}->to_form_value($args{'limit_services'});
    }

    # form params
    if ( exists $args{'locked'} ) {
                $form_params->{'locked'} = $self->{api_client}->to_form_value($args{'locked'});
    }

    # form params
    if ( exists $args{'require_new_password'} ) {
                $form_params->{'require_new_password'} = $self->{api_client}->to_form_value($args{'require_new_password'});
    }

    # form params
    if ( exists $args{'role'} ) {
                $form_params->{'role'} = $self->{api_client}->to_form_value($args{'role'});
    }

    # form params
    if ( exists $args{'two_factor_auth_enabled'} ) {
                $form_params->{'two_factor_auth_enabled'} = $self->{api_client}->to_form_value($args{'two_factor_auth_enabled'});
    }

    # form params
    if ( exists $args{'two_factor_setup_required'} ) {
                $form_params->{'two_factor_setup_required'} = $self->{api_client}->to_form_value($args{'two_factor_setup_required'});
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
    my $_response_object = $self->{api_client}->deserialize('UserResponse', $response);
    return $_response_object;
}

#
# update_user_password
#
# Update the user's password
#
# @param string $old_password The user&#39;s current password. (optional)
# @param string $new_password The user&#39;s new password. (optional)
{
    my $params = {
    'old_password' => {
        data_type => 'string',
        description => 'The user&#39;s current password.',
        required => '0',
    },
    'new_password' => {
        data_type => 'string',
        description => 'The user&#39;s new password.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user_password' } = {
        summary => 'Update the user&#39;s password',
        params => $params,
        returns => 'UserResponse',
        };
}
# @return UserResponse
#
sub update_user_password {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/current_user/password';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'old_password'} ) {
                $form_params->{'old_password'} = $self->{api_client}->to_form_value($args{'old_password'});
    }

    # form params
    if ( exists $args{'new_password'} ) {
                $form_params->{'new_password'} = $self->{api_client}->to_form_value($args{'new_password'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(session_password_change )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserResponse', $response);
    return $_response_object;
}

1;
