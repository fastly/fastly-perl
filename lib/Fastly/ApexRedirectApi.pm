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
package Fastly::ApexRedirectApi;

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
# delete_apex_redirect
#
# Delete an apex redirect
#
# @param string $apex_redirect_id  (required)
{
    my $params = {
    'apex_redirect_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_apex_redirect' } = {
        summary => 'Delete an apex redirect',
        params => $params,
        returns => 'DeleteAcl200Response',
        };
}
# @return DeleteAcl200Response
#
sub delete_apex_redirect {
    my ($self, %args) = @_;

    # verify the required parameter 'apex_redirect_id' is set
    unless (exists $args{'apex_redirect_id'}) {
      croak("Missing the required parameter 'apex_redirect_id' when calling delete_apex_redirect");
    }

    # parse inputs
    my $_resource_path = '/apex-redirects/{apex_redirect_id}';

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
    if ( exists $args{'apex_redirect_id'}) {
        my $_base_variable = "{" . "apex_redirect_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'apex_redirect_id'});
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
# get_apex_redirect
#
# Get an apex redirect
#
# @param string $apex_redirect_id  (required)
{
    my $params = {
    'apex_redirect_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_apex_redirect' } = {
        summary => 'Get an apex redirect',
        params => $params,
        returns => 'ApexRedirect',
        };
}
# @return ApexRedirect
#
sub get_apex_redirect {
    my ($self, %args) = @_;

    # verify the required parameter 'apex_redirect_id' is set
    unless (exists $args{'apex_redirect_id'}) {
      croak("Missing the required parameter 'apex_redirect_id' when calling get_apex_redirect");
    }

    # parse inputs
    my $_resource_path = '/apex-redirects/{apex_redirect_id}';

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
    if ( exists $args{'apex_redirect_id'}) {
        my $_base_variable = "{" . "apex_redirect_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'apex_redirect_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ApexRedirect', $response);
    return $_response_object;
}

#
# list_apex_redirects
#
# List apex redirects
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
    __PACKAGE__->method_documentation->{ 'list_apex_redirects' } = {
        summary => 'List apex redirects',
        params => $params,
        returns => 'ARRAY[ApexRedirect]',
        };
}
# @return ARRAY[ApexRedirect]
#
sub list_apex_redirects {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_apex_redirects");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling list_apex_redirects");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/version/{version_id}/apex-redirects';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ApexRedirect]', $response);
    return $_response_object;
}

#
# update_apex_redirect
#
# Update an apex redirect
#
# @param string $apex_redirect_id  (required)
# @param string $service_id Alphanumeric string identifying the service. (optional)
# @param int $version Integer identifying a service version. (optional)
# @param DateTime $created_at Date and time in ISO 8601 format. (optional)
# @param DateTime $deleted_at Date and time in ISO 8601 format. (optional)
# @param DateTime $updated_at Date and time in ISO 8601 format. (optional)
# @param int $status_code HTTP status code used to redirect the client. (optional)
# @param ARRAY[string] $domains Array of apex domains that should redirect to their WWW subdomain. (optional)
# @param int $feature_revision Revision number of the apex redirect feature implementation. Defaults to the most recent revision. (optional)
{
    my $params = {
    'apex_redirect_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '0',
    },
    'version' => {
        data_type => 'int',
        description => 'Integer identifying a service version.',
        required => '0',
    },
    'created_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'deleted_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'updated_at' => {
        data_type => 'DateTime',
        description => 'Date and time in ISO 8601 format.',
        required => '0',
    },
    'status_code' => {
        data_type => 'int',
        description => 'HTTP status code used to redirect the client.',
        required => '0',
    },
    'domains' => {
        data_type => 'ARRAY[string]',
        description => 'Array of apex domains that should redirect to their WWW subdomain.',
        required => '0',
    },
    'feature_revision' => {
        data_type => 'int',
        description => 'Revision number of the apex redirect feature implementation. Defaults to the most recent revision.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_apex_redirect' } = {
        summary => 'Update an apex redirect',
        params => $params,
        returns => 'ApexRedirect',
        };
}
# @return ApexRedirect
#
sub update_apex_redirect {
    my ($self, %args) = @_;

    # verify the required parameter 'apex_redirect_id' is set
    unless (exists $args{'apex_redirect_id'}) {
      croak("Missing the required parameter 'apex_redirect_id' when calling update_apex_redirect");
    }

    # parse inputs
    my $_resource_path = '/apex-redirects/{apex_redirect_id}';

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
    if ( exists $args{'apex_redirect_id'}) {
        my $_base_variable = "{" . "apex_redirect_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'apex_redirect_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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
    if ( exists $args{'created_at'} ) {
                $form_params->{'created_at'} = $self->{api_client}->to_form_value($args{'created_at'});
    }

    # form params
    if ( exists $args{'deleted_at'} ) {
                $form_params->{'deleted_at'} = $self->{api_client}->to_form_value($args{'deleted_at'});
    }

    # form params
    if ( exists $args{'updated_at'} ) {
                $form_params->{'updated_at'} = $self->{api_client}->to_form_value($args{'updated_at'});
    }

    # form params
    if ( exists $args{'status_code'} ) {
                $form_params->{'status_code'} = $self->{api_client}->to_form_value($args{'status_code'});
    }

    # form params
    if ( exists $args{'domains'} ) {
                $form_params->{'domains'} = $self->{api_client}->to_form_value($args{'domains'});
    }

    # form params
    if ( exists $args{'feature_revision'} ) {
                $form_params->{'feature_revision'} = $self->{api_client}->to_form_value($args{'feature_revision'});
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
    my $_response_object = $self->{api_client}->deserialize('ApexRedirect', $response);
    return $_response_object;
}

1;
