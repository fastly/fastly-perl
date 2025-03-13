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
package WebService::Fastly::HeaderApi;

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
# create_header_object
#
# Create a Header object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $action Accepts a string value. (optional)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $dst Header to set. (optional)
# @param string $name A handle to refer to this Header object. (optional)
# @param string $regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions. (optional)
# @param string $request_condition Condition which, if met, will select this configuration during a request. Optional. (optional)
# @param string $response_condition Optional name of a response condition to apply. (optional)
# @param string $src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action. (optional)
# @param string $substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions. (optional)
# @param string $type Accepts a string value. (optional)
# @param string $ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true) (optional)
# @param string $priority Priority determines execution order. Lower numbers execute first. (optional, default to '100')
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
    'action' => {
        data_type => 'string',
        description => 'Accepts a string value.',
        required => '0',
    },
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'dst' => {
        data_type => 'string',
        description => 'Header to set.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'A handle to refer to this Header object.',
        required => '0',
    },
    'regex' => {
        data_type => 'string',
        description => 'Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'Optional name of a response condition to apply.',
        required => '0',
    },
    'src' => {
        data_type => 'string',
        description => 'Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.',
        required => '0',
    },
    'substitution' => {
        data_type => 'string',
        description => 'Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Accepts a string value.',
        required => '0',
    },
    'ignore_if_set' => {
        data_type => 'string',
        description => 'Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_header_object' } = {
        summary => 'Create a Header object',
        params => $params,
        returns => 'HeaderResponse',
        };
}
# @return HeaderResponse
#
sub create_header_object {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_header_object");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_header_object");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/header';

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
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'dst'} ) {
                $form_params->{'dst'} = $self->{api_client}->to_form_value($args{'dst'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'regex'} ) {
                $form_params->{'regex'} = $self->{api_client}->to_form_value($args{'regex'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'src'} ) {
                $form_params->{'src'} = $self->{api_client}->to_form_value($args{'src'});
    }

    # form params
    if ( exists $args{'substitution'} ) {
                $form_params->{'substitution'} = $self->{api_client}->to_form_value($args{'substitution'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'ignore_if_set'} ) {
                $form_params->{'ignore_if_set'} = $self->{api_client}->to_form_value($args{'ignore_if_set'});
    }

    # form params
    if ( exists $args{'priority'} ) {
                $form_params->{'priority'} = $self->{api_client}->to_form_value($args{'priority'});
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
    my $_response_object = $self->{api_client}->deserialize('HeaderResponse', $response);
    return $_response_object;
}

#
# delete_header_object
#
# Delete a Header object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $header_name A handle to refer to this Header object. (required)
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
    'header_name' => {
        data_type => 'string',
        description => 'A handle to refer to this Header object.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_header_object' } = {
        summary => 'Delete a Header object',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_header_object {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_header_object");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_header_object");
    }

    # verify the required parameter 'header_name' is set
    unless (exists $args{'header_name'}) {
      croak("Missing the required parameter 'header_name' when calling delete_header_object");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/header/{header_name}';

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
    if ( exists $args{'header_name'}) {
        my $_base_variable = "{" . "header_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'header_name'});
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
# get_header_object
#
# Get a Header object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $header_name A handle to refer to this Header object. (required)
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
    'header_name' => {
        data_type => 'string',
        description => 'A handle to refer to this Header object.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_header_object' } = {
        summary => 'Get a Header object',
        params => $params,
        returns => 'HeaderResponse',
        };
}
# @return HeaderResponse
#
sub get_header_object {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_header_object");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_header_object");
    }

    # verify the required parameter 'header_name' is set
    unless (exists $args{'header_name'}) {
      croak("Missing the required parameter 'header_name' when calling get_header_object");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/header/{header_name}';

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
    if ( exists $args{'header_name'}) {
        my $_base_variable = "{" . "header_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'header_name'});
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
    my $_response_object = $self->{api_client}->deserialize('HeaderResponse', $response);
    return $_response_object;
}

#
# list_header_objects
#
# List Header objects
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
    __PACKAGE__->method_documentation->{ 'list_header_objects' } = {
        summary => 'List Header objects',
        params => $params,
        returns => 'ARRAY[HeaderResponse]',
        };
}
# @return ARRAY[HeaderResponse]
#
sub list_header_objects {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_header_objects");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_header_objects");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/header';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[HeaderResponse]', $response);
    return $_response_object;
}

#
# update_header_object
#
# Update a Header object
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $header_name A handle to refer to this Header object. (required)
# @param string $action Accepts a string value. (optional)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $dst Header to set. (optional)
# @param string $name A handle to refer to this Header object. (optional)
# @param string $regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions. (optional)
# @param string $request_condition Condition which, if met, will select this configuration during a request. Optional. (optional)
# @param string $response_condition Optional name of a response condition to apply. (optional)
# @param string $src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action. (optional)
# @param string $substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions. (optional)
# @param string $type Accepts a string value. (optional)
# @param string $ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true) (optional)
# @param string $priority Priority determines execution order. Lower numbers execute first. (optional, default to '100')
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
    'header_name' => {
        data_type => 'string',
        description => 'A handle to refer to this Header object.',
        required => '1',
    },
    'action' => {
        data_type => 'string',
        description => 'Accepts a string value.',
        required => '0',
    },
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'dst' => {
        data_type => 'string',
        description => 'Header to set.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'A handle to refer to this Header object.',
        required => '0',
    },
    'regex' => {
        data_type => 'string',
        description => 'Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.',
        required => '0',
    },
    'request_condition' => {
        data_type => 'string',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'Optional name of a response condition to apply.',
        required => '0',
    },
    'src' => {
        data_type => 'string',
        description => 'Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.',
        required => '0',
    },
    'substitution' => {
        data_type => 'string',
        description => 'Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Accepts a string value.',
        required => '0',
    },
    'ignore_if_set' => {
        data_type => 'string',
        description => 'Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_header_object' } = {
        summary => 'Update a Header object',
        params => $params,
        returns => 'HeaderResponse',
        };
}
# @return HeaderResponse
#
sub update_header_object {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_header_object");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_header_object");
    }

    # verify the required parameter 'header_name' is set
    unless (exists $args{'header_name'}) {
      croak("Missing the required parameter 'header_name' when calling update_header_object");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/header/{header_name}';

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
    if ( exists $args{'header_name'}) {
        my $_base_variable = "{" . "header_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'header_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'action'} ) {
                $form_params->{'action'} = $self->{api_client}->to_form_value($args{'action'});
    }

    # form params
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'dst'} ) {
                $form_params->{'dst'} = $self->{api_client}->to_form_value($args{'dst'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'regex'} ) {
                $form_params->{'regex'} = $self->{api_client}->to_form_value($args{'regex'});
    }

    # form params
    if ( exists $args{'request_condition'} ) {
                $form_params->{'request_condition'} = $self->{api_client}->to_form_value($args{'request_condition'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'src'} ) {
                $form_params->{'src'} = $self->{api_client}->to_form_value($args{'src'});
    }

    # form params
    if ( exists $args{'substitution'} ) {
                $form_params->{'substitution'} = $self->{api_client}->to_form_value($args{'substitution'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'ignore_if_set'} ) {
                $form_params->{'ignore_if_set'} = $self->{api_client}->to_form_value($args{'ignore_if_set'});
    }

    # form params
    if ( exists $args{'priority'} ) {
                $form_params->{'priority'} = $self->{api_client}->to_form_value($args{'priority'});
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
    my $_response_object = $self->{api_client}->deserialize('HeaderResponse', $response);
    return $_response_object;
}

1;
