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
package WebService::Fastly::KvStoreApi;

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
# kv_store_create
#
# Create a KV store.
#
# @param string $location  (optional)
# @param KvStoreRequestCreateOrUpdate $kv_store_request_create_or_update  (optional)
{
    my $params = {
    'location' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'kv_store_request_create_or_update' => {
        data_type => 'KvStoreRequestCreateOrUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_create' } = {
        summary => 'Create a KV store.',
        params => $params,
        returns => 'KvStoreDetails',
        };
}
# @return KvStoreDetails
#
sub kv_store_create {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/kv';

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

    # query params
    if ( exists $args{'location'}) {
        $query_params->{'location'} = $self->{api_client}->to_query_value($args{'location'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'kv_store_request_create_or_update'}) {
        $_body_data = $args{'kv_store_request_create_or_update'};
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
    my $_response_object = $self->{api_client}->deserialize('KvStoreDetails', $response);
    return $_response_object;
}

#
# kv_store_delete
#
# Delete a KV store.
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
    __PACKAGE__->method_documentation->{ 'kv_store_delete' } = {
        summary => 'Delete a KV store.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub kv_store_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_delete");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}';

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
# kv_store_get
#
# Describe a KV store.
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
    __PACKAGE__->method_documentation->{ 'kv_store_get' } = {
        summary => 'Describe a KV store.',
        params => $params,
        returns => 'KvStoreDetails',
        };
}
# @return KvStoreDetails
#
sub kv_store_get {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_get");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}';

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
    my $_response_object = $self->{api_client}->deserialize('KvStoreDetails', $response);
    return $_response_object;
}

#
# kv_store_list
#
# List all KV stores.
#
# @param string $cursor  (optional)
# @param int $limit  (optional, default to 1000)
# @param string $name Returns a one-element array containing the details for the named KV store. (optional)
{
    my $params = {
    'cursor' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Returns a one-element array containing the details for the named KV store.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_list' } = {
        summary => 'List all KV stores.',
        params => $params,
        returns => 'InlineResponse20010',
        };
}
# @return InlineResponse20010
#
sub kv_store_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/stores/kv';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20010', $response);
    return $_response_object;
}

#
# kv_store_put
#
# Update a KV store.
#
# @param string $store_id  (required)
# @param KvStoreRequestCreateOrUpdate $kv_store_request_create_or_update  (optional)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'kv_store_request_create_or_update' => {
        data_type => 'KvStoreRequestCreateOrUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'kv_store_put' } = {
        summary => 'Update a KV store.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub kv_store_put {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling kv_store_put");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/kv/{store_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'kv_store_request_create_or_update'}) {
        $_body_data = $args{'kv_store_request_create_or_update'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
