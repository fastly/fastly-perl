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
package WebService::Fastly::LoggingBigqueryApi;

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
# create_log_bigquery
#
# Create a BigQuery log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $name The name of the BigQuery logging object. Used as a primary key for API access. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. (optional)
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $user Your Google Cloud Platform service account email address. The &#x60;client_email&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified. (optional)
# @param string $secret_key Your Google Cloud Platform account secret key. The &#x60;private_key&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified. (optional)
# @param string $account_name The name of the Google Cloud Platform service account associated with the target log collection service. Not required if &#x60;user&#x60; and &#x60;secret_key&#x60; are provided. (optional)
# @param string $dataset Your BigQuery dataset. (optional)
# @param string $table Your BigQuery table. (optional)
# @param string $template_suffix BigQuery table name suffix template. Optional. (optional)
# @param string $project_id Your Google Cloud Platform project ID. Required (optional)
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
        description => 'The name of the BigQuery logging object. Used as a primary key for API access.',
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
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
    },
    'user' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform service account email address. The &#x60;client_email&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified.',
        required => '0',
    },
    'secret_key' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform account secret key. The &#x60;private_key&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified.',
        required => '0',
    },
    'account_name' => {
        data_type => 'string',
        description => 'The name of the Google Cloud Platform service account associated with the target log collection service. Not required if &#x60;user&#x60; and &#x60;secret_key&#x60; are provided.',
        required => '0',
    },
    'dataset' => {
        data_type => 'string',
        description => 'Your BigQuery dataset.',
        required => '0',
    },
    'table' => {
        data_type => 'string',
        description => 'Your BigQuery table.',
        required => '0',
    },
    'template_suffix' => {
        data_type => 'string',
        description => 'BigQuery table name suffix template. Optional.',
        required => '0',
    },
    'project_id' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform project ID. Required',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_log_bigquery' } = {
        summary => 'Create a BigQuery log endpoint',
        params => $params,
        returns => 'LoggingBigqueryResponse',
        };
}
# @return LoggingBigqueryResponse
#
sub create_log_bigquery {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_log_bigquery");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling create_log_bigquery");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/bigquery';

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
    if ( exists $args{'user'} ) {
                $form_params->{'user'} = $self->{api_client}->to_form_value($args{'user'});
    }

    # form params
    if ( exists $args{'secret_key'} ) {
                $form_params->{'secret_key'} = $self->{api_client}->to_form_value($args{'secret_key'});
    }

    # form params
    if ( exists $args{'account_name'} ) {
                $form_params->{'account_name'} = $self->{api_client}->to_form_value($args{'account_name'});
    }

    # form params
    if ( exists $args{'dataset'} ) {
                $form_params->{'dataset'} = $self->{api_client}->to_form_value($args{'dataset'});
    }

    # form params
    if ( exists $args{'table'} ) {
                $form_params->{'table'} = $self->{api_client}->to_form_value($args{'table'});
    }

    # form params
    if ( exists $args{'template_suffix'} ) {
                $form_params->{'template_suffix'} = $self->{api_client}->to_form_value($args{'template_suffix'});
    }

    # form params
    if ( exists $args{'project_id'} ) {
                $form_params->{'project_id'} = $self->{api_client}->to_form_value($args{'project_id'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingBigqueryResponse', $response);
    return $_response_object;
}

#
# delete_log_bigquery
#
# Delete a BigQuery log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_bigquery_name The name for the real-time logging configuration. (required)
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
    'logging_bigquery_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_log_bigquery' } = {
        summary => 'Delete a BigQuery log endpoint',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_log_bigquery {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_log_bigquery");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling delete_log_bigquery");
    }

    # verify the required parameter 'logging_bigquery_name' is set
    unless (exists $args{'logging_bigquery_name'}) {
      croak("Missing the required parameter 'logging_bigquery_name' when calling delete_log_bigquery");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name}';

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
    if ( exists $args{'logging_bigquery_name'}) {
        my $_base_variable = "{" . "logging_bigquery_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_bigquery_name'});
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
# get_log_bigquery
#
# Get a BigQuery log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_bigquery_name The name for the real-time logging configuration. (required)
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
    'logging_bigquery_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_log_bigquery' } = {
        summary => 'Get a BigQuery log endpoint',
        params => $params,
        returns => 'LoggingBigqueryResponse',
        };
}
# @return LoggingBigqueryResponse
#
sub get_log_bigquery {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_log_bigquery");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling get_log_bigquery");
    }

    # verify the required parameter 'logging_bigquery_name' is set
    unless (exists $args{'logging_bigquery_name'}) {
      croak("Missing the required parameter 'logging_bigquery_name' when calling get_log_bigquery");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name}';

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
    if ( exists $args{'logging_bigquery_name'}) {
        my $_base_variable = "{" . "logging_bigquery_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_bigquery_name'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingBigqueryResponse', $response);
    return $_response_object;
}

#
# list_log_bigquery
#
# List BigQuery log endpoints
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
    __PACKAGE__->method_documentation->{ 'list_log_bigquery' } = {
        summary => 'List BigQuery log endpoints',
        params => $params,
        returns => 'ARRAY[LoggingBigqueryResponse]',
        };
}
# @return ARRAY[LoggingBigqueryResponse]
#
sub list_log_bigquery {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_log_bigquery");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_log_bigquery");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/bigquery';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[LoggingBigqueryResponse]', $response);
    return $_response_object;
}

#
# update_log_bigquery
#
# Update a BigQuery log endpoint
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version_id Integer identifying a service version. (required)
# @param string $logging_bigquery_name The name for the real-time logging configuration. (required)
# @param string $name The name of the BigQuery logging object. Used as a primary key for API access. (optional)
# @param string $placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;.  (optional)
# @param string $response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute. (optional)
# @param string $format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. (optional)
# @param int $format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (optional, default to 2)
# @param string $user Your Google Cloud Platform service account email address. The &#x60;client_email&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified. (optional)
# @param string $secret_key Your Google Cloud Platform account secret key. The &#x60;private_key&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified. (optional)
# @param string $account_name The name of the Google Cloud Platform service account associated with the target log collection service. Not required if &#x60;user&#x60; and &#x60;secret_key&#x60; are provided. (optional)
# @param string $dataset Your BigQuery dataset. (optional)
# @param string $table Your BigQuery table. (optional)
# @param string $template_suffix BigQuery table name suffix template. Optional. (optional)
# @param string $project_id Your Google Cloud Platform project ID. Required (optional)
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
    'logging_bigquery_name' => {
        data_type => 'string',
        description => 'The name for the real-time logging configuration.',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the BigQuery logging object. Used as a primary key for API access.',
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
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.',
        required => '0',
    },
    'format_version' => {
        data_type => 'int',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        required => '0',
    },
    'user' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform service account email address. The &#x60;client_email&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified.',
        required => '0',
    },
    'secret_key' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform account secret key. The &#x60;private_key&#x60; field in your service account authentication JSON. Not required if &#x60;account_name&#x60; is specified.',
        required => '0',
    },
    'account_name' => {
        data_type => 'string',
        description => 'The name of the Google Cloud Platform service account associated with the target log collection service. Not required if &#x60;user&#x60; and &#x60;secret_key&#x60; are provided.',
        required => '0',
    },
    'dataset' => {
        data_type => 'string',
        description => 'Your BigQuery dataset.',
        required => '0',
    },
    'table' => {
        data_type => 'string',
        description => 'Your BigQuery table.',
        required => '0',
    },
    'template_suffix' => {
        data_type => 'string',
        description => 'BigQuery table name suffix template. Optional.',
        required => '0',
    },
    'project_id' => {
        data_type => 'string',
        description => 'Your Google Cloud Platform project ID. Required',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_log_bigquery' } = {
        summary => 'Update a BigQuery log endpoint',
        params => $params,
        returns => 'LoggingBigqueryResponse',
        };
}
# @return LoggingBigqueryResponse
#
sub update_log_bigquery {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_log_bigquery");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling update_log_bigquery");
    }

    # verify the required parameter 'logging_bigquery_name' is set
    unless (exists $args{'logging_bigquery_name'}) {
      croak("Missing the required parameter 'logging_bigquery_name' when calling update_log_bigquery");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name}';

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
    if ( exists $args{'logging_bigquery_name'}) {
        my $_base_variable = "{" . "logging_bigquery_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'logging_bigquery_name'});
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
    if ( exists $args{'user'} ) {
                $form_params->{'user'} = $self->{api_client}->to_form_value($args{'user'});
    }

    # form params
    if ( exists $args{'secret_key'} ) {
                $form_params->{'secret_key'} = $self->{api_client}->to_form_value($args{'secret_key'});
    }

    # form params
    if ( exists $args{'account_name'} ) {
                $form_params->{'account_name'} = $self->{api_client}->to_form_value($args{'account_name'});
    }

    # form params
    if ( exists $args{'dataset'} ) {
                $form_params->{'dataset'} = $self->{api_client}->to_form_value($args{'dataset'});
    }

    # form params
    if ( exists $args{'table'} ) {
                $form_params->{'table'} = $self->{api_client}->to_form_value($args{'table'});
    }

    # form params
    if ( exists $args{'template_suffix'} ) {
                $form_params->{'template_suffix'} = $self->{api_client}->to_form_value($args{'template_suffix'});
    }

    # form params
    if ( exists $args{'project_id'} ) {
                $form_params->{'project_id'} = $self->{api_client}->to_form_value($args{'project_id'});
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
    my $_response_object = $self->{api_client}->deserialize('LoggingBigqueryResponse', $response);
    return $_response_object;
}

1;
