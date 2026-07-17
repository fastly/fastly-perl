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
package WebService::Fastly::ClientSideProtectionApi;

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
# csp_create_page
#
# Create page
#
# @param PageCreate $page_create  (optional)
{
    my $params = {
    'page_create' => {
        data_type => 'PageCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_create_page' } = {
        summary => 'Create page',
        params => $params,
        returns => 'Page',
        };
}
# @return Page
#
sub csp_create_page {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'page_create'}) {
        $_body_data = $args{'page_create'};
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
    my $_response_object = $self->{api_client}->deserialize('Page', $response);
    return $_response_object;
}

#
# csp_create_policy
#
# Create policy
#
# @param string $page_id Page identifier (required)
# @param PolicyCreate $policy_create  (optional)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'policy_create' => {
        data_type => 'PolicyCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_create_policy' } = {
        summary => 'Create policy',
        params => $params,
        returns => 'Policy',
        };
}
# @return Policy
#
sub csp_create_policy {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_create_policy");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/policies';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'policy_create'}) {
        $_body_data = $args{'policy_create'};
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
    my $_response_object = $self->{api_client}->deserialize('Policy', $response);
    return $_response_object;
}

#
# csp_create_website
#
# Create website
#
# @param WebsiteCreate $website_create  (optional)
{
    my $params = {
    'website_create' => {
        data_type => 'WebsiteCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_create_website' } = {
        summary => 'Create website',
        params => $params,
        returns => 'Website',
        };
}
# @return Website
#
sub csp_create_website {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/websites';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'website_create'}) {
        $_body_data = $args{'website_create'};
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
    my $_response_object = $self->{api_client}->deserialize('Website', $response);
    return $_response_object;
}

#
# csp_delete_page
#
# Delete page
#
# @param string $page_id Page identifier (required)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_delete_page' } = {
        summary => 'Delete page',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub csp_delete_page {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_delete_page");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
# csp_delete_website
#
# Delete website
#
# @param string $website_id Website identifier (required)
{
    my $params = {
    'website_id' => {
        data_type => 'string',
        description => 'Website identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_delete_website' } = {
        summary => 'Delete website',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub csp_delete_website {
    my ($self, %args) = @_;

    # verify the required parameter 'website_id' is set
    unless (exists $args{'website_id'}) {
      croak("Missing the required parameter 'website_id' when calling csp_delete_website");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/websites/{website_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'website_id'}) {
        my $_base_variable = "{" . "website_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'website_id'});
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
# csp_get_page
#
# Get page
#
# @param string $page_id Page identifier (required)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_get_page' } = {
        summary => 'Get page',
        params => $params,
        returns => 'Page',
        };
}
# @return Page
#
sub csp_get_page {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_get_page");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}';

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
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Page', $response);
    return $_response_object;
}

#
# csp_get_policy
#
# Get policy
#
# @param string $page_id Page identifier (required)
# @param string $policy_id Policy identifier (required)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'policy_id' => {
        data_type => 'string',
        description => 'Policy identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_get_policy' } = {
        summary => 'Get policy',
        params => $params,
        returns => 'Policy',
        };
}
# @return Policy
#
sub csp_get_policy {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_get_policy");
    }

    # verify the required parameter 'policy_id' is set
    unless (exists $args{'policy_id'}) {
      croak("Missing the required parameter 'policy_id' when calling csp_get_policy");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}';

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
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'policy_id'}) {
        my $_base_variable = "{" . "policy_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'policy_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Policy', $response);
    return $_response_object;
}

#
# csp_get_script
#
# Get script
#
# @param string $page_id Page identifier (required)
# @param string $script_id Script identifier (required)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'script_id' => {
        data_type => 'string',
        description => 'Script identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_get_script' } = {
        summary => 'Get script',
        params => $params,
        returns => 'Script',
        };
}
# @return Script
#
sub csp_get_script {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_get_script");
    }

    # verify the required parameter 'script_id' is set
    unless (exists $args{'script_id'}) {
      croak("Missing the required parameter 'script_id' when calling csp_get_script");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/scripts/{script_id}';

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
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'script_id'}) {
        my $_base_variable = "{" . "script_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'script_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Script', $response);
    return $_response_object;
}

#
# csp_get_website
#
# Get website
#
# @param string $website_id Website identifier (required)
{
    my $params = {
    'website_id' => {
        data_type => 'string',
        description => 'Website identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_get_website' } = {
        summary => 'Get website',
        params => $params,
        returns => 'Website',
        };
}
# @return Website
#
sub csp_get_website {
    my ($self, %args) = @_;

    # verify the required parameter 'website_id' is set
    unless (exists $args{'website_id'}) {
      croak("Missing the required parameter 'website_id' when calling csp_get_website");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/websites/{website_id}';

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
    if ( exists $args{'website_id'}) {
        my $_base_variable = "{" . "website_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'website_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Website', $response);
    return $_response_object;
}

#
# csp_list_header_events
#
# List header events
#
# @param string $page_id Page identifier (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_header_events' } = {
        summary => 'List header events',
        params => $params,
        returns => 'InlineResponse20011',
        };
}
# @return InlineResponse20011
#
sub csp_list_header_events {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_list_header_events");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/events';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20011', $response);
    return $_response_object;
}

#
# csp_list_headers
#
# List security headers
#
# @param string $page_id Page identifier (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_headers' } = {
        summary => 'List security headers',
        params => $params,
        returns => 'InlineResponse20010',
        };
}
# @return InlineResponse20010
#
sub csp_list_headers {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_list_headers");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/headers';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20010', $response);
    return $_response_object;
}

#
# csp_list_pages
#
# List pages
#
# @param string $website_id Filter pages by website ID (optional)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'website_id' => {
        data_type => 'string',
        description => 'Filter pages by website ID',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_pages' } = {
        summary => 'List pages',
        params => $params,
        returns => 'InlineResponse2006',
        };
}
# @return InlineResponse2006
#
sub csp_list_pages {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages';

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
    if ( exists $args{'website_id'}) {
        $query_params->{'website_id'} = $self->{api_client}->to_query_value($args{'website_id'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2006', $response);
    return $_response_object;
}

#
# csp_list_policies
#
# List policies
#
# @param string $page_id Page identifier (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_policies' } = {
        summary => 'List policies',
        params => $params,
        returns => 'InlineResponse2008',
        };
}
# @return InlineResponse2008
#
sub csp_list_policies {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_list_policies");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/policies';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2008', $response);
    return $_response_object;
}

#
# csp_list_policy_reports
#
# List policy reports
#
# @param string $page_id Page identifier (required)
# @param string $policy_id Policy identifier (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'policy_id' => {
        data_type => 'string',
        description => 'Policy identifier',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_policy_reports' } = {
        summary => 'List policy reports',
        params => $params,
        returns => 'InlineResponse2009',
        };
}
# @return InlineResponse2009
#
sub csp_list_policy_reports {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_list_policy_reports");
    }

    # verify the required parameter 'policy_id' is set
    unless (exists $args{'policy_id'}) {
      croak("Missing the required parameter 'policy_id' when calling csp_list_policy_reports");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}/reports';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'policy_id'}) {
        my $_base_variable = "{" . "policy_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'policy_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2009', $response);
    return $_response_object;
}

#
# csp_list_scripts
#
# List scripts
#
# @param string $page_id Page identifier (required)
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_scripts' } = {
        summary => 'List scripts',
        params => $params,
        returns => 'InlineResponse2007',
        };
}
# @return InlineResponse2007
#
sub csp_list_scripts {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_list_scripts");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/scripts';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2007', $response);
    return $_response_object;
}

#
# csp_list_websites
#
# List websites
#
# @param int $limit Limit how many results are returned. (optional, default to 100)
# @param int $page Page number of the collection to request. (optional, default to 0)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Limit how many results are returned.',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number of the collection to request.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_list_websites' } = {
        summary => 'List websites',
        params => $params,
        returns => 'InlineResponse2005',
        };
}
# @return InlineResponse2005
#
sub csp_list_websites {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/websites';

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
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2005', $response);
    return $_response_object;
}

#
# csp_update_page
#
# Update page
#
# @param string $page_id Page identifier (required)
# @param PageUpdate $page_update  (optional)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'page_update' => {
        data_type => 'PageUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_update_page' } = {
        summary => 'Update page',
        params => $params,
        returns => 'Page',
        };
}
# @return Page
#
sub csp_update_page {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_update_page");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'page_update'}) {
        $_body_data = $args{'page_update'};
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
    my $_response_object = $self->{api_client}->deserialize('Page', $response);
    return $_response_object;
}

#
# csp_update_policy
#
# Update policy
#
# @param string $page_id Page identifier (required)
# @param string $policy_id Policy identifier (required)
# @param PolicyUpdate $policy_update  (optional)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'policy_id' => {
        data_type => 'string',
        description => 'Policy identifier',
        required => '1',
    },
    'policy_update' => {
        data_type => 'PolicyUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_update_policy' } = {
        summary => 'Update policy',
        params => $params,
        returns => 'Policy',
        };
}
# @return Policy
#
sub csp_update_policy {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_update_policy");
    }

    # verify the required parameter 'policy_id' is set
    unless (exists $args{'policy_id'}) {
      croak("Missing the required parameter 'policy_id' when calling csp_update_policy");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'policy_id'}) {
        my $_base_variable = "{" . "policy_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'policy_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'policy_update'}) {
        $_body_data = $args{'policy_update'};
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
    my $_response_object = $self->{api_client}->deserialize('Policy', $response);
    return $_response_object;
}

#
# csp_update_script
#
# Update script
#
# @param string $page_id Page identifier (required)
# @param string $script_id Script identifier (required)
# @param ScriptUpdate $script_update  (optional)
{
    my $params = {
    'page_id' => {
        data_type => 'string',
        description => 'Page identifier',
        required => '1',
    },
    'script_id' => {
        data_type => 'string',
        description => 'Script identifier',
        required => '1',
    },
    'script_update' => {
        data_type => 'ScriptUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_update_script' } = {
        summary => 'Update script',
        params => $params,
        returns => 'Script',
        };
}
# @return Script
#
sub csp_update_script {
    my ($self, %args) = @_;

    # verify the required parameter 'page_id' is set
    unless (exists $args{'page_id'}) {
      croak("Missing the required parameter 'page_id' when calling csp_update_script");
    }

    # verify the required parameter 'script_id' is set
    unless (exists $args{'script_id'}) {
      croak("Missing the required parameter 'script_id' when calling csp_update_script");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/pages/{page_id}/scripts/{script_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'page_id'}) {
        my $_base_variable = "{" . "page_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'page_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'script_id'}) {
        my $_base_variable = "{" . "script_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'script_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'script_update'}) {
        $_body_data = $args{'script_update'};
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
    my $_response_object = $self->{api_client}->deserialize('Script', $response);
    return $_response_object;
}

#
# csp_update_website
#
# Update website
#
# @param string $website_id Website identifier (required)
# @param WebsiteUpdate $website_update  (optional)
{
    my $params = {
    'website_id' => {
        data_type => 'string',
        description => 'Website identifier',
        required => '1',
    },
    'website_update' => {
        data_type => 'WebsiteUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'csp_update_website' } = {
        summary => 'Update website',
        params => $params,
        returns => 'Website',
        };
}
# @return Website
#
sub csp_update_website {
    my ($self, %args) = @_;

    # verify the required parameter 'website_id' is set
    unless (exists $args{'website_id'}) {
      croak("Missing the required parameter 'website_id' when calling csp_update_website");
    }

    # parse inputs
    my $_resource_path = '/client-side-protection/v1/websites/{website_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/problem+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'website_id'}) {
        my $_base_variable = "{" . "website_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'website_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'website_update'}) {
        $_body_data = $args{'website_update'};
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
    my $_response_object = $self->{api_client}->deserialize('Website', $response);
    return $_response_object;
}

1;
