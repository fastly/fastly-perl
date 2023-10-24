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
package WebService::Fastly::WholePlatformDdosHistoricalApi;

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
# get_platform_ddos_historical
#
# Get historical DDoS metrics for the entire Fastly platform
#
# @param string $start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value. (optional)
# @param string $end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value. (optional)
# @param string $downsample Duration of sample windows. (optional, default to 'hour')
{
    my $params = {
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
    };
    __PACKAGE__->method_documentation->{ 'get_platform_ddos_historical' } = {
        summary => 'Get historical DDoS metrics for the entire Fastly platform',
        params => $params,
        returns => 'PlatformDdosResponse',
        };
}
# @return PlatformDdosResponse
#
sub get_platform_ddos_historical {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/metrics/platform/ddos';

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
    my $_response_object = $self->{api_client}->deserialize('PlatformDdosResponse', $response);
    return $_response_object;
}

1;
