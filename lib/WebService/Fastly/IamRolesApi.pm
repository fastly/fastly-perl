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
package WebService::Fastly::IamRolesApi;

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
# iam_v1_roles_get
#
# Get IAM role by ID
#
# @param string $role_id Alphanumeric string identifying the role. (required)
# @param string $include Include related data (i.e., permissions). (optional)
{
    my $params = {
    'role_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the role.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related data (i.e., permissions).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'iam_v1_roles_get' } = {
        summary => 'Get IAM role by ID',
        params => $params,
        returns => 'IamV1RoleResponse',
        };
}
# @return IamV1RoleResponse
#
sub iam_v1_roles_get {
    my ($self, %args) = @_;

    # verify the required parameter 'role_id' is set
    unless (exists $args{'role_id'}) {
      croak("Missing the required parameter 'role_id' when calling iam_v1_roles_get");
    }

    # parse inputs
    my $_resource_path = '/iam/v1/roles/{role_id}';

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
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'role_id'}) {
        my $_base_variable = "{" . "role_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'role_id'});
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
    my $_response_object = $self->{api_client}->deserialize('IamV1RoleResponse', $response);
    return $_response_object;
}

#
# iam_v1_roles_list
#
# List IAM roles
#
# @param int $limit Number of results per page. The maximum is 1000. (optional, default to 100)
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Number of results per page. The maximum is 1000.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'iam_v1_roles_list' } = {
        summary => 'List IAM roles',
        params => $params,
        returns => 'IamV1RoleListResponse',
        };
}
# @return IamV1RoleListResponse
#
sub iam_v1_roles_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/iam/v1/roles';

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
    my $_response_object = $self->{api_client}->deserialize('IamV1RoleListResponse', $response);
    return $_response_object;
}

1;
