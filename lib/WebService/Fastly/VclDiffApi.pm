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
package WebService::Fastly::VclDiffApi;

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
# vcl_diff_service_versions
#
# Get a comparison of the VCL changes between two service versions
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $from_version_id The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc). (required)
# @param int $to_version_id The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as &#x60;from&#x60;. (required)
# @param string $format Optional method to format the diff field. (optional, default to 'text')
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'from_version_id' => {
        data_type => 'int',
        description => 'The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc).',
        required => '1',
    },
    'to_version_id' => {
        data_type => 'int',
        description => 'The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as &#x60;from&#x60;.',
        required => '1',
    },
    'format' => {
        data_type => 'string',
        description => 'Optional method to format the diff field.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'vcl_diff_service_versions' } = {
        summary => 'Get a comparison of the VCL changes between two service versions',
        params => $params,
        returns => 'VclDiff',
        };
}
# @return VclDiff
#
sub vcl_diff_service_versions {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling vcl_diff_service_versions");
    }

    # verify the required parameter 'from_version_id' is set
    unless (exists $args{'from_version_id'}) {
      croak("Missing the required parameter 'from_version_id' when calling vcl_diff_service_versions");
    }

    # verify the required parameter 'to_version_id' is set
    unless (exists $args{'to_version_id'}) {
      croak("Missing the required parameter 'to_version_id' when calling vcl_diff_service_versions");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/vcl/diff/from/{from_version_id}/to/{to_version_id}';

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
    if ( exists $args{'format'}) {
        $query_params->{'format'} = $self->{api_client}->to_query_value($args{'format'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'from_version_id'}) {
        my $_base_variable = "{" . "from_version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'from_version_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'to_version_id'}) {
        my $_base_variable = "{" . "to_version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'to_version_id'});
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
    my $_response_object = $self->{api_client}->deserialize('VclDiff', $response);
    return $_response_object;
}

1;
