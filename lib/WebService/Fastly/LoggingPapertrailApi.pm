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
package WebService::Fastly::LoggingPapertrailApi;

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
# create_log_papertrail
#
# Create a Papertrail log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 514)
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
        description => 'The name for the real-time logging configuration.',
        required => '0',
    },
    'placement' => {
        data_type => 'string',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        required => '0',
    },
    'format' => {
        data_type => 'string',
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname or IPv4 address.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'The port number.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_log_papertrail' } = {
        summary => 'Create a Papertrail log endpoint',
        params => $params,
        returns => 'LoggingPapertrailResponse',
        };
}
# @return LoggingPapertrailResponse
#
sub create_log_papertrail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_log_papertrail");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_log_papertrail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/papertrail';

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
    if ( exists $args{'placement'} ) {
                $form_params->{'placement'} = $self->{api_client}->to_form_value($args{'placement'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'format'} ) {
                $form_params->{'format'} = $self->{api_client}->to_form_value($args{'format'});
    }

    # form params
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingPapertrailResponse', $response);
    return $_response_object;
}

#
# delete_log_papertrail
#
# Delete a Papertrail log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_papertrail_name The name for the real-time logging configuration. (required)
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
    'logging_papertrail_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_log_papertrail' } = {
        summary => 'Delete a Papertrail log endpoint',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_log_papertrail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_log_papertrail");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_log_papertrail");
    }

    # verify the required parameter 'logging_papertrail_name' is set
    unless (exists $args{'logging_papertrail_name'}) {
      croak("Missing the required parameter 'logging_papertrail_name' when calling delete_log_papertrail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}';

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
    if ( exists $args{'logging_papertrail_name'}) {
        my $_base_variable = "{" . "logging_papertrail_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_papertrail_name'});
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
# get_log_papertrail
#
# Get a Papertrail log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_papertrail_name The name for the real-time logging configuration. (required)
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
    'logging_papertrail_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_log_papertrail' } = {
        summary => 'Get a Papertrail log endpoint',
        params => $params,
        returns => 'LoggingPapertrailResponse',
        };
}
# @return LoggingPapertrailResponse
#
sub get_log_papertrail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_log_papertrail");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_log_papertrail");
    }

    # verify the required parameter 'logging_papertrail_name' is set
    unless (exists $args{'logging_papertrail_name'}) {
      croak("Missing the required parameter 'logging_papertrail_name' when calling get_log_papertrail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}';

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
    if ( exists $args{'logging_papertrail_name'}) {
        my $_base_variable = "{" . "logging_papertrail_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_papertrail_name'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingPapertrailResponse', $response);
    return $_response_object;
}

#
# list_log_papertrail
#
# List Papertrail log endpoints
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
    __PACKAGE__->method_documentation->{ 'list_log_papertrail' } = {
        summary => 'List Papertrail log endpoints',
        params => $params,
        returns => 'ARRAY[LoggingPapertrailResponse]',
        };
}
# @return ARRAY[LoggingPapertrailResponse]
#
sub list_log_papertrail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_log_papertrail");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_log_papertrail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/papertrail';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[LoggingPapertrailResponse]', $response);
    return $_response_object;
}

#
# update_log_papertrail
#
# Update a Papertrail log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_papertrail_name The name for the real-time logging configuration. (required)
# @param string $name The name for the real-time logging configuration. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (optional, default to '%h %l %u %t "%r" %&gt;s %b')
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $address A hostname or IPv4 address. (optional)
# @param int $port The port number. (optional, default to 514)
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
    'logging_papertrail_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '0',
    },
    'placement' => {
        data_type => 'string',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        required => '0',
    },
    'response_condition' => {
        data_type => 'string',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        required => '0',
    },
    'format' => {
        data_type => 'string',
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
    },
    'address' => {
        data_type => 'string',
        description => 'A hostname or IPv4 address.',
        required => '0',
    },
    'port' => {
        data_type => 'int',
        description => 'The port number.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_log_papertrail' } = {
        summary => 'Update a Papertrail log endpoint',
        params => $params,
        returns => 'LoggingPapertrailResponse',
        };
}
# @return LoggingPapertrailResponse
#
sub update_log_papertrail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_log_papertrail");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_log_papertrail");
    }

    # verify the required parameter 'logging_papertrail_name' is set
    unless (exists $args{'logging_papertrail_name'}) {
      croak("Missing the required parameter 'logging_papertrail_name' when calling update_log_papertrail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}';

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
    if ( exists $args{'logging_papertrail_name'}) {
        my $_base_variable = "{" . "logging_papertrail_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_papertrail_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'placement'} ) {
                $form_params->{'placement'} = $self->{api_client}->to_form_value($args{'placement'});
    }

    # form params
    if ( exists $args{'response_condition'} ) {
                $form_params->{'response_condition'} = $self->{api_client}->to_form_value($args{'response_condition'});
    }

    # form params
    if ( exists $args{'format'} ) {
                $form_params->{'format'} = $self->{api_client}->to_form_value($args{'format'});
    }

    # form params
    if ( exists $args{'format_version'} ) {
                $form_params->{'format_version'} = $self->{api_client}->to_form_value($args{'format_version'});
    }

    # form params
    if ( exists $args{'address'} ) {
                $form_params->{'address'} = $self->{api_client}->to_form_value($args{'address'});
    }

    # form params
    if ( exists $args{'port'} ) {
                $form_params->{'port'} = $self->{api_client}->to_form_value($args{'port'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingPapertrailResponse', $response);
    return $_response_object;
}

1;
