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
package WebService::Fastly::StarApi;

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
# create_service_star
#
# Create a star
#
# @param Star $star  (optional)
{
    my $params = {
    'star' => {
        data_type => 'Star',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_service_star' } = {
        summary => 'Create a star',
        params => $params,
        returns => 'StarResponse',
        };
}
# @return StarResponse
#
sub create_service_star {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stars';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    my $_body_data;
    # body params
    if ( exists $args{'star'}) {
        $_body_data = $args{'star'};
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
    my $_response_object = $self->{api_client}->deserialize('StarResponse', $response);
    return $_response_object;
}

#
# delete_service_star
#
# Delete a star
#
# @param string $star_id Alphanumeric string identifying a star. (required)
{
    my $params = {
    'star_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a star.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_service_star' } = {
        summary => 'Delete a star',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_service_star {
    my ($self, %args) = @_;

    # verify the required parameter 'star_id' is set
    unless (exists $args{'star_id'}) {
      croak("Missing the required parameter 'star_id' when calling delete_service_star");
    }

    # parse inputs
    my $_resource_path = '/stars/{star_id}';

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
    if ( exists $args{'star_id'}) {
        my $_base_variable = "{" . "star_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'star_id'});
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
# get_service_star
#
# Get a star
#
# @param string $star_id Alphanumeric string identifying a star. (required)
{
    my $params = {
    'star_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a star.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_service_star' } = {
        summary => 'Get a star',
        params => $params,
        returns => 'StarResponse',
        };
}
# @return StarResponse
#
sub get_service_star {
    my ($self, %args) = @_;

    # verify the required parameter 'star_id' is set
    unless (exists $args{'star_id'}) {
      croak("Missing the required parameter 'star_id' when calling get_service_star");
    }

    # parse inputs
    my $_resource_path = '/stars/{star_id}';

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
    if ( exists $args{'star_id'}) {
        my $_base_variable = "{" . "star_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'star_id'});
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
    my $_response_object = $self->{api_client}->deserialize('StarResponse', $response);
    return $_response_object;
}

#
# list_service_stars
#
# List stars
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_service_stars' } = {
        summary => 'List stars',
        params => $params,
        returns => 'Pagination',
        };
}
# @return Pagination
#
sub list_service_stars {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/stars';

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
    my $_response_object = $self->{api_client}->deserialize('Pagination', $response);
    return $_response_object;
}

1;
