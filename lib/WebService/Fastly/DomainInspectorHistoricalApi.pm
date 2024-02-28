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
package WebService::Fastly::DomainInspectorHistoricalApi;

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
# get_domain_inspector_historical
#
# Get historical domain data for a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value. (optional)
# @param string $end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value. (optional)
# @param string $downsample Duration of sample windows. (optional, default to 'hour')
# @param string $metric The metrics to retrieve. Multiple values should be comma-separated. (optional, default to 'edge_requests')
# @param string $group_by Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, &#x60;group_by&#x3D;domain&#x60; will return one timeseries for every domain, as a total across all datacenters (POPs).  (optional)
# @param string $limit Number of results per page. The maximum is 200. (optional, default to '100')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param string $region Limit query to one or more specific geographic regions. Values should be comma-separated.  (optional)
# @param string $datacenter Limit query to one or more specific POPs. Values should be comma-separated. (optional)
# @param string $domain Limit query to one or more specific domains. Values should be comma-separated. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'start' => {
        data_type => 'string',
        description => 'A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.',
        required => '0',
    },
    'end' => {
        data_type => 'string',
        description => 'A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.',
        required => '0',
    },
    'downsample' => {
        data_type => 'string',
        description => 'Duration of sample windows.',
        required => '0',
    },
    'metric' => {
        data_type => 'string',
        description => 'The metrics to retrieve. Multiple values should be comma-separated.',
        required => '0',
    },
    'group_by' => {
        data_type => 'string',
        description => 'Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, &#x60;group_by&#x3D;domain&#x60; will return one timeseries for every domain, as a total across all datacenters (POPs). ',
        required => '0',
    },
    'limit' => {
        data_type => 'string',
        description => 'Number of results per page. The maximum is 200.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to one or more specific geographic regions. Values should be comma-separated. ',
        required => '0',
    },
    'datacenter' => {
        data_type => 'string',
        description => 'Limit query to one or more specific POPs. Values should be comma-separated.',
        required => '0',
    },
    'domain' => {
        data_type => 'string',
        description => 'Limit query to one or more specific domains. Values should be comma-separated.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_domain_inspector_historical' } = {
        summary => 'Get historical domain data for a service',
        params => $params,
        returns => 'HistoricalDomainsResponse',
        };
}
# @return HistoricalDomainsResponse
#
sub get_domain_inspector_historical {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_domain_inspector_historical");
    }

    # parse inputs
    my $_resource_path = '/metrics/domains/services/{service_id}';

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
    if ( exists $args{'start'}) {
        $query_params->{'start'} = $self->{api_client}->to_query_value($args{'start'});
    }

    # query params
    if ( exists $args{'end'}) {
        $query_params->{'end'} = $self->{api_client}->to_query_value($args{'end'});
    }

    # query params
    if ( exists $args{'downsample'}) {
        $query_params->{'downsample'} = $self->{api_client}->to_query_value($args{'downsample'});
    }

    # query params
    if ( exists $args{'metric'}) {
        $query_params->{'metric'} = $self->{api_client}->to_query_value($args{'metric'});
    }

    # query params
    if ( exists $args{'group_by'}) {
        $query_params->{'group_by'} = $self->{api_client}->to_query_value($args{'group_by'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'region'}) {
        $query_params->{'region'} = $self->{api_client}->to_query_value($args{'region'});
    }

    # query params
    if ( exists $args{'datacenter'}) {
        $query_params->{'datacenter'} = $self->{api_client}->to_query_value($args{'datacenter'});
    }

    # query params
    if ( exists $args{'domain'}) {
        $query_params->{'domain'} = $self->{api_client}->to_query_value($args{'domain'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalDomainsResponse', $response);
    return $_response_object;
}

1;
