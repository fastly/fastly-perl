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
package Fastly::GzipApi;

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
# create_gzip_config
#
# Create a gzip configuration
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $content_types Space-separated list of content types to compress. If you omit this field a default list will be used. (optional)
# @param string $extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used. (optional)
# @param string $name Name of the gzip configuration. (optional)
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
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'content_types' => {
        data_type => 'string',
        description => 'Space-separated list of content types to compress. If you omit this field a default list will be used.',
        required => '0',
    },
    'extensions' => {
        data_type => 'string',
        description => 'Space-separated list of file extensions to compress. If you omit this field a default list will be used.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name of the gzip configuration.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_gzip_config' } = {
        summary => 'Create a gzip configuration',
        params => $params,
        returns => 'GzipResponse',
        };
}
# @return GzipResponse
#
sub create_gzip_config {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_gzip_config");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_gzip_config");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/gzip';

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
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'content_types'} ) {
                $form_params->{'content_types'} = $self->{api_client}->to_form_value($args{'content_types'});
    }

    # form params
    if ( exists $args{'extensions'} ) {
                $form_params->{'extensions'} = $self->{api_client}->to_form_value($args{'extensions'});
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
    my $_response_object = $self->{api_client}->deserialize('GzipResponse', $response);
    return $_response_object;
}

#
# delete_gzip_config
#
# Delete a gzip configuration
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $gzip_name Name of the gzip configuration. (required)
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
    'gzip_name' => {
        data_type => 'string',
        description => 'Name of the gzip configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_gzip_config' } = {
        summary => 'Delete a gzip configuration',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_gzip_config {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_gzip_config");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_gzip_config");
    }

    # verify the required parameter 'gzip_name' is set
    unless (exists $args{'gzip_name'}) {
      croak("Missing the required parameter 'gzip_name' when calling delete_gzip_config");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}';

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
    if ( exists $args{'gzip_name'}) {
        my $_base_variable = "{" . "gzip_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'gzip_name'});
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
# get_gzip_configs
#
# Get a gzip configuration
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $gzip_name Name of the gzip configuration. (required)
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
    'gzip_name' => {
        data_type => 'string',
        description => 'Name of the gzip configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_gzip_configs' } = {
        summary => 'Get a gzip configuration',
        params => $params,
        returns => 'GzipResponse',
        };
}
# @return GzipResponse
#
sub get_gzip_configs {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_gzip_configs");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_gzip_configs");
    }

    # verify the required parameter 'gzip_name' is set
    unless (exists $args{'gzip_name'}) {
      croak("Missing the required parameter 'gzip_name' when calling get_gzip_configs");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}';

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
    if ( exists $args{'gzip_name'}) {
        my $_base_variable = "{" . "gzip_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'gzip_name'});
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
    my $_response_object = $self->{api_client}->deserialize('GzipResponse', $response);
    return $_response_object;
}

#
# list_gzip_configs
#
# List gzip configurations
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
    __PACKAGE__->method_documentation->{ 'list_gzip_configs' } = {
        summary => 'List gzip configurations',
        params => $params,
        returns => 'ARRAY[GzipResponse]',
        };
}
# @return ARRAY[GzipResponse]
#
sub list_gzip_configs {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_gzip_configs");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_gzip_configs");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/gzip';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[GzipResponse]', $response);
    return $_response_object;
}

#
# update_gzip_config
#
# Update a gzip configuration
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $gzip_name Name of the gzip configuration. (required)
# @param string $cache_condition Name of the cache condition controlling when this configuration applies. (optional)
# @param string $content_types Space-separated list of content types to compress. If you omit this field a default list will be used. (optional)
# @param string $extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used. (optional)
# @param string $name Name of the gzip configuration. (optional)
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
    'gzip_name' => {
        data_type => 'string',
        description => 'Name of the gzip configuration.',
        required => '1',
    },
    'cache_condition' => {
        data_type => 'string',
        description => 'Name of the cache condition controlling when this configuration applies.',
        required => '0',
    },
    'content_types' => {
        data_type => 'string',
        description => 'Space-separated list of content types to compress. If you omit this field a default list will be used.',
        required => '0',
    },
    'extensions' => {
        data_type => 'string',
        description => 'Space-separated list of file extensions to compress. If you omit this field a default list will be used.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Name of the gzip configuration.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_gzip_config' } = {
        summary => 'Update a gzip configuration',
        params => $params,
        returns => 'GzipResponse',
        };
}
# @return GzipResponse
#
sub update_gzip_config {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_gzip_config");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_gzip_config");
    }

    # verify the required parameter 'gzip_name' is set
    unless (exists $args{'gzip_name'}) {
      croak("Missing the required parameter 'gzip_name' when calling update_gzip_config");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}';

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
    if ( exists $args{'gzip_name'}) {
        my $_base_variable = "{" . "gzip_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'gzip_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'cache_condition'} ) {
                $form_params->{'cache_condition'} = $self->{api_client}->to_form_value($args{'cache_condition'});
    }

    # form params
    if ( exists $args{'content_types'} ) {
                $form_params->{'content_types'} = $self->{api_client}->to_form_value($args{'content_types'});
    }

    # form params
    if ( exists $args{'extensions'} ) {
                $form_params->{'extensions'} = $self->{api_client}->to_form_value($args{'extensions'});
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
    my $_response_object = $self->{api_client}->deserialize('GzipResponse', $response);
    return $_response_object;
}

1;
