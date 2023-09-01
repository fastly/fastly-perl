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
package WebService::Fastly::EventsApi;

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
# get_event
#
# Get an event
#
# @param string $event_id Alphanumeric string identifying an event. (required)
{
    my $params = {
    'event_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying an event.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_event' } = {
        summary => 'Get an event',
        params => $params,
        returns => 'EventResponse',
        };
}
# @return EventResponse
#
sub get_event {
    my ($self, %args) = @_;

    # verify the required parameter 'event_id' is set
    unless (exists $args{'event_id'}) {
      croak("Missing the required parameter 'event_id' when calling get_event");
    }

    # parse inputs
    my $_resource_path = '/events/{event_id}';

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
    if ( exists $args{'event_id'}) {
        my $_base_variable = "{" . "event_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EventResponse', $response);
    return $_response_object;
}

#
# list_events
#
# List events
#
# @param string $filter[customer_id] Limit the results returned to a specific customer. (optional)
# @param string $filter[event_type] Limit the returned events to a specific &#x60;event_type&#x60;. (optional)
# @param string $filter[service_id] Limit the results returned to a specific service. (optional)
# @param string $filter[user_id] Limit the results returned to a specific user. (optional)
# @param string $filter[token_id] Limit the returned events to a specific token. (optional)
# @param string $filter[created_at] Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12).  (optional)
# @param string $filter[created_at][lte] Return events on and before a date and time in ISO 8601 format.  (optional)
# @param string $filter[created_at][lt] Return events before a date and time in ISO 8601 format.  (optional)
# @param string $filter[created_at][gte] Return events on and after a date and time in ISO 8601 format.  (optional)
# @param string $filter[created_at][gt] Return events after a date and time in ISO 8601 format.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
# @param string $sort The order in which to list the results by creation date. (optional, default to 'created_at')
{
    my $params = {
    'filter[customer_id]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific customer.',
        required => '0',
    },
    'filter[event_type]' => {
        data_type => 'string',
        description => 'Limit the returned events to a specific &#x60;event_type&#x60;.',
        required => '0',
    },
    'filter[service_id]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific service.',
        required => '0',
    },
    'filter[user_id]' => {
        data_type => 'string',
        description => 'Limit the results returned to a specific user.',
        required => '0',
    },
    'filter[token_id]' => {
        data_type => 'string',
        description => 'Limit the returned events to a specific token.',
        required => '0',
    },
    'filter[created_at]' => {
        data_type => 'string',
        description => 'Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12). ',
        required => '0',
    },
    'filter[created_at][lte]' => {
        data_type => 'string',
        description => 'Return events on and before a date and time in ISO 8601 format. ',
        required => '0',
    },
    'filter[created_at][lt]' => {
        data_type => 'string',
        description => 'Return events before a date and time in ISO 8601 format. ',
        required => '0',
    },
    'filter[created_at][gte]' => {
        data_type => 'string',
        description => 'Return events on and after a date and time in ISO 8601 format. ',
        required => '0',
    },
    'filter[created_at][gt]' => {
        data_type => 'string',
        description => 'Return events after a date and time in ISO 8601 format. ',
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
    __PACKAGE__->method_documentation->{ 'list_events' } = {
        summary => 'List events',
        params => $params,
        returns => 'EventsResponse',
        };
}
# @return EventsResponse
#
sub list_events {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/events';

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
    if ( exists $args{'filter[customer_id]'}) {
        $query_params->{'filter[customer_id]'} = $self->{api_client}->to_query_value($args{'filter[customer_id]'});
    }

    # query params
    if ( exists $args{'filter[event_type]'}) {
        $query_params->{'filter[event_type]'} = $self->{api_client}->to_query_value($args{'filter[event_type]'});
    }

    # query params
    if ( exists $args{'filter[service_id]'}) {
        $query_params->{'filter[service_id]'} = $self->{api_client}->to_query_value($args{'filter[service_id]'});
    }

    # query params
    if ( exists $args{'filter[user_id]'}) {
        $query_params->{'filter[user_id]'} = $self->{api_client}->to_query_value($args{'filter[user_id]'});
    }

    # query params
    if ( exists $args{'filter[token_id]'}) {
        $query_params->{'filter[token_id]'} = $self->{api_client}->to_query_value($args{'filter[token_id]'});
    }

    # query params
    if ( exists $args{'filter[created_at]'}) {
        $query_params->{'filter[created_at]'} = $self->{api_client}->to_query_value($args{'filter[created_at]'});
    }

    # query params
    if ( exists $args{'filter[created_at][lte]'}) {
        $query_params->{'filter[created_at][lte]'} = $self->{api_client}->to_query_value($args{'filter[created_at][lte]'});
    }

    # query params
    if ( exists $args{'filter[created_at][lt]'}) {
        $query_params->{'filter[created_at][lt]'} = $self->{api_client}->to_query_value($args{'filter[created_at][lt]'});
    }

    # query params
    if ( exists $args{'filter[created_at][gte]'}) {
        $query_params->{'filter[created_at][gte]'} = $self->{api_client}->to_query_value($args{'filter[created_at][gte]'});
    }

    # query params
    if ( exists $args{'filter[created_at][gt]'}) {
        $query_params->{'filter[created_at][gt]'} = $self->{api_client}->to_query_value($args{'filter[created_at][gt]'});
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
    my $_response_object = $self->{api_client}->deserialize('EventsResponse', $response);
    return $_response_object;
}

1;
