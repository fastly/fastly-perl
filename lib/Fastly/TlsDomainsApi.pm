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
package Fastly::TlsDomainsApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# list_tls_domains
#
# List TLS domains
#
# @param string $filter[in_use] Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false. (optional)
# @param string $filter[tls_certificates/id] Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list. (optional)
# @param string $filter[tls_subscriptions/id] Optional. Limit the returned domains to those for a given TLS subscription. (optional)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;, &#x60;tls_certificates&#x60;, &#x60;tls_subscriptions&#x60;, &#x60;tls_subscriptions.tls_authorizations&#x60;, and &#x60;tls_authorizations.globalsign_email_challenge&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $sort The order in which to list the results by creation date. (optional, default to 'created_at')
{
    my $params = {
    'filter[in_use]' => {
        data_type => 'string',
        description => 'Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false.',
        required => '0',
    },
    'filter[tls_certificates/id]' => {
        data_type => 'string',
        description => 'Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list.',
        required => '0',
    },
    'filter[tls_subscriptions/id]' => {
        data_type => 'string',
        description => 'Optional. Limit the returned domains to those for a given TLS subscription.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;, &#x60;tls_certificates&#x60;, &#x60;tls_subscriptions&#x60;, &#x60;tls_subscriptions.tls_authorizations&#x60;, and &#x60;tls_authorizations.globalsign_email_challenge&#x60;. ',
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
    __PACKAGE__->method_documentation->{ 'list_tls_domains' } = {
        summary => 'List TLS domains',
        params => $params,
        returns => 'TlsDomainsResponse',
        };
}
# @return TlsDomainsResponse
#
sub list_tls_domains {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/domains';

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
    if ( exists $args{'filter[tls_certificates/id]'}) {
        $query_params->{'filter[tls_certificates.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_certificates/id]'});
    }

    # query params
    if ( exists $args{'filter[tls_subscriptions/id]'}) {
        $query_params->{'filter[tls_subscriptions.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_subscriptions/id]'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsDomainsResponse', $response);
    return $_response_object;
}

1;
