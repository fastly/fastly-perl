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
package WebService::Fastly::AclEntryApi;

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
# bulk_update_acl_entries
#
# Update multiple ACL entries
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param BulkUpdateAclEntriesRequest $bulk_update_acl_entries_request  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'bulk_update_acl_entries_request' => {
        data_type => 'BulkUpdateAclEntriesRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_update_acl_entries' } = {
        summary => 'Update multiple ACL entries',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub bulk_update_acl_entries {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling bulk_update_acl_entries");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling bulk_update_acl_entries");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entries';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bulk_update_acl_entries_request'}) {
        $_body_data = $args{'bulk_update_acl_entries_request'};
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# create_acl_entry
#
# Create an ACL entry
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param AclEntry $acl_entry  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'acl_entry' => {
        data_type => 'AclEntry',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_acl_entry' } = {
        summary => 'Create an ACL entry',
        params => $params,
        returns => 'AclEntryResponse',
        };
}
# @return AclEntryResponse
#
sub create_acl_entry {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling create_acl_entry");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling create_acl_entry");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entry';

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

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'acl_entry'}) {
        $_body_data = $args{'acl_entry'};
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
    my $_response_object = $self->{api_client}->deserialize('AclEntryResponse', $response);
    return $_response_object;
}

#
# delete_acl_entry
#
# Delete an ACL entry
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param string $acl_entry_id Alphanumeric string identifying an ACL Entry. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'acl_entry_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying an ACL Entry.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_acl_entry' } = {
        summary => 'Delete an ACL entry',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_acl_entry {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling delete_acl_entry");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling delete_acl_entry");
    }

    # verify the required parameter 'acl_entry_id' is set
    unless (exists $args{'acl_entry_id'}) {
      croak("Missing the required parameter 'acl_entry_id' when calling delete_acl_entry");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entry/{acl_entry_id}';

    my $_method = 'DELETE';
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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_entry_id'}) {
        my $_base_variable = "{" . "acl_entry_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_entry_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# get_acl_entry
#
# Describe an ACL entry
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param string $acl_entry_id Alphanumeric string identifying an ACL Entry. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'acl_entry_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying an ACL Entry.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_acl_entry' } = {
        summary => 'Describe an ACL entry',
        params => $params,
        returns => 'AclEntryResponse',
        };
}
# @return AclEntryResponse
#
sub get_acl_entry {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling get_acl_entry");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling get_acl_entry");
    }

    # verify the required parameter 'acl_entry_id' is set
    unless (exists $args{'acl_entry_id'}) {
      croak("Missing the required parameter 'acl_entry_id' when calling get_acl_entry");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entry/{acl_entry_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_entry_id'}) {
        my $_base_variable = "{" . "acl_entry_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_entry_id'});
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
    my $_response_object = $self->{api_client}->deserialize('AclEntryResponse', $response);
    return $_response_object;
}

#
# list_acl_entries
#
# List ACL entries
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param int $page Current page. (optional)
# @param int $per_page Number of records per page. (optional, default to 20)
# @param string $sort Field on which to sort. (optional, default to 'created')
# @param string $direction Direction in which to sort results. (optional, default to 'ascend')
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page.',
        required => '0',
    },
    'per_page' => {
        data_type => 'int',
        description => 'Number of records per page.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Field on which to sort.',
        required => '0',
    },
    'direction' => {
        data_type => 'string',
        description => 'Direction in which to sort results.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_acl_entries' } = {
        summary => 'List ACL entries',
        params => $params,
        returns => 'ARRAY[AclEntryResponse]',
        };
}
# @return ARRAY[AclEntryResponse]
#
sub list_acl_entries {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling list_acl_entries");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling list_acl_entries");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entries';

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
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'per_page'}) {
        $query_params->{'per_page'} = $self->{api_client}->to_query_value($args{'per_page'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'direction'}) {
        $query_params->{'direction'} = $self->{api_client}->to_query_value($args{'direction'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[AclEntryResponse]', $response);
    return $_response_object;
}

#
# update_acl_entry
#
# Update an ACL entry
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $acl_id Alphanumeric string identifying a ACL. (required)
# @param string $acl_entry_id Alphanumeric string identifying an ACL Entry. (required)
# @param AclEntry $acl_entry  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'acl_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a ACL.',
        required => '1',
    },
    'acl_entry_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying an ACL Entry.',
        required => '1',
    },
    'acl_entry' => {
        data_type => 'AclEntry',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_acl_entry' } = {
        summary => 'Update an ACL entry',
        params => $params,
        returns => 'AclEntryResponse',
        };
}
# @return AclEntryResponse
#
sub update_acl_entry {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling update_acl_entry");
    }

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling update_acl_entry");
    }

    # verify the required parameter 'acl_entry_id' is set
    unless (exists $args{'acl_entry_id'}) {
      croak("Missing the required parameter 'acl_entry_id' when calling update_acl_entry");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/acl/{acl_id}/entry/{acl_entry_id}';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_entry_id'}) {
        my $_base_variable = "{" . "acl_entry_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_entry_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'acl_entry'}) {
        $_body_data = $args{'acl_entry'};
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
    my $_response_object = $self->{api_client}->deserialize('AclEntryResponse', $response);
    return $_response_object;
}

1;
