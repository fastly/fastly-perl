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
package WebService::Fastly::StatsApi;

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
# get_service_stats
#
# Get stats for a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $month 2-digit month. (optional)
# @param string $year 4-digit year. (optional)
# @param int $start_time Epoch timestamp. Limits the results returned. (optional)
# @param int $end_time Epoch timestamp. Limits the results returned. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'month' => {
        data_type => 'string',
        description => '2-digit month.',
        required => '0',
    },
    'year' => {
        data_type => 'string',
        description => '4-digit year.',
        required => '0',
    },
    'start_time' => {
        data_type => 'int',
        description => 'Epoch timestamp. Limits the results returned.',
        required => '0',
    },
    'end_time' => {
        data_type => 'int',
        description => 'Epoch timestamp. Limits the results returned.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_service_stats' } = {
        summary => 'Get stats for a service',
        params => $params,
        returns => 'Stats',
        };
}
# @return Stats
#
sub get_service_stats {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_service_stats");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/stats/summary';

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
    if ( exists $args{'month'}) {
        $query_params->{'month'} = $self->{api_client}->to_query_value($args{'month'});
    }

    # query params
    if ( exists $args{'year'}) {
        $query_params->{'year'} = $self->{api_client}->to_query_value($args{'year'});
    }

    # query params
    if ( exists $args{'start_time'}) {
        $query_params->{'start_time'} = $self->{api_client}->to_query_value($args{'start_time'});
    }

    # query params
    if ( exists $args{'end_time'}) {
        $query_params->{'end_time'} = $self->{api_client}->to_query_value($args{'end_time'});
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
    my $_response_object = $self->{api_client}->deserialize('Stats', $response);
    return $_response_object;
}

1;
