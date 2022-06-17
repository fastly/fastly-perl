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
package WebService::Fastly::DirectorBackendApi;

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
# create_director_backend
#
# Create a director-backend relationship
#
# @param string $director_name Name for the Director. (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
{
    my $params = {
    'director_name' => {
        data_type => 'string',
        description => 'Name for the Director.',
        required => '1',
    },
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_director_backend' } = {
        summary => 'Create a director-backend relationship',
        params => $params,
        returns => 'DirectorBackend',
        };
}
# @return DirectorBackend
#
sub create_director_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'director_name' is set
    unless (exists $args{'director_name'}) {
      croak("Missing the required parameter 'director_name' when calling create_director_backend");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_director_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_director_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling create_director_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}';

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
    if ( exists $args{'director_name'}) {
        my $_base_variable = "{" . "director_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'director_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
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
    my $_response_object = $self->{api_client}->deserialize('DirectorBackend', $response);
    return $_response_object;
}

#
# delete_director_backend
#
# Delete a director-backend relationship
#
# @param string $director_name Name for the Director. (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
{
    my $params = {
    'director_name' => {
        data_type => 'string',
        description => 'Name for the Director.',
        required => '1',
    },
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_director_backend' } = {
        summary => 'Delete a director-backend relationship',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_director_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'director_name' is set
    unless (exists $args{'director_name'}) {
      croak("Missing the required parameter 'director_name' when calling delete_director_backend");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_director_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_director_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling delete_director_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}';

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
    if ( exists $args{'director_name'}) {
        my $_base_variable = "{" . "director_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'director_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
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
# get_director_backend
#
# Get a director-backend relationship
#
# @param string $director_name Name for the Director. (required)
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $backend_name The name of the backend. (required)
{
    my $params = {
    'director_name' => {
        data_type => 'string',
        description => 'Name for the Director.',
        required => '1',
    },
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
    'backend_name' => {
        data_type => 'string',
        description => 'The name of the backend.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_director_backend' } = {
        summary => 'Get a director-backend relationship',
        params => $params,
        returns => 'DirectorBackend',
        };
}
# @return DirectorBackend
#
sub get_director_backend {
    my ($self, %args) = @_;

    # verify the required parameter 'director_name' is set
    unless (exists $args{'director_name'}) {
      croak("Missing the required parameter 'director_name' when calling get_director_backend");
    }

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_director_backend");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_director_backend");
    }

    # verify the required parameter 'backend_name' is set
    unless (exists $args{'backend_name'}) {
      croak("Missing the required parameter 'backend_name' when calling get_director_backend");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}';

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
    if ( exists $args{'director_name'}) {
        my $_base_variable = "{" . "director_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'director_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    if ( exists $args{'backend_name'}) {
        my $_base_variable = "{" . "backend_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'backend_name'});
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
    my $_response_object = $self->{api_client}->deserialize('DirectorBackend', $response);
    return $_response_object;
}

1;
