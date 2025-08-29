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
package WebService::Fastly::NgwafReportsApi;

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
# get_attacks_report
#
# Get attacks report
#
# @param DateTime $from The start of a time range in RFC 3339 format. (required)
# @param DateTime $to The end of a time range in RFC 3339 format. Defaults to the current time. (optional)
{
    my $params = {
    'from' => {
        data_type => 'DateTime',
        description => 'The start of a time range in RFC 3339 format.',
        required => '1',
    },
    'to' => {
        data_type => 'DateTime',
        description => 'The end of a time range in RFC 3339 format. Defaults to the current time.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_attacks_report' } = {
        summary => 'Get attacks report',
        params => $params,
        returns => 'ListAttackReport',
        };
}
# @return ListAttackReport
#
sub get_attacks_report {
    my ($self, %args) = @_;

    # verify the required parameter 'from' is set
    unless (exists $args{'from'}) {
      croak("Missing the required parameter 'from' when calling get_attacks_report");
    }

    # parse inputs
    my $_resource_path = '/ngwaf/v1/reports/attacks';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
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
    my $_response_object = $self->{api_client}->deserialize('ListAttackReport', $response);
    return $_response_object;
}

#
# get_signals_report
#
# Get signals report
#
# @param DateTime $from The start of a time range in RFC 3339 format. (required)
# @param DateTime $to The end of a time range in RFC 3339 format. Defaults to the current time. (optional)
# @param string $signal_type The type of signal (optional)
{
    my $params = {
    'from' => {
        data_type => 'DateTime',
        description => 'The start of a time range in RFC 3339 format.',
        required => '1',
    },
    'to' => {
        data_type => 'DateTime',
        description => 'The end of a time range in RFC 3339 format. Defaults to the current time.',
        required => '0',
    },
    'signal_type' => {
        data_type => 'string',
        description => 'The type of signal',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_signals_report' } = {
        summary => 'Get signals report',
        params => $params,
        returns => 'ListSignalReport',
        };
}
# @return ListSignalReport
#
sub get_signals_report {
    my ($self, %args) = @_;

    # verify the required parameter 'from' is set
    unless (exists $args{'from'}) {
      croak("Missing the required parameter 'from' when calling get_signals_report");
    }

    # parse inputs
    my $_resource_path = '/ngwaf/v1/reports/signals';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
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
    if ( exists $args{'signal_type'}) {
        $query_params->{'signal_type'} = $self->{api_client}->to_query_value($args{'signal_type'});
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
    my $_response_object = $self->{api_client}->deserialize('ListSignalReport', $response);
    return $_response_object;
}

1;
