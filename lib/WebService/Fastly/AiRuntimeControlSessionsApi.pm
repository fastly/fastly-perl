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
package WebService::Fastly::AiRuntimeControlSessionsApi;

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
# arc_get_session_logs
#
# Get session logs
#
# @param string $key Filter results to a specific virtual key ID. (optional)
# @param string $provider Filter results by AI provider connection ID. (optional)
# @param string $model Filter results by AI model identifier. (optional)
# @param DateTime $from The start of the time range, in RFC 3339 format. (optional)
# @param DateTime $to The end of the time range, in RFC 3339 format. Defaults to &#x60;now&#x60;. (optional)
# @param string $cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page.  (optional)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param string $sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (optional, default to 'created_at')
{
    my $params = {
    'key' => {
        data_type => 'string',
        description => 'Filter results to a specific virtual key ID.',
        required => '0',
    },
    'provider' => {
        data_type => 'string',
        description => 'Filter results by AI provider connection ID.',
        required => '0',
    },
    'model' => {
        data_type => 'string',
        description => 'Filter results by AI model identifier.',
        required => '0',
    },
    'from' => {
        data_type => 'DateTime',
        description => 'The start of the time range, in RFC 3339 format.',
        required => '0',
    },
    'to' => {
        data_type => 'DateTime',
        description => 'The end of the time range, in RFC 3339 format. Defaults to &#x60;now&#x60;.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. ',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;). ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'arc_get_session_logs' } = {
        summary => 'Get session logs',
        params => $params,
        returns => 'ArcSessionsResponse',
        };
}
# @return ArcSessionsResponse
#
sub arc_get_session_logs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/ai-runtime-control/v1/sessions';

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
    if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
    }

    # query params
    if ( exists $args{'provider'}) {
        $query_params->{'provider'} = $self->{api_client}->to_query_value($args{'provider'});
    }

    # query params
    if ( exists $args{'model'}) {
        $query_params->{'model'} = $self->{api_client}->to_query_value($args{'model'});
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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
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
    my $_response_object = $self->{api_client}->deserialize('ArcSessionsResponse', $response);
    return $_response_object;
}

1;
