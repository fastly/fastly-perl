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
package WebService::Fastly::DmDomainsApi;

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
# create_dm_domain
#
# Create a domain
#
# @param RequestBodyForCreate $request_body_for_create  (optional)
{
    my $params = {
    'request_body_for_create' => {
        data_type => 'RequestBodyForCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dm_domain' } = {
        summary => 'Create a domain',
        params => $params,
        returns => 'SuccessfulResponseAsObject',
        };
}
# @return SuccessfulResponseAsObject
#
sub create_dm_domain {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/domain-management/v1/domains';

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
    if ( exists $args{'request_body_for_create'}) {
        $_body_data = $args{'request_body_for_create'};
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
    my $_response_object = $self->{api_client}->deserialize('SuccessfulResponseAsObject', $response);
    return $_response_object;
}

#
# delete_dm_domain
#
# Delete a domain
#
# @param string $domain_id  (required)
{
    my $params = {
    'domain_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dm_domain' } = {
        summary => 'Delete a domain',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dm_domain {
    my ($self, %args) = @_;

    # verify the required parameter 'domain_id' is set
    unless (exists $args{'domain_id'}) {
      croak("Missing the required parameter 'domain_id' when calling delete_dm_domain");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/domains/{domain_id}';

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
    if ( exists $args{'domain_id'}) {
        my $_base_variable = "{" . "domain_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'domain_id'});
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
# get_dm_domain
#
# Get a domain
#
# @param string $domain_id  (required)
{
    my $params = {
    'domain_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dm_domain' } = {
        summary => 'Get a domain',
        params => $params,
        returns => 'SuccessfulResponseAsObject',
        };
}
# @return SuccessfulResponseAsObject
#
sub get_dm_domain {
    my ($self, %args) = @_;

    # verify the required parameter 'domain_id' is set
    unless (exists $args{'domain_id'}) {
      croak("Missing the required parameter 'domain_id' when calling get_dm_domain");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/domains/{domain_id}';

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
    if ( exists $args{'domain_id'}) {
        my $_base_variable = "{" . "domain_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'domain_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SuccessfulResponseAsObject', $response);
    return $_response_object;
}

#
# list_dm_domains
#
# List domains
#
# @param string $fqdn  (optional)
# @param string $service_id Filter results based on a service_id. (optional)
# @param string $sort The order in which to list the results. (optional, default to 'fqdn')
# @param boolean $activated  (optional)
# @param boolean $verified  (optional)
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
{
    my $params = {
    'fqdn' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'service_id' => {
        data_type => 'string',
        description => 'Filter results based on a service_id.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
        required => '0',
    },
    'activated' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'verified' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_dm_domains' } = {
        summary => 'List domains',
        params => $params,
        returns => 'InlineResponse2007',
        };
}
# @return InlineResponse2007
#
sub list_dm_domains {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/domain-management/v1/domains';

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
    if ( exists $args{'fqdn'}) {
        $query_params->{'fqdn'} = $self->{api_client}->to_query_value($args{'fqdn'});
    }

    # query params
    if ( exists $args{'service_id'}) {
        $query_params->{'service_id'} = $self->{api_client}->to_query_value($args{'service_id'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'activated'}) {
        $query_params->{'activated'} = $self->{api_client}->to_query_value($args{'activated'});
    }

    # query params
    if ( exists $args{'verified'}) {
        $query_params->{'verified'} = $self->{api_client}->to_query_value($args{'verified'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2007', $response);
    return $_response_object;
}

#
# update_dm_domain
#
# Update a domain
#
# @param string $domain_id  (required)
# @param RequestBodyForUpdate $request_body_for_update  (optional)
{
    my $params = {
    'domain_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'request_body_for_update' => {
        data_type => 'RequestBodyForUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dm_domain' } = {
        summary => 'Update a domain',
        params => $params,
        returns => 'SuccessfulResponseAsObject',
        };
}
# @return SuccessfulResponseAsObject
#
sub update_dm_domain {
    my ($self, %args) = @_;

    # verify the required parameter 'domain_id' is set
    unless (exists $args{'domain_id'}) {
      croak("Missing the required parameter 'domain_id' when calling update_dm_domain");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/domains/{domain_id}';

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
    if ( exists $args{'domain_id'}) {
        my $_base_variable = "{" . "domain_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'domain_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_body_for_update'}) {
        $_body_data = $args{'request_body_for_update'};
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
    my $_response_object = $self->{api_client}->deserialize('SuccessfulResponseAsObject', $response);
    return $_response_object;
}

1;
