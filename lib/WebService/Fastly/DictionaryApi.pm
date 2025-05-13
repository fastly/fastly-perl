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
package WebService::Fastly::DictionaryApi;

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
# create_dictionary
#
# Create a dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (optional)
# @param boolean $write_only Determines if items in the dictionary are readable or not. (optional, default to false)
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
        description => 'Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).',
        required => '0',
    },
    'write_only' => {
        data_type => 'boolean',
        description => 'Determines if items in the dictionary are readable or not.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dictionary' } = {
        summary => 'Create a dictionary',
        params => $params,
        returns => 'DictionaryResponse',
        };
}
# @return DictionaryResponse
#
sub create_dictionary {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_dictionary");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_dictionary");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/dictionary';

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

    # form params
    if ( exists $args{'write_only'} ) {
                $form_params->{'write_only'} = $self->{api_client}->to_form_value($args{'write_only'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryResponse', $response);
    return $_response_object;
}

#
# delete_dictionary
#
# Delete a dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
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
    'dictionary_name' => {
        data_type => 'string',
        description => 'Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dictionary' } = {
        summary => 'Delete a dictionary',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_dictionary {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_dictionary");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_dictionary");
    }

    # verify the required parameter 'dictionary_name' is set
    unless (exists $args{'dictionary_name'}) {
      croak("Missing the required parameter 'dictionary_name' when calling delete_dictionary");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}';

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
    if ( exists $args{'dictionary_name'}) {
        my $_base_variable = "{" . "dictionary_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_name'});
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
# get_dictionary
#
# Get a dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
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
    'dictionary_name' => {
        data_type => 'string',
        description => 'Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dictionary' } = {
        summary => 'Get a dictionary',
        params => $params,
        returns => 'DictionaryResponse',
        };
}
# @return DictionaryResponse
#
sub get_dictionary {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_dictionary");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_dictionary");
    }

    # verify the required parameter 'dictionary_name' is set
    unless (exists $args{'dictionary_name'}) {
      croak("Missing the required parameter 'dictionary_name' when calling get_dictionary");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}';

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
    if ( exists $args{'dictionary_name'}) {
        my $_base_variable = "{" . "dictionary_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_name'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryResponse', $response);
    return $_response_object;
}

#
# list_dictionaries
#
# List dictionaries
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
    __PACKAGE__->method_documentation->{ 'list_dictionaries' } = {
        summary => 'List dictionaries',
        params => $params,
        returns => 'ARRAY[DictionaryResponse]',
        };
}
# @return ARRAY[DictionaryResponse]
#
sub list_dictionaries {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_dictionaries");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_dictionaries");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/dictionary';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DictionaryResponse]', $response);
    return $_response_object;
}

#
# update_dictionary
#
# Update a dictionary
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
# @param string $name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (optional)
# @param boolean $write_only Determines if items in the dictionary are readable or not. (optional, default to false)
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
    'dictionary_name' => {
        data_type => 'string',
        description => 'Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).',
        required => '0',
    },
    'write_only' => {
        data_type => 'boolean',
        description => 'Determines if items in the dictionary are readable or not.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dictionary' } = {
        summary => 'Update a dictionary',
        params => $params,
        returns => 'DictionaryResponse',
        };
}
# @return DictionaryResponse
#
sub update_dictionary {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_dictionary");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_dictionary");
    }

    # verify the required parameter 'dictionary_name' is set
    unless (exists $args{'dictionary_name'}) {
      croak("Missing the required parameter 'dictionary_name' when calling update_dictionary");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}';

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
    if ( exists $args{'dictionary_name'}) {
        my $_base_variable = "{" . "dictionary_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dictionary_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'write_only'} ) {
                $form_params->{'write_only'} = $self->{api_client}->to_form_value($args{'write_only'});
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
    my $_response_object = $self->{api_client}->deserialize('DictionaryResponse', $response);
    return $_response_object;
}

1;
