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
package WebService::Fastly::SecretStoreItemApi;

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
# create_secret
#
# Create a new secret in a store.
#
# @param string $store_id  (required)
# @param Secret $secret  (optional)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'secret' => {
        data_type => 'Secret',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_secret' } = {
        summary => 'Create a new secret in a store.',
        params => $params,
        returns => 'SecretResponse',
        };
}
# @return SecretResponse
#
sub create_secret {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling create_secret");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets';

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

    # path params
    if ( exists $args{'store_id'}) {
        my $_base_variable = "{" . "store_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'store_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'secret'}) {
        $_body_data = $args{'secret'};
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
    my $_response_object = $self->{api_client}->deserialize('SecretResponse', $response);
    return $_response_object;
}

#
# delete_secret
#
# Delete a secret from a store.
#
# @param string $store_id  (required)
# @param string $secret_name  (required)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'secret_name' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_secret' } = {
        summary => 'Delete a secret from a store.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_secret {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling delete_secret");
    }

    # verify the required parameter 'secret_name' is set
    unless (exists $args{'secret_name'}) {
      croak("Missing the required parameter 'secret_name' when calling delete_secret");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets/{secret_name}';

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

    # path params
    if ( exists $args{'secret_name'}) {
        my $_base_variable = "{" . "secret_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'secret_name'});
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
# get_secret
#
# Get secret metadata.
#
# @param string $store_id  (required)
# @param string $secret_name  (required)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'secret_name' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_secret' } = {
        summary => 'Get secret metadata.',
        params => $params,
        returns => 'SecretResponse',
        };
}
# @return SecretResponse
#
sub get_secret {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling get_secret");
    }

    # verify the required parameter 'secret_name' is set
    unless (exists $args{'secret_name'}) {
      croak("Missing the required parameter 'secret_name' when calling get_secret");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets/{secret_name}';

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

    # path params
    if ( exists $args{'secret_name'}) {
        my $_base_variable = "{" . "secret_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'secret_name'});
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
    my $_response_object = $self->{api_client}->deserialize('SecretResponse', $response);
    return $_response_object;
}

#
# get_secrets
#
# List secrets within a store.
#
# @param string $store_id  (required)
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param string $limit Number of results per page. The maximum is 200. (optional, default to '100')
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
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
    };
    __PACKAGE__->method_documentation->{ 'get_secrets' } = {
        summary => 'List secrets within a store.',
        params => $params,
        returns => 'InlineResponse20013',
        };
}
# @return InlineResponse20013
#
sub get_secrets {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling get_secrets");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20013', $response);
    return $_response_object;
}

#
# must_recreate_secret
#
# Recreate a secret in a store.
#
# @param string $store_id  (required)
# @param Secret $secret  (optional)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'secret' => {
        data_type => 'Secret',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'must_recreate_secret' } = {
        summary => 'Recreate a secret in a store.',
        params => $params,
        returns => 'SecretResponse',
        };
}
# @return SecretResponse
#
sub must_recreate_secret {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling must_recreate_secret");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    if ( exists $args{'secret'}) {
        $_body_data = $args{'secret'};
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
    my $_response_object = $self->{api_client}->deserialize('SecretResponse', $response);
    return $_response_object;
}

#
# recreate_secret
#
# Create or recreate a secret in a store.
#
# @param string $store_id  (required)
# @param Secret $secret  (optional)
{
    my $params = {
    'store_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'secret' => {
        data_type => 'Secret',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'recreate_secret' } = {
        summary => 'Create or recreate a secret in a store.',
        params => $params,
        returns => 'SecretResponse',
        };
}
# @return SecretResponse
#
sub recreate_secret {
    my ($self, %args) = @_;

    # verify the required parameter 'store_id' is set
    unless (exists $args{'store_id'}) {
      croak("Missing the required parameter 'store_id' when calling recreate_secret");
    }

    # parse inputs
    my $_resource_path = '/resources/stores/secret/{store_id}/secrets';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
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
    if ( exists $args{'secret'}) {
        $_body_data = $args{'secret'};
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
    my $_response_object = $self->{api_client}->deserialize('SecretResponse', $response);
    return $_response_object;
}

1;
