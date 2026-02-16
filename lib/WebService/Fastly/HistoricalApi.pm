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
package WebService::Fastly::HistoricalApi;

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
# get_hist_stats
#
# Get historical stats
#
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
# @param string $by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (optional, default to 'day')
# @param string $region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America.  (optional)
# @param string $datacenter Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  (optional)
# @param string $services Limit the query to only the specified, comma-separated list of services.  (optional)
{
    my $params = {
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    'by' => {
        data_type => 'string',
        description => 'Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day. ',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America. ',
        required => '0',
    },
    'datacenter' => {
        data_type => 'string',
        description => 'Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). ',
        required => '0',
    },
    'services' => {
        data_type => 'string',
        description => 'Limit the query to only the specified, comma-separated list of services. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_hist_stats' } = {
        summary => 'Get historical stats',
        params => $params,
        returns => 'HistoricalStatsByServiceResponse',
        };
}
# @return HistoricalStatsByServiceResponse
#
sub get_hist_stats {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'by'}) {
        $query_params->{'by'} = $self->{api_client}->to_query_value($args{'by'});
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
    if ( exists $args{'services'}) {
        $query_params->{'services'} = $self->{api_client}->to_query_value($args{'services'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalStatsByServiceResponse', $response);
    return $_response_object;
}

#
# get_hist_stats_aggregated
#
# Get aggregated historical stats
#
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
# @param string $by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (optional, default to 'day')
# @param string $region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America.  (optional)
{
    my $params = {
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    'by' => {
        data_type => 'string',
        description => 'Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day. ',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_hist_stats_aggregated' } = {
        summary => 'Get aggregated historical stats',
        params => $params,
        returns => 'HistoricalStatsAggregatedResponse',
        };
}
# @return HistoricalStatsAggregatedResponse
#
sub get_hist_stats_aggregated {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats/aggregate';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'by'}) {
        $query_params->{'by'} = $self->{api_client}->to_query_value($args{'by'});
    }

    # query params
    if ( exists $args{'region'}) {
        $query_params->{'region'} = $self->{api_client}->to_query_value($args{'region'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalStatsAggregatedResponse', $response);
    return $_response_object;
}

#
# get_hist_stats_field
#
# Get historical stats for a single field
#
# @param string $field Name of the stats field. (required)
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
# @param string $by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (optional, default to 'day')
# @param string $region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America.  (optional)
# @param string $datacenter Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  (optional)
{
    my $params = {
    'field' => {
        data_type => 'string',
        description => 'Name of the stats field.',
        required => '1',
    },
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    'by' => {
        data_type => 'string',
        description => 'Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day. ',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America. ',
        required => '0',
    },
    'datacenter' => {
        data_type => 'string',
        description => 'Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_hist_stats_field' } = {
        summary => 'Get historical stats for a single field',
        params => $params,
        returns => 'HistoricalStatsByServiceResponse',
        };
}
# @return HistoricalStatsByServiceResponse
#
sub get_hist_stats_field {
    my ($self, %args) = @_;

    # verify the required parameter 'field' is set
    unless (exists $args{'field'}) {
      croak("Missing the required parameter 'field' when calling get_hist_stats_field");
    }

    # parse inputs
    my $_resource_path = '/stats/field/{field}';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'by'}) {
        $query_params->{'by'} = $self->{api_client}->to_query_value($args{'by'});
    }

    # query params
    if ( exists $args{'region'}) {
        $query_params->{'region'} = $self->{api_client}->to_query_value($args{'region'});
    }

    # query params
    if ( exists $args{'datacenter'}) {
        $query_params->{'datacenter'} = $self->{api_client}->to_query_value($args{'datacenter'});
    }

    # path params
    if ( exists $args{'field'}) {
        my $_base_variable = "{" . "field" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'field'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalStatsByServiceResponse', $response);
    return $_response_object;
}

#
# get_hist_stats_service
#
# Get historical stats for a single service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
# @param string $by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (optional, default to 'day')
# @param string $region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America.  (optional)
# @param string $datacenter Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    'by' => {
        data_type => 'string',
        description => 'Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day. ',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America. ',
        required => '0',
    },
    'datacenter' => {
        data_type => 'string',
        description => 'Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_hist_stats_service' } = {
        summary => 'Get historical stats for a single service',
        params => $params,
        returns => 'HistoricalStatsAggregatedResponse',
        };
}
# @return HistoricalStatsAggregatedResponse
#
sub get_hist_stats_service {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_hist_stats_service");
    }

    # parse inputs
    my $_resource_path = '/stats/service/{service_id}';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'by'}) {
        $query_params->{'by'} = $self->{api_client}->to_query_value($args{'by'});
    }

    # query params
    if ( exists $args{'region'}) {
        $query_params->{'region'} = $self->{api_client}->to_query_value($args{'region'});
    }

    # query params
    if ( exists $args{'datacenter'}) {
        $query_params->{'datacenter'} = $self->{api_client}->to_query_value($args{'datacenter'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalStatsAggregatedResponse', $response);
    return $_response_object;
}

#
# get_hist_stats_service_field
#
# Get historical stats for a single service/field combination
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $field Name of the stats field. (required)
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
# @param string $by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (optional, default to 'day')
# @param string $region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America.  (optional)
# @param string $datacenter Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'field' => {
        data_type => 'string',
        description => 'Name of the stats field.',
        required => '1',
    },
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    'by' => {
        data_type => 'string',
        description => 'Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day. ',
        required => '0',
    },
    'region' => {
        data_type => 'string',
        description => 'Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;mexico&#x60; - Mexico.   * &#x60;southamerica_std&#x60; - South America. ',
        required => '0',
    },
    'datacenter' => {
        data_type => 'string',
        description => 'Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_hist_stats_service_field' } = {
        summary => 'Get historical stats for a single service/field combination',
        params => $params,
        returns => 'HistoricalStatsAggregatedResponse',
        };
}
# @return HistoricalStatsAggregatedResponse
#
sub get_hist_stats_service_field {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_hist_stats_service_field");
    }

    # verify the required parameter 'field' is set
    unless (exists $args{'field'}) {
      croak("Missing the required parameter 'field' when calling get_hist_stats_service_field");
    }

    # parse inputs
    my $_resource_path = '/stats/service/{service_id}/field/{field}';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
    }

    # query params
    if ( exists $args{'by'}) {
        $query_params->{'by'} = $self->{api_client}->to_query_value($args{'by'});
    }

    # query params
    if ( exists $args{'region'}) {
        $query_params->{'region'} = $self->{api_client}->to_query_value($args{'region'});
    }

    # query params
    if ( exists $args{'datacenter'}) {
        $query_params->{'datacenter'} = $self->{api_client}->to_query_value($args{'datacenter'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'field'}) {
        my $_base_variable = "{" . "field" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'field'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalStatsAggregatedResponse', $response);
    return $_response_object;
}

#
# get_regions
#
# Get region codes
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_regions' } = {
        summary => 'Get region codes',
        params => $params,
        returns => 'HistoricalRegionsResponse',
        };
}
# @return HistoricalRegionsResponse
#
sub get_regions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats/regions';

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
    my $_response_object = $self->{api_client}->deserialize('HistoricalRegionsResponse', $response);
    return $_response_object;
}

#
# get_usage
#
# Get usage statistics
#
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
{
    my $params = {
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_usage' } = {
        summary => 'Get usage statistics',
        params => $params,
        returns => 'HistoricalUsageAggregatedResponse',
        };
}
# @return HistoricalUsageAggregatedResponse
#
sub get_usage {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats/usage';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalUsageAggregatedResponse', $response);
    return $_response_object;
}

#
# get_usage_month
#
# Get month-to-date usage statistics
#
# @param string $year 4-digit year. (optional)
# @param string $month 2-digit month. (optional)
# @param boolean $billable_units If &#x60;true&#x60;, return results as billable units. (optional)
{
    my $params = {
    'year' => {
        data_type => 'string',
        description => '4-digit year.',
        required => '0',
    },
    'month' => {
        data_type => 'string',
        description => '2-digit month.',
        required => '0',
    },
    'billable_units' => {
        data_type => 'boolean',
        description => 'If &#x60;true&#x60;, return results as billable units.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_usage_month' } = {
        summary => 'Get month-to-date usage statistics',
        params => $params,
        returns => 'HistoricalUsageMonthResponse',
        };
}
# @return HistoricalUsageMonthResponse
#
sub get_usage_month {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats/usage_by_month';

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
    if ( exists $args{'year'}) {
        $query_params->{'year'} = $self->{api_client}->to_query_value($args{'year'});
    }

    # query params
    if ( exists $args{'month'}) {
        $query_params->{'month'} = $self->{api_client}->to_query_value($args{'month'});
    }

    # query params
    if ( exists $args{'billable_units'}) {
        $query_params->{'billable_units'} = $self->{api_client}->to_query_value($args{'billable_units'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalUsageMonthResponse', $response);
    return $_response_object;
}

#
# get_usage_service
#
# Get usage statistics per service
#
# @param string $from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;.  (optional)
# @param string $to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (optional, default to 'now')
{
    my $params = {
    'from' => {
        data_type => 'string',
        description => 'Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. ',
        required => '0',
    },
    'to' => {
        data_type => 'string',
        description => 'Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_usage_service' } = {
        summary => 'Get usage statistics per service',
        params => $params,
        returns => 'HistoricalUsageServiceResponse',
        };
}
# @return HistoricalUsageServiceResponse
#
sub get_usage_service {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stats/usage_by_service';

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
    if ( exists $args{'from'}) {
        $query_params->{'from'} = $self->{api_client}->to_query_value($args{'from'});
    }

    # query params
    if ( exists $args{'to'}) {
        $query_params->{'to'} = $self->{api_client}->to_query_value($args{'to'});
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
    my $_response_object = $self->{api_client}->deserialize('HistoricalUsageServiceResponse', $response);
    return $_response_object;
}

1;
