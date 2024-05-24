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
package WebService::Fastly::InvitationsApi;

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
# create_invitation
#
# Create an invitation
#
# @param Invitation $invitation  (optional)
{
    my $params = {
    'invitation' => {
        data_type => 'Invitation',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_invitation' } = {
        summary => 'Create an invitation',
        params => $params,
        returns => 'InvitationResponse',
        };
}
# @return InvitationResponse
#
sub create_invitation {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invitations';

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
    if ( exists $args{'invitation'}) {
        $_body_data = $args{'invitation'};
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
    my $_response_object = $self->{api_client}->deserialize('InvitationResponse', $response);
    return $_response_object;
}

#
# delete_invitation
#
# Delete an invitation
#
# @param string $invitation_id Alphanumeric string identifying an invitation. (required)
{
    my $params = {
    'invitation_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying an invitation.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_invitation' } = {
        summary => 'Delete an invitation',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_invitation {
    my ($self, %args) = @_;

    # verify the required parameter 'invitation_id' is set
    unless (exists $args{'invitation_id'}) {
      croak("Missing the required parameter 'invitation_id' when calling delete_invitation");
    }

    # parse inputs
    my $_resource_path = '/invitations/{invitation_id}';

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
    if ( exists $args{'invitation_id'}) {
        my $_base_variable = "{" . "invitation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'invitation_id'});
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
# list_invitations
#
# List invitations
#
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
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
    };
    __PACKAGE__->method_documentation->{ 'list_invitations' } = {
        summary => 'List invitations',
        params => $params,
        returns => 'InvitationsResponse',
        };
}
# @return InvitationsResponse
#
sub list_invitations {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invitations';

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
    if ( exists $args{'page[number]'}) {
        $query_params->{'page[number]'} = $self->{api_client}->to_query_value($args{'page[number]'});
    }

    # query params
    if ( exists $args{'page[size]'}) {
        $query_params->{'page[size]'} = $self->{api_client}->to_query_value($args{'page[size]'});
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
    my $_response_object = $self->{api_client}->deserialize('InvitationsResponse', $response);
    return $_response_object;
}

1;
