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
package WebService::Fastly::TlsActivationsApi;

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
# create_tls_activation
#
# Enable TLS for a domain using a custom certificate
#
# @param TlsActivation $tls_activation  (optional)
{
    my $params = {
    'tls_activation' => {
        data_type => 'TlsActivation',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tls_activation' } = {
        summary => 'Enable TLS for a domain using a custom certificate',
        params => $params,
        returns => 'TlsActivationResponse',
        };
}
# @return TlsActivationResponse
#
sub create_tls_activation {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/activations';

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
    if ( exists $args{'tls_activation'}) {
        $_body_data = $args{'tls_activation'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsActivationResponse', $response);
    return $_response_object;
}

#
# delete_tls_activation
#
# Disable TLS on a domain
#
# @param string $tls_activation_id Alphanumeric string identifying a TLS activation. (required)
{
    my $params = {
    'tls_activation_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS activation.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_tls_activation' } = {
        summary => 'Disable TLS on a domain',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_tls_activation {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_activation_id' is set
    unless (exists $args{'tls_activation_id'}) {
      croak("Missing the required parameter 'tls_activation_id' when calling delete_tls_activation");
    }

    # parse inputs
    my $_resource_path = '/tls/activations/{tls_activation_id}';

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
    if ( exists $args{'tls_activation_id'}) {
        my $_base_variable = "{" . "tls_activation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_activation_id'});
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
# get_tls_activation
#
# Get a TLS activation
#
# @param string $tls_activation_id Alphanumeric string identifying a TLS activation. (required)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;.  (optional)
{
    my $params = {
    'tls_activation_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS activation.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tls_activation' } = {
        summary => 'Get a TLS activation',
        params => $params,
        returns => 'TlsActivationResponse',
        };
}
# @return TlsActivationResponse
#
sub get_tls_activation {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_activation_id' is set
    unless (exists $args{'tls_activation_id'}) {
      croak("Missing the required parameter 'tls_activation_id' when calling get_tls_activation");
    }

    # parse inputs
    my $_resource_path = '/tls/activations/{tls_activation_id}';

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
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'tls_activation_id'}) {
        my $_base_variable = "{" . "tls_activation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_activation_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsActivationResponse', $response);
    return $_response_object;
}

#
# list_tls_activations
#
# List TLS activations
#
# @param string $filter[tls_certificate/id] Limit the returned activations to a specific certificate. (optional)
# @param string $filter[tls_configuration/id] Limit the returned activations to a specific TLS configuration. (optional)
# @param string $filter[tls_domain/id] Limit the returned rules to a specific domain name. (optional)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'filter[tls_certificate/id]' => {
        data_type => 'string',
        description => 'Limit the returned activations to a specific certificate.',
        required => '0',
    },
    'filter[tls_configuration/id]' => {
        data_type => 'string',
        description => 'Limit the returned activations to a specific TLS configuration.',
        required => '0',
    },
    'filter[tls_domain/id]' => {
        data_type => 'string',
        description => 'Limit the returned rules to a specific domain name.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. ',
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
    __PACKAGE__->method_documentation->{ 'list_tls_activations' } = {
        summary => 'List TLS activations',
        params => $params,
        returns => 'TlsActivationsResponse',
        };
}
# @return TlsActivationsResponse
#
sub list_tls_activations {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/activations';

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
    if ( exists $args{'filter[tls_certificate/id]'}) {
        $query_params->{'filter[tls_certificate.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_certificate/id]'});
    }

    # query params
    if ( exists $args{'filter[tls_configuration/id]'}) {
        $query_params->{'filter[tls_configuration.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_configuration/id]'});
    }

    # query params
    if ( exists $args{'filter[tls_domain/id]'}) {
        $query_params->{'filter[tls_domain.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_domain/id]'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsActivationsResponse', $response);
    return $_response_object;
}

#
# update_tls_activation
#
# Update a certificate
#
# @param string $tls_activation_id Alphanumeric string identifying a TLS activation. (required)
# @param TlsActivation $tls_activation  (optional)
{
    my $params = {
    'tls_activation_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS activation.',
        required => '1',
    },
    'tls_activation' => {
        data_type => 'TlsActivation',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_tls_activation' } = {
        summary => 'Update a certificate',
        params => $params,
        returns => 'TlsActivationResponse',
        };
}
# @return TlsActivationResponse
#
sub update_tls_activation {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_activation_id' is set
    unless (exists $args{'tls_activation_id'}) {
      croak("Missing the required parameter 'tls_activation_id' when calling update_tls_activation");
    }

    # parse inputs
    my $_resource_path = '/tls/activations/{tls_activation_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # path params
    if ( exists $args{'tls_activation_id'}) {
        my $_base_variable = "{" . "tls_activation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_activation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tls_activation'}) {
        $_body_data = $args{'tls_activation'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsActivationResponse', $response);
    return $_response_object;
}

1;
