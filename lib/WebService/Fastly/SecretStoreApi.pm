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
package WebService::Fastly::SecretStoreApi;

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
# client_key
#
# Create new client key
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'client_key' } = {
        summary => 'Create new client key',
        params => $params,
        returns => 'ClientKey',
        };
}
# @return ClientKey
#
sub client_key {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/secret/client-key';

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
    my $_response_object = $self->{api_client}->deserialize('ClientKey', $response);
    return $_response_object;
}

#
# create_secret_store
#
# Create new secret store
#
# @param SecretStore $secret_store  (optional)
{
    my $params = {
    'secret_store' => {
        data_type => 'SecretStore',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_secret_store' } = {
        summary => 'Create new secret store',
        params => $params,
        returns => 'SecretStoreResponse',
        };
}
# @return SecretStoreResponse
#
sub create_secret_store {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/secret';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'secret_store'}) {
        $_body_data = $args{'secret_store'};
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
    my $_response_object = $self->{api_client}->deserialize('SecretStoreResponse', $response);
    return $_response_object;
}

#
# delete_secret_store
#
# Delete secret store
#
# @param string $store_id  (required)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_secret_store' } = {
        summary => 'Delete secret store',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_secret_store {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling delete_secret_store");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}';

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
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
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
# get_secret_store
#
# Get secret store by ID
#
# @param string $store_id  (required)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_secret_store' } = {
        summary => 'Get secret store by ID',
        params => $params,
        returns => 'SecretStoreResponse',
        };
}
# @return SecretStoreResponse
#
sub get_secret_store {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling get_secret_store");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}';

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
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SecretStoreResponse', $response);
    return $_response_object;
}

#
# get_secret_stores
#
# Get all secret stores
#
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param string $limit Number of results per page. The maximum is 200. (optional, default to '100')
# @param string $name Returns a one-element array containing the details for the named secret store. (optional)
{
    my $params = {
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    'limit' => {
        data_type => 'string',
        description => 'Number of results per page. The maximum is 200.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Returns a one-element array containing the details for the named secret store.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_secret_stores' } = {
        summary => 'Get all secret stores',
        params => $params,
        returns => 'InlineResponse20012',
        };
}
# @return InlineResponse20012
#
sub get_secret_stores {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/secret';

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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20012', $response);
    return $_response_object;
}

#
# signing_key
#
# Get public key
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'signing_key' } = {
        summary => 'Get public key',
        params => $params,
        returns => 'SigningKey',
        };
}
# @return SigningKey
#
sub signing_key {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/secret/signing-key';

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
    my $_response_object = $self->{api_client}->deserialize('SigningKey', $response);
    return $_response_object;
}

1;
