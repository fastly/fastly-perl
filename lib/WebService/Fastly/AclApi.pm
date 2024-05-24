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
package WebService::Fastly::AclApi;

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
# create_acl
#
# Create a new ACL
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_acl' } = {
        summary => 'Create a new ACL',
        params => $params,
        returns => 'AclResponse',
        };
}
# @return AclResponse
#
sub create_acl {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_acl");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_acl");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/acl';

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

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('AclResponse', $response);
    return $_response_object;
}

#
# delete_acl
#
# Delete an ACL
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $acl_name Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'acl_name' => {
        data_type => 'string',
        description => 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_acl' } = {
        summary => 'Delete an ACL',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_acl {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_acl");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_acl");
    }

    # verify the required parameter 'acl_name' is set
    unless (exists $args{'acl_name'}) {
      croak("Missing the required parameter 'acl_name' when calling delete_acl");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/acl/{acl_name}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_name'}) {
        my $_base_variable = "{" . "acl_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_name'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# get_acl
#
# Describe an ACL
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $acl_name Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'acl_name' => {
        data_type => 'string',
        description => 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_acl' } = {
        summary => 'Describe an ACL',
        params => $params,
        returns => 'AclResponse',
        };
}
# @return AclResponse
#
sub get_acl {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_acl");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_acl");
    }

    # verify the required parameter 'acl_name' is set
    unless (exists $args{'acl_name'}) {
      croak("Missing the required parameter 'acl_name' when calling get_acl");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/acl/{acl_name}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_name'}) {
        my $_base_variable = "{" . "acl_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_name'});
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
    my $_response_object = $self->{api_client}->deserialize('AclResponse', $response);
    return $_response_object;
}

#
# list_acls
#
# List ACLs
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_acls' } = {
        summary => 'List ACLs',
        params => $params,
        returns => 'ARRAY[AclResponse]',
        };
}
# @return ARRAY[AclResponse]
#
sub list_acls {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_acls");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_acls");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/acl';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[AclResponse]', $response);
    return $_response_object;
}

#
# update_acl
#
# Update an ACL
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $acl_name Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. (required)
# @param string $name Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version_id' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '1',
    },
    'acl_name' => {
        data_type => 'string',
        description => 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_acl' } = {
        summary => 'Update an ACL',
        params => $params,
        returns => 'AclResponse',
        };
}
# @return AclResponse
#
sub update_acl {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_acl");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_acl");
    }

    # verify the required parameter 'acl_name' is set
    unless (exists $args{'acl_name'}) {
      croak("Missing the required parameter 'acl_name' when calling update_acl");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/acl/{acl_name}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_name'}) {
        my $_base_variable = "{" . "acl_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('AclResponse', $response);
    return $_response_object;
}

1;
