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
package WebService::Fastly::DmRoutingConfigsApi;

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
# activate_dm_routing_config_draft
#
# Activate the draft
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'activate_dm_routing_config_draft' } = {
        summary => 'Activate the draft',
        params => $params,
        returns => 'RoutingConfigVersionResponse',
        };
}
# @return RoutingConfigVersionResponse
#
sub activate_dm_routing_config_draft {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling activate_dm_routing_config_draft");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/activate';

    my $_method = 'POST';
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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigVersionResponse', $response);
    return $_response_object;
}

#
# create_dm_routing_config
#
# Create a routing config
#
# @param RoutingConfig $routing_config  (optional)
{
    my $params = {
    'routing_config' => {
        data_type => 'RoutingConfig',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dm_routing_config' } = {
        summary => 'Create a routing config',
        params => $params,
        returns => 'RoutingConfigResponse',
        };
}
# @return RoutingConfigResponse
#
sub create_dm_routing_config {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs';

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
    if ( exists $args{'routing_config'}) {
        $_body_data = $args{'routing_config'};
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigResponse', $response);
    return $_response_object;
}

#
# create_dm_routing_config_path
#
# Create a path
#
# @param string $config_id  (required)
# @param PathCreate $path_create  (optional)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_create' => {
        data_type => 'PathCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dm_routing_config_path' } = {
        summary => 'Create a path',
        params => $params,
        returns => 'PathResponse',
        };
}
# @return PathResponse
#
sub create_dm_routing_config_path {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling create_dm_routing_config_path");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'path_create'}) {
        $_body_data = $args{'path_create'};
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
    my $_response_object = $self->{api_client}->deserialize('PathResponse', $response);
    return $_response_object;
}

#
# create_dm_routing_config_rule
#
# Create a rule
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param RuleCreate $rule_create  (optional)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'rule_create' => {
        data_type => 'RuleCreate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_dm_routing_config_rule' } = {
        summary => 'Create a rule',
        params => $params,
        returns => 'RuleResponse',
        };
}
# @return RuleResponse
#
sub create_dm_routing_config_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling create_dm_routing_config_rule");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling create_dm_routing_config_rule");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'rule_create'}) {
        $_body_data = $args{'rule_create'};
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
    my $_response_object = $self->{api_client}->deserialize('RuleResponse', $response);
    return $_response_object;
}

#
# deactivate_dm_routing_config
#
# Deactivate a routing config
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'deactivate_dm_routing_config' } = {
        summary => 'Deactivate a routing config',
        params => $params,
        returns => 'RoutingConfigResponse',
        };
}
# @return RoutingConfigResponse
#
sub deactivate_dm_routing_config {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling deactivate_dm_routing_config");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/deactivate';

    my $_method = 'POST';
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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigResponse', $response);
    return $_response_object;
}

#
# delete_dm_routing_config
#
# Delete a routing config
#
# @param string $config_id  (required)
# @param boolean $force When &#x60;true&#x60;, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately. (optional, default to false)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'force' => {
        data_type => 'boolean',
        description => 'When &#x60;true&#x60;, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dm_routing_config' } = {
        summary => 'Delete a routing config',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dm_routing_config {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling delete_dm_routing_config");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}';

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

    # query params
    if ( exists $args{'force'}) {
        $query_params->{'force'} = $self->{api_client}->to_query_value($args{'force'});
    }

    # path params
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
# delete_dm_routing_config_inactive_versions
#
# Delete inactive versions
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dm_routing_config_inactive_versions' } = {
        summary => 'Delete inactive versions',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dm_routing_config_inactive_versions {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling delete_dm_routing_config_inactive_versions");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/versions/inactive';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
# delete_dm_routing_config_path
#
# Delete a path
#
# @param string $config_id  (required)
# @param string $path_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dm_routing_config_path' } = {
        summary => 'Delete a path',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dm_routing_config_path {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling delete_dm_routing_config_path");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling delete_dm_routing_config_path");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
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
# delete_dm_routing_config_rule
#
# Delete a rule
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param string $rule_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'rule_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_dm_routing_config_rule' } = {
        summary => 'Delete a rule',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_dm_routing_config_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling delete_dm_routing_config_rule");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling delete_dm_routing_config_rule");
    }

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling delete_dm_routing_config_rule");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
# discard_dm_routing_config_draft
#
# Discard the draft
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discard_dm_routing_config_draft' } = {
        summary => 'Discard the draft',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub discard_dm_routing_config_draft {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling discard_dm_routing_config_draft");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/draft';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
# get_dm_routing_config
#
# Get a routing config
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dm_routing_config' } = {
        summary => 'Get a routing config',
        params => $params,
        returns => 'RoutingConfigResponse',
        };
}
# @return RoutingConfigResponse
#
sub get_dm_routing_config {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling get_dm_routing_config");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigResponse', $response);
    return $_response_object;
}

#
# get_dm_routing_config_draft_diff
#
# Get the draft diff
#
# @param string $config_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dm_routing_config_draft_diff' } = {
        summary => 'Get the draft diff',
        params => $params,
        returns => 'DraftDiff',
        };
}
# @return DraftDiff
#
sub get_dm_routing_config_draft_diff {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling get_dm_routing_config_draft_diff");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/draft/diff';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DraftDiff', $response);
    return $_response_object;
}

#
# get_dm_routing_config_path
#
# Get a path
#
# @param string $config_id  (required)
# @param string $path_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dm_routing_config_path' } = {
        summary => 'Get a path',
        params => $params,
        returns => 'PathResponse',
        };
}
# @return PathResponse
#
sub get_dm_routing_config_path {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling get_dm_routing_config_path");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling get_dm_routing_config_path");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PathResponse', $response);
    return $_response_object;
}

#
# get_dm_routing_config_rule
#
# Get a rule
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param string $rule_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'rule_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dm_routing_config_rule' } = {
        summary => 'Get a rule',
        params => $params,
        returns => 'RuleResponse',
        };
}
# @return RuleResponse
#
sub get_dm_routing_config_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling get_dm_routing_config_rule");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling get_dm_routing_config_rule");
    }

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling get_dm_routing_config_rule");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RuleResponse', $response);
    return $_response_object;
}

#
# list_dm_routing_config_paths
#
# List paths
#
# @param string $config_id  (required)
# @param string $path Filter results by path pattern. The match strategy is controlled by the &#x60;match&#x60; parameter. (optional)
# @param string $match How to match the value of the &#x60;path&#x60; filter against existing path patterns. Has no effect unless &#x60;path&#x60; is also provided. (optional, default to 'exact')
# @param string $sort The order in which to list the results. (optional, default to '-created_at')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path' => {
        data_type => 'string',
        description => 'Filter results by path pattern. The match strategy is controlled by the &#x60;match&#x60; parameter.',
        required => '0',
    },
    'match' => {
        data_type => 'string',
        description => 'How to match the value of the &#x60;path&#x60; filter against existing path patterns. Has no effect unless &#x60;path&#x60; is also provided.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
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
    __PACKAGE__->method_documentation->{ 'list_dm_routing_config_paths' } = {
        summary => 'List paths',
        params => $params,
        returns => 'PathsResponse',
        };
}
# @return PathsResponse
#
sub list_dm_routing_config_paths {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling list_dm_routing_config_paths");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths';

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
    if ( exists $args{'path'}) {
        $query_params->{'path'} = $self->{api_client}->to_query_value($args{'path'});
    }

    # query params
    if ( exists $args{'match'}) {
        $query_params->{'match'} = $self->{api_client}->to_query_value($args{'match'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # path params
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PathsResponse', $response);
    return $_response_object;
}

#
# list_dm_routing_config_rules
#
# List rules
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param string $sort The order in which to list the results. (optional, default to 'position')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
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
    __PACKAGE__->method_documentation->{ 'list_dm_routing_config_rules' } = {
        summary => 'List rules',
        params => $params,
        returns => 'RulesResponse',
        };
}
# @return RulesResponse
#
sub list_dm_routing_config_rules {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling list_dm_routing_config_rules");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling list_dm_routing_config_rules");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules';

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
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # path params
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RulesResponse', $response);
    return $_response_object;
}

#
# list_dm_routing_config_versions
#
# List versions
#
# @param string $config_id  (required)
# @param string $sort The order in which to list the results. (optional, default to '-activated_at')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
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
    __PACKAGE__->method_documentation->{ 'list_dm_routing_config_versions' } = {
        summary => 'List versions',
        params => $params,
        returns => 'VersionsResponse',
        };
}
# @return VersionsResponse
#
sub list_dm_routing_config_versions {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling list_dm_routing_config_versions");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/versions';

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
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # path params
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
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
    my $_response_object = $self->{api_client}->deserialize('VersionsResponse', $response);
    return $_response_object;
}

#
# list_dm_routing_configs
#
# List routing configs
#
# @param ARRAY[string] $state Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. &#x60;?state&#x3D;active,active-with-draft&#x60;). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state. (optional)
# @param string $sort The order in which to list the results. (optional, default to '-created_at')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
# @param int $limit Limit how many results are returned. (optional, default to 20)
{
    my $params = {
    'state' => {
        data_type => 'ARRAY[string]',
        description => 'Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. &#x60;?state&#x3D;active,active-with-draft&#x60;). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
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
    __PACKAGE__->method_documentation->{ 'list_dm_routing_configs' } = {
        summary => 'List routing configs',
        params => $params,
        returns => 'RoutingConfigsResponse',
        };
}
# @return RoutingConfigsResponse
#
sub list_dm_routing_configs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs';

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
    if ( exists $args{'state'}) {
        $query_params->{'state'} = $self->{api_client}->to_query_value($args{'state'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigsResponse', $response);
    return $_response_object;
}

#
# reactivate_dm_routing_config_version
#
# Reactivate a version
#
# @param string $config_id  (required)
# @param string $version_id  (required)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'version_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'reactivate_dm_routing_config_version' } = {
        summary => 'Reactivate a version',
        params => $params,
        returns => 'RoutingConfigVersionResponse',
        };
}
# @return RoutingConfigVersionResponse
#
sub reactivate_dm_routing_config_version {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling reactivate_dm_routing_config_version");
    }

    # verify the required parameter 'version_id' is set
    unless (exists $args{'version_id'}) {
      croak("Missing the required parameter 'version_id' when calling reactivate_dm_routing_config_version");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/versions/{version_id}/activate';

    my $_method = 'POST';
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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'version_id'}) {
        my $_base_variable = "{" . "version_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'version_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigVersionResponse', $response);
    return $_response_object;
}

#
# update_dm_routing_config_draft
#
# Update the draft
#
# @param string $config_id  (required)
# @param DraftUpdate $draft_update  (optional)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'draft_update' => {
        data_type => 'DraftUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dm_routing_config_draft' } = {
        summary => 'Update the draft',
        params => $params,
        returns => 'RoutingConfigVersionResponse',
        };
}
# @return RoutingConfigVersionResponse
#
sub update_dm_routing_config_draft {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling update_dm_routing_config_draft");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/draft';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'draft_update'}) {
        $_body_data = $args{'draft_update'};
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
    my $_response_object = $self->{api_client}->deserialize('RoutingConfigVersionResponse', $response);
    return $_response_object;
}

#
# update_dm_routing_config_path
#
# Update a path
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param PathUpdate $path_update  (optional)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_update' => {
        data_type => 'PathUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dm_routing_config_path' } = {
        summary => 'Update a path',
        params => $params,
        returns => 'PathResponse',
        };
}
# @return PathResponse
#
sub update_dm_routing_config_path {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling update_dm_routing_config_path");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling update_dm_routing_config_path");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'path_update'}) {
        $_body_data = $args{'path_update'};
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
    my $_response_object = $self->{api_client}->deserialize('PathResponse', $response);
    return $_response_object;
}

#
# update_dm_routing_config_rule
#
# Update a rule
#
# @param string $config_id  (required)
# @param string $path_id  (required)
# @param string $rule_id  (required)
# @param RuleUpdate $rule_update  (optional)
{
    my $params = {
    'config_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'path_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'rule_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'rule_update' => {
        data_type => 'RuleUpdate',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_dm_routing_config_rule' } = {
        summary => 'Update a rule',
        params => $params,
        returns => 'RuleResponse',
        };
}
# @return RuleResponse
#
sub update_dm_routing_config_rule {
    my ($self, %args) = @_;

    # verify the required parameter 'config_id' is set
    unless (exists $args{'config_id'}) {
      croak("Missing the required parameter 'config_id' when calling update_dm_routing_config_rule");
    }

    # verify the required parameter 'path_id' is set
    unless (exists $args{'path_id'}) {
      croak("Missing the required parameter 'path_id' when calling update_dm_routing_config_rule");
    }

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling update_dm_routing_config_rule");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}';

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
    if ( exists $args{'config_id'}) {
        my $_base_variable = "{" . "config_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'config_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'path_id'}) {
        my $_base_variable = "{" . "path_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'path_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'rule_update'}) {
        $_body_data = $args{'rule_update'};
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
    my $_response_object = $self->{api_client}->deserialize('RuleResponse', $response);
    return $_response_object;
}

1;
