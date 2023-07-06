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
package WebService::Fastly::TokensApi;

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
# bulk_revoke_tokens
#
# Revoke multiple tokens
#
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_revoke_tokens' } = {
        summary => 'Revoke multiple tokens',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_revoke_tokens {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tokens';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json; ext=bulk');

    my $_body_data;
    # body params
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
# create_token
#
# Create a token
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'create_token' } = {
        summary => 'Create a token',
        params => $params,
        returns => 'TokenCreatedResponse',
        };
}
# @return TokenCreatedResponse
#
sub create_token {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tokens';

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

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token username_and_password )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TokenCreatedResponse', $response);
    return $_response_object;
}

#
# get_token
#
# Get a token
#
# @param string $token_id Alphanumeric string identifying a token. (required)
{
    my $params = {
    'token_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_token' } = {
        summary => 'Get a token',
        params => $params,
        returns => 'TokenResponse',
        };
}
# @return TokenResponse
#
sub get_token {
    my ($self, %args) = @_;

    # verify the required parameter 'token_id' is set
    unless (exists $args{'token_id'}) {
      croak("Missing the required parameter 'token_id' when calling get_token");
    }

    # parse inputs
    my $_resource_path = '/tokens/{token_id}';

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
    if ( exists $args{'token_id'}) {
        my $_base_variable = "{" . "token_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'token_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TokenResponse', $response);
    return $_response_object;
}

#
# get_token_current
#
# Get the current token
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_token_current' } = {
        summary => 'Get the current token',
        params => $params,
        returns => 'TokenResponse',
        };
}
# @return TokenResponse
#
sub get_token_current {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tokens/self';

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
    my $_response_object = $self->{api_client}->deserialize('TokenResponse', $response);
    return $_response_object;
}

#
# list_tokens_customer
#
# List tokens for a customer
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_tokens_customer' } = {
        summary => 'List tokens for a customer',
        params => $params,
        returns => 'ARRAY[TokenResponse]',
        };
}
# @return ARRAY[TokenResponse]
#
sub list_tokens_customer {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling list_tokens_customer");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/tokens';

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
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[TokenResponse]', $response);
    return $_response_object;
}

#
# list_tokens_user
#
# List tokens for the authenticated user
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_tokens_user' } = {
        summary => 'List tokens for the authenticated user',
        params => $params,
        returns => 'ARRAY[TokenResponse]',
        };
}
# @return ARRAY[TokenResponse]
#
sub list_tokens_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tokens';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[TokenResponse]', $response);
    return $_response_object;
}

#
# revoke_token
#
# Revoke a token
#
# @param string $token_id Alphanumeric string identifying a token. (required)
{
    my $params = {
    'token_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'revoke_token' } = {
        summary => 'Revoke a token',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub revoke_token {
    my ($self, %args) = @_;

    # verify the required parameter 'token_id' is set
    unless (exists $args{'token_id'}) {
      croak("Missing the required parameter 'token_id' when calling revoke_token");
    }

    # parse inputs
    my $_resource_path = '/tokens/{token_id}';

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
    if ( exists $args{'token_id'}) {
        my $_base_variable = "{" . "token_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'token_id'});
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
# revoke_token_current
#
# Revoke the current token
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'revoke_token_current' } = {
        summary => 'Revoke the current token',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub revoke_token_current {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tokens/self';

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

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
