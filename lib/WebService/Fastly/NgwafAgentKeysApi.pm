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
package WebService::Fastly::NgwafAgentKeysApi;

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
# ngwaf_list_agent_keys
#
# List agent keys for a workspace
#
# @param string $workspace_id The ID of the workspace. (required)
{
    my $params = {
    'workspace_id' => {
        data_type => 'string',
        description => 'The ID of the workspace.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ngwaf_list_agent_keys' } = {
        summary => 'List agent keys for a workspace',
        params => $params,
        returns => 'InlineResponse20019',
        };
}
# @return InlineResponse20019
#
sub ngwaf_list_agent_keys {
    my ($self, %args) = @_;

    # verify the required parameter 'workspace_id' is set
    unless (exists $args{'workspace_id'}) {
      croak("Missing the required parameter 'workspace_id' when calling ngwaf_list_agent_keys");
    }

    # parse inputs
    my $_resource_path = '/ngwaf/v1/workspaces/{workspace_id}/agent-keys';

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

    # path params
    if ( exists $args{'workspace_id'}) {
        my $_base_variable = "{" . "workspace_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'workspace_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20019', $response);
    return $_response_object;
}

1;
