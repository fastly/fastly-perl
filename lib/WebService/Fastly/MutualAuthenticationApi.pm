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
package WebService::Fastly::MutualAuthenticationApi;

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
# create_mutual_tls_authentication
#
# Create a Mutual Authentication
#
# @param MutualAuthentication $mutual_authentication  (optional)
{
    my $params = {
    'mutual_authentication' => {
        data_type => 'MutualAuthentication',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_mutual_tls_authentication' } = {
        summary => 'Create a Mutual Authentication',
        params => $params,
        returns => 'MutualAuthenticationResponse',
        };
}
# @return MutualAuthenticationResponse
#
sub create_mutual_tls_authentication {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/mutual_authentications';

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
    if ( exists $args{'mutual_authentication'}) {
        $_body_data = $args{'mutual_authentication'};
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
    my $_response_object = $self->{api_client}->deserialize('MutualAuthenticationResponse', $response);
    return $_response_object;
}

#
# delete_mutual_tls
#
# Delete a Mutual TLS
#
# @param string $mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
{
    my $params = {
    'mutual_authentication_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a mutual authentication.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_mutual_tls' } = {
        summary => 'Delete a Mutual TLS',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_mutual_tls {
    my ($self, %args) = @_;

    # verify the required parameter 'mutual_authentication_id' is set
    unless (exists $args{'mutual_authentication_id'}) {
      croak("Missing the required parameter 'mutual_authentication_id' when calling delete_mutual_tls");
    }

    # parse inputs
    my $_resource_path = '/tls/mutual_authentications/{mutual_authentication_id}';

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
    if ( exists $args{'mutual_authentication_id'}) {
        my $_base_variable = "{" . "mutual_authentication_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'mutual_authentication_id'});
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
# get_mutual_authentication
#
# Get a Mutual Authentication
#
# @param string $mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
{
    my $params = {
    'mutual_authentication_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a mutual authentication.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_mutual_authentication' } = {
        summary => 'Get a Mutual Authentication',
        params => $params,
        returns => 'MutualAuthenticationResponse',
        };
}
# @return MutualAuthenticationResponse
#
sub get_mutual_authentication {
    my ($self, %args) = @_;

    # verify the required parameter 'mutual_authentication_id' is set
    unless (exists $args{'mutual_authentication_id'}) {
      croak("Missing the required parameter 'mutual_authentication_id' when calling get_mutual_authentication");
    }

    # parse inputs
    my $_resource_path = '/tls/mutual_authentications/{mutual_authentication_id}';

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
    if ( exists $args{'mutual_authentication_id'}) {
        my $_base_variable = "{" . "mutual_authentication_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'mutual_authentication_id'});
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
    my $_response_object = $self->{api_client}->deserialize('MutualAuthenticationResponse', $response);
    return $_response_object;
}

#
# list_mutual_authentications
#
# List Mutual Authentications
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
    __PACKAGE__->method_documentation->{ 'list_mutual_authentications' } = {
        summary => 'List Mutual Authentications',
        params => $params,
        returns => 'MutualAuthenticationsResponse',
        };
}
# @return MutualAuthenticationsResponse
#
sub list_mutual_authentications {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/mutual_authentications';

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
    my $_response_object = $self->{api_client}->deserialize('MutualAuthenticationsResponse', $response);
    return $_response_object;
}

1;
