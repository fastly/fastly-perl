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
package Fastly::ConditionApi;

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
# create_condition
#
# Create a condition
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $comment A freeform descriptive note. (optional)
# @param string $name Name of the condition. Required. (optional)
# @param string $priority A numeric string. Priority determines execution order. Lower numbers execute first. (optional, default to '100')
# @param string $statement A conditional expression in VCL used to determine if the condition is met. (optional)
# @param string $service_id  (optional)
# @param string $version A numeric string that represents the service version. (optional)
# @param string $type Type of the condition. Required. (optional)
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
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name of the condition. Required.',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'A numeric string. Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    'statement' => {
        data_type => 'string',
        description => 'A conditional expression in VCL used to determine if the condition is met.',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'version' => {
        data_type => 'string',
        description => 'A numeric string that represents the service version.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Type of the condition. Required.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_condition' } = {
        summary => 'Create a condition',
        params => $params,
        returns => 'ConditionResponse',
        };
}
# @return ConditionResponse
#
sub create_condition {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_condition");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_condition");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/condition';

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
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'priority'} ) {
                $form_params->{'priority'} = $self->{api_client}->to_form_value($args{'priority'});
    }

    # form params
    if ( exists $args{'statement'} ) {
                $form_params->{'statement'} = $self->{api_client}->to_form_value($args{'statement'});
    }

    # form params
    if ( exists $args{'service_id'} ) {
                $form_params->{'service_id'} = $self->{api_client}->to_form_value($args{'service_id'});
    }

    # form params
    if ( exists $args{'version'} ) {
                $form_params->{'version'} = $self->{api_client}->to_form_value($args{'version'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
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
    my $_response_object = $self->{api_client}->deserialize('ConditionResponse', $response);
    return $_response_object;
}

#
# delete_condition
#
# Delete a condition
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $condition_name Name of the condition. Required. (required)
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
    'condition_name' => {
        data_type => 'string',
        description => 'Name of the condition. Required.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_condition' } = {
        summary => 'Delete a condition',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_condition {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_condition");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_condition");
    }

    # verify the required parameter 'condition_name' is set
    unless (exists $args{'condition_name'}) {
      croak("Missing the required parameter 'condition_name' when calling delete_condition");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}';

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
    if ( exists $args{'condition_name'}) {
        my $_base_variable = "{" . "condition_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'condition_name'});
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
# get_condition
#
# Describe a condition
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $condition_name Name of the condition. Required. (required)
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
    'condition_name' => {
        data_type => 'string',
        description => 'Name of the condition. Required.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_condition' } = {
        summary => 'Describe a condition',
        params => $params,
        returns => 'ConditionResponse',
        };
}
# @return ConditionResponse
#
sub get_condition {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_condition");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_condition");
    }

    # verify the required parameter 'condition_name' is set
    unless (exists $args{'condition_name'}) {
      croak("Missing the required parameter 'condition_name' when calling get_condition");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}';

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
    if ( exists $args{'condition_name'}) {
        my $_base_variable = "{" . "condition_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'condition_name'});
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
    my $_response_object = $self->{api_client}->deserialize('ConditionResponse', $response);
    return $_response_object;
}

#
# list_conditions
#
# List conditions
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
    __PACKAGE__->method_documentation->{ 'list_conditions' } = {
        summary => 'List conditions',
        params => $params,
        returns => 'ARRAY[ConditionResponse]',
        };
}
# @return ARRAY[ConditionResponse]
#
sub list_conditions {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_conditions");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_conditions");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/condition';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConditionResponse]', $response);
    return $_response_object;
}

#
# update_condition
#
# Update a condition
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $condition_name Name of the condition. Required. (required)
# @param string $comment A freeform descriptive note. (optional)
# @param string $name Name of the condition. Required. (optional)
# @param string $priority A numeric string. Priority determines execution order. Lower numbers execute first. (optional, default to '100')
# @param string $statement A conditional expression in VCL used to determine if the condition is met. (optional)
# @param string $service_id  (optional)
# @param string $version A numeric string that represents the service version. (optional)
# @param string $type Type of the condition. Required. (optional)
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
    'condition_name' => {
        data_type => 'string',
        description => 'Name of the condition. Required.',
        required => '1',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name of the condition. Required.',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'A numeric string. Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    'statement' => {
        data_type => 'string',
        description => 'A conditional expression in VCL used to determine if the condition is met.',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'version' => {
        data_type => 'string',
        description => 'A numeric string that represents the service version.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Type of the condition. Required.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_condition' } = {
        summary => 'Update a condition',
        params => $params,
        returns => 'ConditionResponse',
        };
}
# @return ConditionResponse
#
sub update_condition {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_condition");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_condition");
    }

    # verify the required parameter 'condition_name' is set
    unless (exists $args{'condition_name'}) {
      croak("Missing the required parameter 'condition_name' when calling update_condition");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}';

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
    if ( exists $args{'condition_name'}) {
        my $_base_variable = "{" . "condition_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'condition_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'priority'} ) {
                $form_params->{'priority'} = $self->{api_client}->to_form_value($args{'priority'});
    }

    # form params
    if ( exists $args{'statement'} ) {
                $form_params->{'statement'} = $self->{api_client}->to_form_value($args{'statement'});
    }

    # form params
    if ( exists $args{'service_id'} ) {
                $form_params->{'service_id'} = $self->{api_client}->to_form_value($args{'service_id'});
    }

    # form params
    if ( exists $args{'version'} ) {
                $form_params->{'version'} = $self->{api_client}->to_form_value($args{'version'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
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
    my $_response_object = $self->{api_client}->deserialize('ConditionResponse', $response);
    return $_response_object;
}

1;
