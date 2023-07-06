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
package WebService::Fastly::IamServiceGroupsApi;

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
# add_service_group_services
#
# Add services in a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_service_group_services' } = {
        summary => 'Add services in a service group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub add_service_group_services {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling add_service_group_services");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}/services';

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

    # path params
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# create_a_service_group
#
# Create a service group
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
    __PACKAGE__->method_documentation->{ 'create_a_service_group' } = {
        summary => 'Create a service group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_a_service_group {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-groups';

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
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# delete_a_service_group
#
# Delete a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_a_service_group' } = {
        summary => 'Delete a service group',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_a_service_group {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling delete_a_service_group");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}';

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
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
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
# get_a_service_group
#
# Get a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_a_service_group' } = {
        summary => 'Get a service group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_a_service_group {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling get_a_service_group");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}';

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
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
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
# list_service_group_services
#
# List services to a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param int $page Current page. (optional)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
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
    __PACKAGE__->method_documentation->{ 'list_service_group_services' } = {
        summary => 'List services to a service group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_service_group_services {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling list_service_group_services");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}/services';

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
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
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
# list_service_groups
#
# List service groups
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
    __PACKAGE__->method_documentation->{ 'list_service_groups' } = {
        summary => 'List service groups',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub list_service_groups {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-groups';

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

#
# remove_service_group_services
#
# Remove services from a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'remove_service_group_services' } = {
        summary => 'Remove services from a service group',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub remove_service_group_services {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling remove_service_group_services");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}/services';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
# update_a_service_group
#
# Update a service group
#
# @param string $service_group_id Alphanumeric string identifying the service group. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'service_group_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service group.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_a_service_group' } = {
        summary => 'Update a service group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_a_service_group {
    my ($self, %args) = @_;

    # verify the required parameter 'service_group_id' is set
    unless (exists $args{'service_group_id'}) {
      croak("Missing the required parameter 'service_group_id' when calling update_a_service_group");
    }

    # parse inputs
    my $_resource_path = '/service-groups/{service_group_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'service_group_id'}) {
        my $_base_variable = "{" . "service_group_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;
