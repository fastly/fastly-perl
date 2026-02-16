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
package WebService::Fastly::ServiceAuthorizationsApi;

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
# create_service_authorization
#
# Create service authorization
#
# @param ServiceAuthorization $service_authorization  (optional)
{
    my $params = {
    'service_authorization' => {
        data_type => 'ServiceAuthorization',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_service_authorization' } = {
        summary => 'Create service authorization',
        params => $params,
        returns => 'ServiceAuthorizationResponse',
        };
}
# @return ServiceAuthorizationResponse
#
sub create_service_authorization {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-authorizations';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    my $_body_data;
    # body params
    if ( exists $args{'service_authorization'}) {
        $_body_data = $args{'service_authorization'};
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
    my $_response_object = $self->{api_client}->deserialize('ServiceAuthorizationResponse', $response);
    return $_response_object;
}

#
# delete_service_authorization
#
# Delete service authorization
#
# @param string $service_authorization_id Alphanumeric string identifying a service authorization. (required)
{
    my $params = {
    'service_authorization_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a service authorization.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_service_authorization' } = {
        summary => 'Delete service authorization',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_service_authorization {
    my ($self, %args) = @_;

    # verify the required parameter 'service_authorization_id' is set
    unless (exists $args{'service_authorization_id'}) {
      croak("Missing the required parameter 'service_authorization_id' when calling delete_service_authorization");
    }

    # parse inputs
    my $_resource_path = '/service-authorizations/{service_authorization_id}';

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
    if ( exists $args{'service_authorization_id'}) {
        my $_base_variable = "{" . "service_authorization_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_authorization_id'});
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
# delete_service_authorization2
#
# Delete service authorizations
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
    __PACKAGE__->method_documentation->{ 'delete_service_authorization2' } = {
        summary => 'Delete service authorizations',
        params => $params,
        returns => 'InlineResponse20014',
        };
}
# @return InlineResponse20014
#
sub delete_service_authorization2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-authorizations';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json; ext=bulk');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json; ext=bulk');

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20014', $response);
    return $_response_object;
}

#
# list_service_authorization
#
# List service authorizations
#
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'page[number]' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    'page[size]' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_service_authorization' } = {
        summary => 'List service authorizations',
        params => $params,
        returns => 'ServiceAuthorizationsResponse',
        };
}
# @return ServiceAuthorizationsResponse
#
sub list_service_authorization {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-authorizations';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'page[number]'}) {
        $query_params->{'page[number]'} = $self->{api_client}->to_query_value($args{'page[number]'});
    }

    # query params
    if ( exists $args{'page[size]'}) {
        $query_params->{'page[size]'} = $self->{api_client}->to_query_value($args{'page[size]'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceAuthorizationsResponse', $response);
    return $_response_object;
}

#
# show_service_authorization
#
# Show service authorization
#
# @param string $service_authorization_id Alphanumeric string identifying a service authorization. (required)
{
    my $params = {
    'service_authorization_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a service authorization.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_service_authorization' } = {
        summary => 'Show service authorization',
        params => $params,
        returns => 'ServiceAuthorizationResponse',
        };
}
# @return ServiceAuthorizationResponse
#
sub show_service_authorization {
    my ($self, %args) = @_;

    # verify the required parameter 'service_authorization_id' is set
    unless (exists $args{'service_authorization_id'}) {
      croak("Missing the required parameter 'service_authorization_id' when calling show_service_authorization");
    }

    # parse inputs
    my $_resource_path = '/service-authorizations/{service_authorization_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'service_authorization_id'}) {
        my $_base_variable = "{" . "service_authorization_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_authorization_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceAuthorizationResponse', $response);
    return $_response_object;
}

#
# update_service_authorization
#
# Update service authorization
#
# @param string $service_authorization_id Alphanumeric string identifying a service authorization. (required)
# @param ServiceAuthorization $service_authorization  (optional)
{
    my $params = {
    'service_authorization_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a service authorization.',
        required => '1',
    },
    'service_authorization' => {
        data_type => 'ServiceAuthorization',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_service_authorization' } = {
        summary => 'Update service authorization',
        params => $params,
        returns => 'ServiceAuthorizationResponse',
        };
}
# @return ServiceAuthorizationResponse
#
sub update_service_authorization {
    my ($self, %args) = @_;

    # verify the required parameter 'service_authorization_id' is set
    unless (exists $args{'service_authorization_id'}) {
      croak("Missing the required parameter 'service_authorization_id' when calling update_service_authorization");
    }

    # parse inputs
    my $_resource_path = '/service-authorizations/{service_authorization_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'service_authorization_id'}) {
        my $_base_variable = "{" . "service_authorization_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_authorization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'service_authorization'}) {
        $_body_data = $args{'service_authorization'};
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
    my $_response_object = $self->{api_client}->deserialize('ServiceAuthorizationResponse', $response);
    return $_response_object;
}

#
# update_service_authorization2
#
# Update service authorizations
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
    __PACKAGE__->method_documentation->{ 'update_service_authorization2' } = {
        summary => 'Update service authorizations',
        params => $params,
        returns => 'ServiceAuthorizationsResponse',
        };
}
# @return ServiceAuthorizationsResponse
#
sub update_service_authorization2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service-authorizations';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json; ext=bulk');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json; ext=bulk');

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
    my $_response_object = $self->{api_client}->deserialize('ServiceAuthorizationsResponse', $response);
    return $_response_object;
}

1;
