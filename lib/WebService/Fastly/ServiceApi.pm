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
package WebService::Fastly::ServiceApi;

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
# create_service
#
# Create a service
#
# @param string $comment A freeform descriptive note. (optional)
# @param string $name The name of the service. (optional)
# @param string $customer_id Alphanumeric string identifying the customer. (optional)
# @param string $type The type of this service. (optional)
{
    my $params = {
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the service.',
        required => '0',
    },
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'The type of this service.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_service' } = {
        summary => 'Create a service',
        params => $params,
        returns => 'ServiceResponse',
        };
}
# @return ServiceResponse
#
sub create_service {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service';

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

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'customer_id'} ) {
                $form_params->{'customer_id'} = $self->{api_client}->to_form_value($args{'customer_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceResponse', $response);
    return $_response_object;
}

#
# delete_service
#
# Delete a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_service' } = {
        summary => 'Delete a service',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}';

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
# get_service
#
# Get a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_service' } = {
        summary => 'Get a service',
        params => $params,
        returns => 'ServiceResponse',
        };
}
# @return ServiceResponse
#
sub get_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}';

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
    my $_response_object = $self->{api_client}->deserialize('ServiceResponse', $response);
    return $_response_object;
}

#
# get_service_detail
#
# Get service details
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $version Number identifying a version of the service. (optional)
# @param boolean $filter[versions/active] Limits the versions array to the active versions. Accepts &#x60;true&#x60; or &#x60;false&#x60; (defaults to false). (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'version' => {
        data_type => 'int',
        description => 'Number identifying a version of the service.',
        required => '0',
    },
    'filter[versions/active]' => {
        data_type => 'boolean',
        description => 'Limits the versions array to the active versions. Accepts &#x60;true&#x60; or &#x60;false&#x60; (defaults to false).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_service_detail' } = {
        summary => 'Get service details',
        params => $params,
        returns => 'ServiceDetail',
        };
}
# @return ServiceDetail
#
sub get_service_detail {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_service_detail");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/details';

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

    # query params
    if ( exists $args{'version'}) {
        $query_params->{'version'} = $self->{api_client}->to_query_value($args{'version'});
    }

    # query params
    if ( exists $args{'filter[versions/active]'}) {
        $query_params->{'filter[versions.active]'} = $self->{api_client}->to_query_value($args{'filter[versions/active]'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceDetail', $response);
    return $_response_object;
}

#
# list_service_domains
#
# List the domains within a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_service_domains' } = {
        summary => 'List the domains within a service',
        params => $params,
        returns => 'ARRAY[DomainResponse]',
        };
}
# @return ARRAY[DomainResponse]
#
sub list_service_domains {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_service_domains");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/domain';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DomainResponse]', $response);
    return $_response_object;
}

#
# list_services
#
# List services
#
# @param int $page Current page. (optional)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param string $sort Field on which to sort. (optional, default to 'created')
# @param string $direction Direction in which to sort results. (optional, default to 'ascend')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Field on which to sort.',
        required => '0',
    },
    'direction' => {
        data_type => 'string',
        description => 'Direction in which to sort results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_services' } = {
        summary => 'List services',
        params => $params,
        returns => 'ARRAY[ServiceListResponse]',
        };
}
# @return ARRAY[ServiceListResponse]
#
sub list_services {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/service';

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

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'per_page'}) {
        $query_params->{'per_page'} = $self->{api_client}->to_query_value($args{'per_page'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'direction'}) {
        $query_params->{'direction'} = $self->{api_client}->to_query_value($args{'direction'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ServiceListResponse]', $response);
    return $_response_object;
}

#
# search_service
#
# Search for a service by name
#
# @param string $name The name of the service. (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The name of the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_service' } = {
        summary => 'Search for a service by name',
        params => $params,
        returns => 'ServiceResponse',
        };
}
# @return ServiceResponse
#
sub search_service {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling search_service");
    }

    # parse inputs
    my $_resource_path = '/service/search';

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

    # query params
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceResponse', $response);
    return $_response_object;
}

#
# update_service
#
# Update a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $comment A freeform descriptive note. (optional)
# @param string $name The name of the service. (optional)
# @param string $customer_id Alphanumeric string identifying the customer. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'comment' => {
        data_type => 'string',
        description => 'A freeform descriptive note.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the service.',
        required => '0',
    },
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_service' } = {
        summary => 'Update a service',
        params => $params,
        returns => 'ServiceResponse',
        };
}
# @return ServiceResponse
#
sub update_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_service");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}';

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

    # form params
    if ( exists $args{'comment'} ) {
                $form_params->{'comment'} = $self->{api_client}->to_form_value($args{'comment'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'customer_id'} ) {
                $form_params->{'customer_id'} = $self->{api_client}->to_form_value($args{'customer_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ServiceResponse', $response);
    return $_response_object;
}

1;
