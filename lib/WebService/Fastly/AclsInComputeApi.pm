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
package WebService::Fastly::AclsInComputeApi;

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
# compute_acl_create_acls
#
# Create a new ACL
#
# @param ComputeAclCreateAclsRequest $compute_acl_create_acls_request  (optional)
{
    my $params = {
    'compute_acl_create_acls_request' => {
        data_type => 'ComputeAclCreateAclsRequest',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_create_acls' } = {
        summary => 'Create a new ACL',
        params => $params,
        returns => 'ComputeAclCreateAclsResponse',
        };
}
# @return ComputeAclCreateAclsResponse
#
sub compute_acl_create_acls {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/acls';

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
    if ( exists $args{'compute_acl_create_acls_request'}) {
        $_body_data = $args{'compute_acl_create_acls_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ComputeAclCreateAclsResponse', $response);
    return $_response_object;
}

#
# compute_acl_delete_s_acl_id
#
# Delete an ACL
#
# @param string $acl_id  (required)
{
    my $params = {
    'acl_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_delete_s_acl_id' } = {
        summary => 'Delete an ACL',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub compute_acl_delete_s_acl_id {
    my ($self, %args) = @_;

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling compute_acl_delete_s_acl_id");
    }

    # parse inputs
    my $_resource_path = '/resources/acls/{acl_id}';

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
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
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
# compute_acl_list_acl_entries
#
# List an ACL
#
# @param string $acl_id  (required)
# @param string $cursor  (optional)
# @param int $limit  (optional, default to 100)
{
    my $params = {
    'acl_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'cursor' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_list_acl_entries' } = {
        summary => 'List an ACL',
        params => $params,
        returns => 'ComputeAclListEntries',
        };
}
# @return ComputeAclListEntries
#
sub compute_acl_list_acl_entries {
    my ($self, %args) = @_;

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling compute_acl_list_acl_entries");
    }

    # parse inputs
    my $_resource_path = '/resources/acls/{acl_id}/entries';

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
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
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
    my $_response_object = $self->{api_client}->deserialize('ComputeAclListEntries', $response);
    return $_response_object;
}

#
# compute_acl_list_acls
#
# List ACLs
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_list_acls' } = {
        summary => 'List ACLs',
        params => $params,
        returns => 'ARRAY[ComputeAclCreateAclsResponse]',
        };
}
# @return ARRAY[ComputeAclCreateAclsResponse]
#
sub compute_acl_list_acls {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/resources/acls';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ComputeAclCreateAclsResponse]', $response);
    return $_response_object;
}

#
# compute_acl_list_acls_s_acl_id
#
# Describe an ACL
#
# @param string $acl_id  (required)
{
    my $params = {
    'acl_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_list_acls_s_acl_id' } = {
        summary => 'Describe an ACL',
        params => $params,
        returns => 'ComputeAclCreateAclsResponse',
        };
}
# @return ComputeAclCreateAclsResponse
#
sub compute_acl_list_acls_s_acl_id {
    my ($self, %args) = @_;

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling compute_acl_list_acls_s_acl_id");
    }

    # parse inputs
    my $_resource_path = '/resources/acls/{acl_id}';

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
    my $_response_object = $self->{api_client}->deserialize('ComputeAclCreateAclsResponse', $response);
    return $_response_object;
}

#
# compute_acl_lookup_acls
#
# Lookup an ACL
#
# @param string $acl_id  (required)
# @param string $acl_ip  (required)
{
    my $params = {
    'acl_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'acl_ip' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_lookup_acls' } = {
        summary => 'Lookup an ACL',
        params => $params,
        returns => 'ComputeAclLookup',
        };
}
# @return ComputeAclLookup
#
sub compute_acl_lookup_acls {
    my ($self, %args) = @_;

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling compute_acl_lookup_acls");
    }

    # verify the required parameter 'acl_ip' is set
    unless (exists $args{'acl_ip'}) {
      croak("Missing the required parameter 'acl_ip' when calling compute_acl_lookup_acls");
    }

    # parse inputs
    my $_resource_path = '/resources/acls/{acl_id}/entry/{acl_ip}';

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
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acl_ip'}) {
        my $_base_variable = "{" . "acl_ip" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_ip'});
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
    my $_response_object = $self->{api_client}->deserialize('ComputeAclLookup', $response);
    return $_response_object;
}

#
# compute_acl_update_acls
#
# Update an ACL
#
# @param string $acl_id  (required)
# @param ARRAY[ComputeAclUpdateEntry] $compute_acl_update_entry  (optional)
{
    my $params = {
    'acl_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'compute_acl_update_entry' => {
        data_type => 'ARRAY[ComputeAclUpdateEntry]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'compute_acl_update_acls' } = {
        summary => 'Update an ACL',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub compute_acl_update_acls {
    my ($self, %args) = @_;

    # verify the required parameter 'acl_id' is set
    unless (exists $args{'acl_id'}) {
      croak("Missing the required parameter 'acl_id' when calling compute_acl_update_acls");
    }

    # parse inputs
    my $_resource_path = '/resources/acls/{acl_id}/entries';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'acl_id'}) {
        my $_base_variable = "{" . "acl_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acl_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'compute_acl_update_entry'}) {
        $_body_data = $args{'compute_acl_update_entry'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
