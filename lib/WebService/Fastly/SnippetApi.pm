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
package WebService::Fastly::SnippetApi;

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
# create_snippet
#
# Create a snippet
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name for the snippet. (optional)
# @param int $dynamic Sets the snippet version. (optional)
# @param string $type The location in generated VCL where the snippet should be placed. (optional)
# @param string $content The VCL code that specifies exactly what the snippet does. (optional)
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
    'name' => {
        data_type => 'string',
        description => 'The name for the snippet.',
        required => '0',
    },
    'dynamic' => {
        data_type => 'int',
        description => 'Sets the snippet version.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'The location in generated VCL where the snippet should be placed.',
        required => '0',
    },
    'content' => {
        data_type => 'string',
        description => 'The VCL code that specifies exactly what the snippet does.',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_snippet' } = {
        summary => 'Create a snippet',
        params => $params,
        returns => 'SnippetResponse',
        };
}
# @return SnippetResponse
#
sub create_snippet {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_snippet");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_snippet");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/snippet';

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
    if ( exists $args{'dynamic'} ) {
                $form_params->{'dynamic'} = $self->{api_client}->to_form_value($args{'dynamic'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'content'} ) {
                $form_params->{'content'} = $self->{api_client}->to_form_value($args{'content'});
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
    my $_response_object = $self->{api_client}->deserialize('SnippetResponse', $response);
    return $_response_object;
}

#
# delete_snippet
#
# Delete a snippet
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $snippet_name The name for the snippet. (required)
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
    'snippet_name' => {
        data_type => 'string',
        description => 'The name for the snippet.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_snippet' } = {
        summary => 'Delete a snippet',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_snippet {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_snippet");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_snippet");
    }

    # verify the required parameter 'snippet_name' is set
    unless (exists $args{'snippet_name'}) {
      croak("Missing the required parameter 'snippet_name' when calling delete_snippet");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/snippet/{snippet_name}';

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
    if ( exists $args{'snippet_name'}) {
        my $_base_variable = "{" . "snippet_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'snippet_name'});
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
# get_snippet
#
# Get a versioned snippet
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $snippet_name The name for the snippet. (required)
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
    'snippet_name' => {
        data_type => 'string',
        description => 'The name for the snippet.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_snippet' } = {
        summary => 'Get a versioned snippet',
        params => $params,
        returns => 'SnippetResponse',
        };
}
# @return SnippetResponse
#
sub get_snippet {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_snippet");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_snippet");
    }

    # verify the required parameter 'snippet_name' is set
    unless (exists $args{'snippet_name'}) {
      croak("Missing the required parameter 'snippet_name' when calling get_snippet");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/snippet/{snippet_name}';

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
    if ( exists $args{'snippet_name'}) {
        my $_base_variable = "{" . "snippet_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'snippet_name'});
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
    my $_response_object = $self->{api_client}->deserialize('SnippetResponse', $response);
    return $_response_object;
}

#
# get_snippet_dynamic
#
# Get a dynamic snippet
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $snippet_id Alphanumeric string identifying a VCL Snippet. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'snippet_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a VCL Snippet.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_snippet_dynamic' } = {
        summary => 'Get a dynamic snippet',
        params => $params,
        returns => 'SnippetResponse',
        };
}
# @return SnippetResponse
#
sub get_snippet_dynamic {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_snippet_dynamic");
    }

    # verify the required parameter 'snippet_id' is set
    unless (exists $args{'snippet_id'}) {
      croak("Missing the required parameter 'snippet_id' when calling get_snippet_dynamic");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/snippet/{snippet_id}';

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
    if ( exists $args{'snippet_id'}) {
        my $_base_variable = "{" . "snippet_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'snippet_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SnippetResponse', $response);
    return $_response_object;
}

#
# list_snippets
#
# List snippets
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
    __PACKAGE__->method_documentation->{ 'list_snippets' } = {
        summary => 'List snippets',
        params => $params,
        returns => 'ARRAY[SnippetResponse]',
        };
}
# @return ARRAY[SnippetResponse]
#
sub list_snippets {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_snippets");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_snippets");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/snippet';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SnippetResponse]', $response);
    return $_response_object;
}

#
# update_snippet_dynamic
#
# Update a dynamic snippet
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $snippet_id Alphanumeric string identifying a VCL Snippet. (required)
# @param string $name The name for the snippet. (optional)
# @param int $dynamic Sets the snippet version. (optional)
# @param string $type The location in generated VCL where the snippet should be placed. (optional)
# @param string $content The VCL code that specifies exactly what the snippet does. (optional)
# @param string $priority Priority determines execution order. Lower numbers execute first. (optional, default to '100')
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'snippet_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a VCL Snippet.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The name for the snippet.',
        required => '0',
    },
    'dynamic' => {
        data_type => 'int',
        description => 'Sets the snippet version.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'The location in generated VCL where the snippet should be placed.',
        required => '0',
    },
    'content' => {
        data_type => 'string',
        description => 'The VCL code that specifies exactly what the snippet does.',
        required => '0',
    },
    'priority' => {
        data_type => 'string',
        description => 'Priority determines execution order. Lower numbers execute first.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_snippet_dynamic' } = {
        summary => 'Update a dynamic snippet',
        params => $params,
        returns => 'SnippetResponse',
        };
}
# @return SnippetResponse
#
sub update_snippet_dynamic {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_snippet_dynamic");
    }

    # verify the required parameter 'snippet_id' is set
    unless (exists $args{'snippet_id'}) {
      croak("Missing the required parameter 'snippet_id' when calling update_snippet_dynamic");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/snippet/{snippet_id}';

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
    if ( exists $args{'snippet_id'}) {
        my $_base_variable = "{" . "snippet_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'snippet_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'dynamic'} ) {
                $form_params->{'dynamic'} = $self->{api_client}->to_form_value($args{'dynamic'});
    }

    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }

    # form params
    if ( exists $args{'content'} ) {
                $form_params->{'content'} = $self->{api_client}->to_form_value($args{'content'});
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
    my $_response_object = $self->{api_client}->deserialize('SnippetResponse', $response);
    return $_response_object;
}

1;
