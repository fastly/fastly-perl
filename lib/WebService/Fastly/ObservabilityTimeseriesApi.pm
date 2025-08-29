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
package WebService::Fastly::ObservabilityTimeseriesApi;

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
# timeseries_get
#
# Retrieve observability data as a time series
#
# @param string $source  (required)
# @param string $from  (required)
# @param string $to  (required)
# @param string $granularity  (required)
# @param string $series  (required)
# @param string $dimensions  (optional)
# @param string $filter  (optional)
{
    my $params = {
    'source' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'from' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'to' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'granularity' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'series' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'dimensions' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'filter' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'timeseries_get' } = {
        summary => 'Retrieve observability data as a time series',
        params => $params,
        returns => 'TimeseriesGetResponse',
        };
}
# @return TimeseriesGetResponse
#
sub timeseries_get {
    my ($self, %args) = @_;

    # verify the required parameter 'source' is set
    unless (exists $args{'source'}) {
      croak("Missing the required parameter 'source' when calling timeseries_get");
    }

    # verify the required parameter 'from' is set
    unless (exists $args{'from'}) {
      croak("Missing the required parameter 'from' when calling timeseries_get");
    }

    # verify the required parameter 'to' is set
    unless (exists $args{'to'}) {
      croak("Missing the required parameter 'to' when calling timeseries_get");
    }

    # verify the required parameter 'granularity' is set
    unless (exists $args{'granularity'}) {
      croak("Missing the required parameter 'granularity' when calling timeseries_get");
    }

    # verify the required parameter 'series' is set
    unless (exists $args{'series'}) {
      croak("Missing the required parameter 'series' when calling timeseries_get");
    }

    # parse inputs
    my $_resource_path = '/observability/timeseries';

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
    if ( exists $args{'source'}) {
        $query_params->{'source'} = $self->{api_client}->to_query_value($args{'source'});
    }

    # query params
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'granularity'}) {
        $query_params->{'granularity'} = $self->{api_client}->to_query_value($args{'granularity'});
    }

    # query params
    if ( exists $args{'dimensions'}) {
        $query_params->{'dimensions'} = $self->{api_client}->to_query_value($args{'dimensions'});
    }

    # query params
    if ( exists $args{'filter'}) {
        $query_params->{'filter'} = $self->{api_client}->to_query_value($args{'filter'});
    }

    # query params
    if ( exists $args{'series'}) {
        $query_params->{'series'} = $self->{api_client}->to_query_value($args{'series'});
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
    my $_response_object = $self->{api_client}->deserialize('TimeseriesGetResponse', $response);
    return $_response_object;
}

1;
