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
package WebService::Fastly::TlsCertificatesApi;

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
# create_tls_cert
#
# Create a TLS certificate
#
# @param TlsCertificate $tls_certificate  (optional)
{
    my $params = {
    'tls_certificate' => {
        data_type => 'TlsCertificate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tls_cert' } = {
        summary => 'Create a TLS certificate',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_tls_cert {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/certificates';

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
    if ( exists $args{'tls_certificate'}) {
        $_body_data = $args{'tls_certificate'};
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# delete_tls_cert
#
# Delete a TLS certificate
#
# @param string $tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
{
    my $params = {
    'tls_certificate_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS certificate.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_tls_cert' } = {
        summary => 'Delete a TLS certificate',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_tls_cert {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_certificate_id' is set
    unless (exists $args{'tls_certificate_id'}) {
      croak("Missing the required parameter 'tls_certificate_id' when calling delete_tls_cert");
    }

    # parse inputs
    my $_resource_path = '/tls/certificates/{tls_certificate_id}';

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
    if ( exists $args{'tls_certificate_id'}) {
        my $_base_variable = "{" . "tls_certificate_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_certificate_id'});
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
# get_tls_cert
#
# Get a TLS certificate
#
# @param string $tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
{
    my $params = {
    'tls_certificate_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS certificate.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tls_cert' } = {
        summary => 'Get a TLS certificate',
        params => $params,
        returns => 'TlsCertificateResponse',
        };
}
# @return TlsCertificateResponse
#
sub get_tls_cert {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_certificate_id' is set
    unless (exists $args{'tls_certificate_id'}) {
      croak("Missing the required parameter 'tls_certificate_id' when calling get_tls_cert");
    }

    # parse inputs
    my $_resource_path = '/tls/certificates/{tls_certificate_id}';

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
    if ( exists $args{'tls_certificate_id'}) {
        my $_base_variable = "{" . "tls_certificate_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_certificate_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsCertificateResponse', $response);
    return $_response_object;
}

#
# list_tls_certs
#
# List TLS certificates
#
# @param string $filter[in_use] Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false. (optional)
# @param string $filter[not_after] Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05).  (optional)
# @param string $filter[tls_domains/id] Limit the returned certificates to those that include the specific domain. (optional)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $sort The order in which to list the results by creation date. (optional, default to 'created_at')
{
    my $params = {
    'filter[in_use]' => {
        data_type => 'string',
        description => 'Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false.',
        required => '0',
    },
    'filter[not_after]' => {
        data_type => 'string',
        description => 'Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05). ',
        required => '0',
    },
    'filter[tls_domains/id]' => {
        data_type => 'string',
        description => 'Limit the returned certificates to those that include the specific domain.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;. ',
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
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results by creation date.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_tls_certs' } = {
        summary => 'List TLS certificates',
        params => $params,
        returns => 'TlsCertificatesResponse',
        };
}
# @return TlsCertificatesResponse
#
sub list_tls_certs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/certificates';

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
    if ( exists $args{'filter[not_after]'}) {
        $query_params->{'filter[not_after]'} = $self->{api_client}->to_query_value($args{'filter[not_after]'});
    }

    # query params
    if ( exists $args{'filter[tls_domains/id]'}) {
        $query_params->{'filter[tls_domains.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_domains/id]'});
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

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsCertificatesResponse', $response);
    return $_response_object;
}

#
# update_tls_cert
#
# Update a TLS certificate
#
# @param string $tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
# @param TlsCertificate $tls_certificate  (optional)
{
    my $params = {
    'tls_certificate_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS certificate.',
        required => '1',
    },
    'tls_certificate' => {
        data_type => 'TlsCertificate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_tls_cert' } = {
        summary => 'Update a TLS certificate',
        params => $params,
        returns => 'TlsCertificateResponse',
        };
}
# @return TlsCertificateResponse
#
sub update_tls_cert {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_certificate_id' is set
    unless (exists $args{'tls_certificate_id'}) {
      croak("Missing the required parameter 'tls_certificate_id' when calling update_tls_cert");
    }

    # parse inputs
    my $_resource_path = '/tls/certificates/{tls_certificate_id}';

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
    if ( exists $args{'tls_certificate_id'}) {
        my $_base_variable = "{" . "tls_certificate_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_certificate_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tls_certificate'}) {
        $_body_data = $args{'tls_certificate'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsCertificateResponse', $response);
    return $_response_object;
}

1;
