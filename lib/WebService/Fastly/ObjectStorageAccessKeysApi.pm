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
package WebService::Fastly::ObjectStorageAccessKeysApi;

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
# create_access_key
#
# Create an access key
#
# @param AccessKey $access_key  (optional)
{
    my $params = {
    'access_key' => {
        data_type => 'AccessKey',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_access_key' } = {
        summary => 'Create an access key',
        params => $params,
        returns => 'AccessKeyResponse',
        };
}
# @return AccessKeyResponse
#
sub create_access_key {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/object-storage/access-keys';

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
    if ( exists $args{'access_key'}) {
        $_body_data = $args{'access_key'};
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
    my $_response_object = $self->{api_client}->deserialize('AccessKeyResponse', $response);
    return $_response_object;
}

#
# delete_access_key
#
# Delete an access key
#
# @param string $access_key  (required)
{
    my $params = {
    'access_key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_access_key' } = {
        summary => 'Delete an access key',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_access_key {
    my ($self, %args) = @_;

    # verify the required parameter 'access_key' is set
    unless (exists $args{'access_key'}) {
      croak("Missing the required parameter 'access_key' when calling delete_access_key");
    }

    # parse inputs
    my $_resource_path = '/resources/object-storage/access-keys/{access_key}';

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
    if ( exists $args{'access_key'}) {
        my $_base_variable = "{" . "access_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'access_key'});
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
# get_access_key
#
# Get an access key
#
# @param string $access_key  (required)
{
    my $params = {
    'access_key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_access_key' } = {
        summary => 'Get an access key',
        params => $params,
        returns => 'AccessKey',
        };
}
# @return AccessKey
#
sub get_access_key {
    my ($self, %args) = @_;

    # verify the required parameter 'access_key' is set
    unless (exists $args{'access_key'}) {
      croak("Missing the required parameter 'access_key' when calling get_access_key");
    }

    # parse inputs
    my $_resource_path = '/resources/object-storage/access-keys/{access_key}';

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
    if ( exists $args{'access_key'}) {
        my $_base_variable = "{" . "access_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'access_key'});
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
    my $_response_object = $self->{api_client}->deserialize('AccessKey', $response);
    return $_response_object;
}

#
# list_access_keys
#
# List access keys
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_access_keys' } = {
        summary => 'List access keys',
        params => $params,
        returns => 'AccessKeyResponse',
        };
}
# @return AccessKeyResponse
#
sub list_access_keys {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/object-storage/access-keys';

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
    my $_response_object = $self->{api_client}->deserialize('AccessKeyResponse', $response);
    return $_response_object;
}

1;
