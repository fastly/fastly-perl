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
package WebService::Fastly::ApisecurityOperationsApi;

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
# api_security_create_operation
#
# Create operation
#
# @param string $service_id The unique identifier of the service. (required)
# @param OperationCreate $operation_create  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'operation_create' => {
        data_type => 'OperationCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_create_operation' } = {
        summary => 'Create operation',
        params => $params,
        returns => 'OperationGet',
        };
}
# @return OperationGet
#
sub api_security_create_operation {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_create_operation");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/operations';

    my $_method = 'POST';
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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'operation_create'}) {
        $_body_data = $args{'operation_create'};
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
    my $_response_object = $self->{api_client}->deserialize('OperationGet', $response);
    return $_response_object;
}

#
# api_security_create_operation_tag
#
# Create operation tag
#
# @param string $service_id The unique identifier of the service. (required)
# @param TagCreate $tag_create  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'tag_create' => {
        data_type => 'TagCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_create_operation_tag' } = {
        summary => 'Create operation tag',
        params => $params,
        returns => 'TagGet',
        };
}
# @return TagGet
#
sub api_security_create_operation_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_create_operation_tag");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/tags';

    my $_method = 'POST';
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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tag_create'}) {
        $_body_data = $args{'tag_create'};
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
    my $_response_object = $self->{api_client}->deserialize('TagGet', $response);
    return $_response_object;
}

#
# api_security_delete_operation
#
# Delete operation
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $operation_id The unique identifier of the operation. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'operation_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_delete_operation' } = {
        summary => 'Delete operation',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub api_security_delete_operation {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_delete_operation");
    }

    # verify the required parameter 'operation_id' is set
    unless (exists $args{'operation_id'}) {
      croak("Missing the required parameter 'operation_id' when calling api_security_delete_operation");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/operations/{operation_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'operation_id'}) {
        my $_base_variable = "{" . "operation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'operation_id'});
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
# api_security_delete_operation_tag
#
# Delete operation tag
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $tag_id The unique identifier of the operation tag. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'tag_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation tag.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_delete_operation_tag' } = {
        summary => 'Delete operation tag',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub api_security_delete_operation_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_delete_operation_tag");
    }

    # verify the required parameter 'tag_id' is set
    unless (exists $args{'tag_id'}) {
      croak("Missing the required parameter 'tag_id' when calling api_security_delete_operation_tag");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/tags/{tag_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tag_id'}) {
        my $_base_variable = "{" . "tag_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tag_id'});
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
# api_security_get_operation
#
# Retrieve operation
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $operation_id The unique identifier of the operation. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'operation_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_get_operation' } = {
        summary => 'Retrieve operation',
        params => $params,
        returns => 'OperationGet',
        };
}
# @return OperationGet
#
sub api_security_get_operation {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_get_operation");
    }

    # verify the required parameter 'operation_id' is set
    unless (exists $args{'operation_id'}) {
      croak("Missing the required parameter 'operation_id' when calling api_security_get_operation");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/operations/{operation_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'operation_id'}) {
        my $_base_variable = "{" . "operation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'operation_id'});
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
    my $_response_object = $self->{api_client}->deserialize('OperationGet', $response);
    return $_response_object;
}

#
# api_security_get_operation_tag
#
# Retrieve operation tag
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $tag_id The unique identifier of the operation tag. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'tag_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation tag.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_get_operation_tag' } = {
        summary => 'Retrieve operation tag',
        params => $params,
        returns => 'TagGet',
        };
}
# @return TagGet
#
sub api_security_get_operation_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_get_operation_tag");
    }

    # verify the required parameter 'tag_id' is set
    unless (exists $args{'tag_id'}) {
      croak("Missing the required parameter 'tag_id' when calling api_security_get_operation_tag");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/tags/{tag_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tag_id'}) {
        my $_base_variable = "{" . "tag_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tag_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TagGet', $response);
    return $_response_object;
}

#
# api_security_list_discovered_operations
#
# List discovered operations
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $status Filter operations by status. Only operations with this status will be returned. (optional)
# @param int $limit The maximum number of operations to return per page. (optional, default to 100)
# @param int $page The page number to return. (optional, default to 0)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'status' => {
        data_type => 'string',
        description => 'Filter operations by status. Only operations with this status will be returned.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The maximum number of operations to return per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The page number to return.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_list_discovered_operations' } = {
        summary => 'List discovered operations',
        params => $params,
        returns => 'InlineResponse2001',
        };
}
# @return InlineResponse2001
#
sub api_security_list_discovered_operations {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_list_discovered_operations");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/discovered-operations';

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
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2001', $response);
    return $_response_object;
}

#
# api_security_list_operation_tags
#
# List operation tags
#
# @param string $service_id The unique identifier of the service. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_list_operation_tags' } = {
        summary => 'List operation tags',
        params => $params,
        returns => 'InlineResponse2003',
        };
}
# @return InlineResponse2003
#
sub api_security_list_operation_tags {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_list_operation_tags");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/tags';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2003', $response);
    return $_response_object;
}

#
# api_security_list_operations
#
# List operations
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $tag_id Filter operations by operation tag ID. Only operations associated with this operation tag will be returned. (optional)
# @param int $limit The maximum number of operations to return per page. (optional, default to 100)
# @param int $page The page number to return. (optional, default to 0)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'tag_id' => {
        data_type => 'string',
        description => 'Filter operations by operation tag ID. Only operations associated with this operation tag will be returned.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The maximum number of operations to return per page.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The page number to return.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_list_operations' } = {
        summary => 'List operations',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub api_security_list_operations {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_list_operations");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/operations';

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
    if ( exists $args{'tag_id'}) {
        $query_params->{'tag_id'} = $self->{api_client}->to_query_value($args{'tag_id'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2002', $response);
    return $_response_object;
}

#
# api_security_update_operation
#
# Update operation
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $operation_id The unique identifier of the operation. (required)
# @param OperationUpdate $operation_update  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'operation_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation.',
        required => '1',
    },
    'operation_update' => {
        data_type => 'OperationUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_update_operation' } = {
        summary => 'Update operation',
        params => $params,
        returns => 'OperationGet',
        };
}
# @return OperationGet
#
sub api_security_update_operation {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_update_operation");
    }

    # verify the required parameter 'operation_id' is set
    unless (exists $args{'operation_id'}) {
      croak("Missing the required parameter 'operation_id' when calling api_security_update_operation");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/operations/{operation_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'operation_id'}) {
        my $_base_variable = "{" . "operation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'operation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'operation_update'}) {
        $_body_data = $args{'operation_update'};
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
    my $_response_object = $self->{api_client}->deserialize('OperationGet', $response);
    return $_response_object;
}

#
# api_security_update_operation_tag
#
# Update operation tag
#
# @param string $service_id The unique identifier of the service. (required)
# @param string $tag_id The unique identifier of the operation tag. (required)
# @param TagBase $body  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'The unique identifier of the service.',
        required => '1',
    },
    'tag_id' => {
        data_type => 'string',
        description => 'The unique identifier of the operation tag.',
        required => '1',
    },
    'body' => {
        data_type => 'TagBase',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'api_security_update_operation_tag' } = {
        summary => 'Update operation tag',
        params => $params,
        returns => 'TagGet',
        };
}
# @return TagGet
#
sub api_security_update_operation_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling api_security_update_operation_tag");
    }

    # verify the required parameter 'tag_id' is set
    unless (exists $args{'tag_id'}) {
      croak("Missing the required parameter 'tag_id' when calling api_security_update_operation_tag");
    }

    # parse inputs
    my $_resource_path = '/api-security/v1/services/{service_id}/tags/{tag_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tag_id'}) {
        my $_base_variable = "{" . "tag_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tag_id'});
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
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TagGet', $response);
    return $_response_object;
}

1;
