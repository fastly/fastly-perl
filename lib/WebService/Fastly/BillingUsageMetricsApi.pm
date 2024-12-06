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
package WebService::Fastly::BillingUsageMetricsApi;

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
# get_service_level_usage
#
# Retrieve service-level usage metrics for a product.
#
# @param string $product_id The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This field is not required for CSV requests. (required)
# @param string $usage_type_name The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This field is not required for CSV requests. (required)
# @param string $start_month  (optional)
# @param string $end_month  (optional)
# @param string $limit Number of results per page. The maximum is 100. (optional, default to '5')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
{
    my $params = {
    'product_id' => {
        data_type => 'string',
        description => 'The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This field is not required for CSV requests.',
        required => '1',
    },
    'usage_type_name' => {
        data_type => 'string',
        description => 'The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This field is not required for CSV requests.',
        required => '1',
    },
    'start_month' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'end_month' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'limit' => {
        data_type => 'string',
        description => 'Number of results per page. The maximum is 100.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_service_level_usage' } = {
        summary => 'Retrieve service-level usage metrics for a product.',
        params => $params,
        returns => 'Serviceusagemetrics',
        };
}
# @return Serviceusagemetrics
#
sub get_service_level_usage {
    my ($self, %args) = @_;

    # verify the required parameter 'product_id' is set
    unless (exists $args{'product_id'}) {
      croak("Missing the required parameter 'product_id' when calling get_service_level_usage");
    }

    # verify the required parameter 'usage_type_name' is set
    unless (exists $args{'usage_type_name'}) {
      croak("Missing the required parameter 'usage_type_name' when calling get_service_level_usage");
    }

    # parse inputs
    my $_resource_path = '/billing/v3/service-usage-metrics';

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
    if ( exists $args{'product_id'}) {
        $query_params->{'product_id'} = $self->{api_client}->to_query_value($args{'product_id'});
    }

    # query params
    if ( exists $args{'usage_type_name'}) {
        $query_params->{'usage_type_name'} = $self->{api_client}->to_query_value($args{'usage_type_name'});
    }

    # query params
    if ( exists $args{'start_month'}) {
        $query_params->{'start_month'} = $self->{api_client}->to_query_value($args{'start_month'});
    }

    # query params
    if ( exists $args{'end_month'}) {
        $query_params->{'end_month'} = $self->{api_client}->to_query_value($args{'end_month'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('Serviceusagemetrics', $response);
    return $_response_object;
}

#
# get_usage_metrics
#
# Get monthly usage metrics
#
# @param string $start_month  (optional)
# @param string $end_month  (optional)
{
    my $params = {
    'start_month' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'end_month' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_usage_metrics' } = {
        summary => 'Get monthly usage metrics',
        params => $params,
        returns => 'Usagemetric',
        };
}
# @return Usagemetric
#
sub get_usage_metrics {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/billing/v3/usage-metrics';

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
    if ( exists $args{'start_month'}) {
        $query_params->{'start_month'} = $self->{api_client}->to_query_value($args{'start_month'});
    }

    # query params
    if ( exists $args{'end_month'}) {
        $query_params->{'end_month'} = $self->{api_client}->to_query_value($args{'end_month'});
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
    my $_response_object = $self->{api_client}->deserialize('Usagemetric', $response);
    return $_response_object;
}

1;
