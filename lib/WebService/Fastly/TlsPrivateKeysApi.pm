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
package WebService::Fastly::TlsPrivateKeysApi;

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
# create_tls_key
#
# Create a TLS private key
#
# @param TlsPrivateKey $tls_private_key  (optional)
{
    my $params = {
    'tls_private_key' => {
        data_type => 'TlsPrivateKey',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tls_key' } = {
        summary => 'Create a TLS private key',
        params => $params,
        returns => 'TlsPrivateKeyResponse',
        };
}
# @return TlsPrivateKeyResponse
#
sub create_tls_key {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/private_keys';

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
    if ( exists $args{'tls_private_key'}) {
        $_body_data = $args{'tls_private_key'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsPrivateKeyResponse', $response);
    return $_response_object;
}

#
# delete_tls_key
#
# Delete a TLS private key
#
# @param string $tls_private_key_id Alphanumeric string identifying a private Key. (required)
{
    my $params = {
    'tls_private_key_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a private Key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_tls_key' } = {
        summary => 'Delete a TLS private key',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_tls_key {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_private_key_id' is set
    unless (exists $args{'tls_private_key_id'}) {
      croak("Missing the required parameter 'tls_private_key_id' when calling delete_tls_key");
    }

    # parse inputs
    my $_resource_path = '/tls/private_keys/{tls_private_key_id}';

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
    if ( exists $args{'tls_private_key_id'}) {
        my $_base_variable = "{" . "tls_private_key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_private_key_id'});
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
# get_tls_key
#
# Get a TLS private key
#
# @param string $tls_private_key_id Alphanumeric string identifying a private Key. (required)
{
    my $params = {
    'tls_private_key_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a private Key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tls_key' } = {
        summary => 'Get a TLS private key',
        params => $params,
        returns => 'TlsPrivateKeyResponse',
        };
}
# @return TlsPrivateKeyResponse
#
sub get_tls_key {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_private_key_id' is set
    unless (exists $args{'tls_private_key_id'}) {
      croak("Missing the required parameter 'tls_private_key_id' when calling get_tls_key");
    }

    # parse inputs
    my $_resource_path = '/tls/private_keys/{tls_private_key_id}';

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
    if ( exists $args{'tls_private_key_id'}) {
        my $_base_variable = "{" . "tls_private_key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_private_key_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsPrivateKeyResponse', $response);
    return $_response_object;
}

#
# list_tls_keys
#
# List TLS private keys
#
# @param string $filter[in_use] Limit the returned keys to those without any matching TLS certificates. The only valid value is false. (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'filter[in_use]' => {
        data_type => 'string',
        description => 'Limit the returned keys to those without any matching TLS certificates. The only valid value is false.',
        required => '0',
    },
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
    __PACKAGE__->method_documentation->{ 'list_tls_keys' } = {
        summary => 'List TLS private keys',
        params => $params,
        returns => 'TlsPrivateKeysResponse',
        };
}
# @return TlsPrivateKeysResponse
#
sub list_tls_keys {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/private_keys';

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
    if ( exists $args{'filter[in_use]'}) {
        $query_params->{'filter[in_use]'} = $self->{api_client}->to_query_value($args{'filter[in_use]'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('TlsPrivateKeysResponse', $response);
    return $_response_object;
}

1;
