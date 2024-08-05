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
package WebService::Fastly::ObservabilityCustomDashboardsApi;

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
# create_dashboard
#
# Create a new dashboard
#
# @param CreateDashboardRequest $create_dashboard_request  (optional)
{
    my $params = {
    'create_dashboard_request' => {
        data_type => 'CreateDashboardRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dashboard' } = {
        summary => 'Create a new dashboard',
        params => $params,
        returns => 'Dashboard',
        };
}
# @return Dashboard
#
sub create_dashboard {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/observability/dashboards';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'create_dashboard_request'}) {
        $_body_data = $args{'create_dashboard_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Dashboard', $response);
    return $_response_object;
}

#
# delete_dashboard
#
# Delete an existing dashboard
#
# @param string $dashboard_id  (required)
{
    my $params = {
    'dashboard_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dashboard' } = {
        summary => 'Delete an existing dashboard',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dashboard {
    my ($self, %args) = @_;

    # verify the required parameter 'dashboard_id' is set
    unless (exists $args{'dashboard_id'}) {
      croak("Missing the required parameter 'dashboard_id' when calling delete_dashboard");
    }

    # parse inputs
    my $_resource_path = '/observability/dashboards/{dashboard_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'dashboard_id'}) {
        my $_base_variable = "{" . "dashboard_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dashboard_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_dashboard
#
# Retrieve a dashboard by ID
#
# @param string $dashboard_id  (required)
{
    my $params = {
    'dashboard_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dashboard' } = {
        summary => 'Retrieve a dashboard by ID',
        params => $params,
        returns => 'Dashboard',
        };
}
# @return Dashboard
#
sub get_dashboard {
    my ($self, %args) = @_;

    # verify the required parameter 'dashboard_id' is set
    unless (exists $args{'dashboard_id'}) {
      croak("Missing the required parameter 'dashboard_id' when calling get_dashboard");
    }

    # parse inputs
    my $_resource_path = '/observability/dashboards/{dashboard_id}';

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

    # path params
    if ( exists $args{'dashboard_id'}) {
        my $_base_variable = "{" . "dashboard_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dashboard_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Dashboard', $response);
    return $_response_object;
}

#
# list_dashboards
#
# List all custom dashboards
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_dashboards' } = {
        summary => 'List all custom dashboards',
        params => $params,
        returns => 'ListDashboardsResponse',
        };
}
# @return ListDashboardsResponse
#
sub list_dashboards {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/observability/dashboards';

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
    my $_response_object = $self->{api_client}->deserialize('ListDashboardsResponse', $response);
    return $_response_object;
}

#
# update_dashboard
#
# Update an existing dashboard
#
# @param string $dashboard_id  (required)
# @param UpdateDashboardRequest $update_dashboard_request  (optional)
{
    my $params = {
    'dashboard_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'update_dashboard_request' => {
        data_type => 'UpdateDashboardRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dashboard' } = {
        summary => 'Update an existing dashboard',
        params => $params,
        returns => 'Dashboard',
        };
}
# @return Dashboard
#
sub update_dashboard {
    my ($self, %args) = @_;

    # verify the required parameter 'dashboard_id' is set
    unless (exists $args{'dashboard_id'}) {
      croak("Missing the required parameter 'dashboard_id' when calling update_dashboard");
    }

    # parse inputs
    my $_resource_path = '/observability/dashboards/{dashboard_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'dashboard_id'}) {
        my $_base_variable = "{" . "dashboard_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'dashboard_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_dashboard_request'}) {
        $_body_data = $args{'update_dashboard_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Dashboard', $response);
    return $_response_object;
}

1;
