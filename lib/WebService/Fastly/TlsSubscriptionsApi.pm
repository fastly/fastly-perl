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
package WebService::Fastly::TlsSubscriptionsApi;

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
# create_globalsign_email_challenge
#
# Creates a GlobalSign email challenge.
#
# @param string $tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
# @param string $tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
# @param HASH[string,object] $request_body  (optional)
{
    my $params = {
    'tls_subscription_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'tls_authorization_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'request_body' => {
        data_type => 'HASH[string,object]',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_globalsign_email_challenge' } = {
        summary => 'Creates a GlobalSign email challenge.',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_globalsign_email_challenge {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_subscription_id' is set
    unless (exists $args{'tls_subscription_id'}) {
      croak("Missing the required parameter 'tls_subscription_id' when calling create_globalsign_email_challenge");
    }

    # verify the required parameter 'tls_authorization_id' is set
    unless (exists $args{'tls_authorization_id'}) {
      croak("Missing the required parameter 'tls_authorization_id' when calling create_globalsign_email_challenge");
    }

    # parse inputs
    my $_resource_path = '/tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # path params
    if ( exists $args{'tls_subscription_id'}) {
        my $_base_variable = "{" . "tls_subscription_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_subscription_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tls_authorization_id'}) {
        my $_base_variable = "{" . "tls_authorization_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_authorization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# create_tls_sub
#
# Create a TLS subscription
#
# @param TlsSubscription $tls_subscription  (optional)
{
    my $params = {
    'tls_subscription' => {
        data_type => 'TlsSubscription',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tls_sub' } = {
        summary => 'Create a TLS subscription',
        params => $params,
        returns => 'TlsSubscriptionResponse',
        };
}
# @return TlsSubscriptionResponse
#
sub create_tls_sub {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/subscriptions';

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
    if ( exists $args{'tls_subscription'}) {
        $_body_data = $args{'tls_subscription'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsSubscriptionResponse', $response);
    return $_response_object;
}

#
# delete_globalsign_email_challenge
#
# Delete a GlobalSign email challenge
#
# @param string $tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
# @param string $tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
# @param string $globalsign_email_challenge_id Alphanumeric string identifying a GlobalSign email challenge. (required)
{
    my $params = {
    'tls_subscription_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'tls_authorization_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'globalsign_email_challenge_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a GlobalSign email challenge.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_globalsign_email_challenge' } = {
        summary => 'Delete a GlobalSign email challenge',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_globalsign_email_challenge {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_subscription_id' is set
    unless (exists $args{'tls_subscription_id'}) {
      croak("Missing the required parameter 'tls_subscription_id' when calling delete_globalsign_email_challenge");
    }

    # verify the required parameter 'tls_authorization_id' is set
    unless (exists $args{'tls_authorization_id'}) {
      croak("Missing the required parameter 'tls_authorization_id' when calling delete_globalsign_email_challenge");
    }

    # verify the required parameter 'globalsign_email_challenge_id' is set
    unless (exists $args{'globalsign_email_challenge_id'}) {
      croak("Missing the required parameter 'globalsign_email_challenge_id' when calling delete_globalsign_email_challenge");
    }

    # parse inputs
    my $_resource_path = '/tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges/{globalsign_email_challenge_id}';

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
    if ( exists $args{'tls_subscription_id'}) {
        my $_base_variable = "{" . "tls_subscription_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_subscription_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tls_authorization_id'}) {
        my $_base_variable = "{" . "tls_authorization_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_authorization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'globalsign_email_challenge_id'}) {
        my $_base_variable = "{" . "globalsign_email_challenge_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'globalsign_email_challenge_id'});
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
# delete_tls_sub
#
# Delete a TLS subscription
#
# @param string $tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
{
    my $params = {
    'tls_subscription_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_tls_sub' } = {
        summary => 'Delete a TLS subscription',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_tls_sub {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_subscription_id' is set
    unless (exists $args{'tls_subscription_id'}) {
      croak("Missing the required parameter 'tls_subscription_id' when calling delete_tls_sub");
    }

    # parse inputs
    my $_resource_path = '/tls/subscriptions/{tls_subscription_id}';

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
    if ( exists $args{'tls_subscription_id'}) {
        my $_base_variable = "{" . "tls_subscription_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_subscription_id'});
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
# get_tls_sub
#
# Get a TLS subscription
#
# @param string $tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, &#x60;tls_authorizations.self_managed_http_challenge&#x60;, and &#x60;tls_certificates&#x60;.  (optional)
{
    my $params = {
    'tls_subscription_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, &#x60;tls_authorizations.self_managed_http_challenge&#x60;, and &#x60;tls_certificates&#x60;. ',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tls_sub' } = {
        summary => 'Get a TLS subscription',
        params => $params,
        returns => 'TlsSubscriptionResponse',
        };
}
# @return TlsSubscriptionResponse
#
sub get_tls_sub {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_subscription_id' is set
    unless (exists $args{'tls_subscription_id'}) {
      croak("Missing the required parameter 'tls_subscription_id' when calling get_tls_sub");
    }

    # parse inputs
    my $_resource_path = '/tls/subscriptions/{tls_subscription_id}';

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
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

    # path params
    if ( exists $args{'tls_subscription_id'}) {
        my $_base_variable = "{" . "tls_subscription_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_subscription_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TlsSubscriptionResponse', $response);
    return $_response_object;
}

#
# list_tls_subs
#
# List TLS subscriptions
#
# @param string $filter[state] Limit the returned subscriptions by state. Valid values are &#x60;pending&#x60;, &#x60;processing&#x60;, &#x60;issued&#x60;, &#x60;renewing&#x60;, and &#x60;failed&#x60;. Accepts parameters: &#x60;not&#x60; (e.g., &#x60;filter[state][not]&#x3D;renewing&#x60;).  (optional)
# @param string $filter[tls_domains/id] Limit the returned subscriptions to those that include the specific domain. (optional)
# @param boolean $filter[has_active_order] Limit the returned subscriptions to those that have currently active orders. Permitted values: &#x60;true&#x60;.  (optional)
# @param string $filter[certificate_authority] Limit the returned subscriptions to a specific certification authority. Values may include &#x60;certainly&#x60;, &#x60;lets-encrypt&#x60;, or &#x60;globalsign&#x60;.  (optional)
# @param string $sort The order in which to list the results. (optional, default to '-created_at')
# @param string $include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, &#x60;tls_authorizations.self_managed_http_challenge&#x60;, and &#x60;tls_certificates&#x60;.  (optional)
# @param int $page[number] Current page. (optional)
# @param int $page[size] Number of records per page. (optional, default to 20)
{
    my $params = {
    'filter[state]' => {
        data_type => 'string',
        description => 'Limit the returned subscriptions by state. Valid values are &#x60;pending&#x60;, &#x60;processing&#x60;, &#x60;issued&#x60;, &#x60;renewing&#x60;, and &#x60;failed&#x60;. Accepts parameters: &#x60;not&#x60; (e.g., &#x60;filter[state][not]&#x3D;renewing&#x60;). ',
        required => '0',
    },
    'filter[tls_domains/id]' => {
        data_type => 'string',
        description => 'Limit the returned subscriptions to those that include the specific domain.',
        required => '0',
    },
    'filter[has_active_order]' => {
        data_type => 'boolean',
        description => 'Limit the returned subscriptions to those that have currently active orders. Permitted values: &#x60;true&#x60;. ',
        required => '0',
    },
    'filter[certificate_authority]' => {
        data_type => 'string',
        description => 'Limit the returned subscriptions to a specific certification authority. Values may include &#x60;certainly&#x60;, &#x60;lets-encrypt&#x60;, or &#x60;globalsign&#x60;. ',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'The order in which to list the results.',
        required => '0',
    },
    'include' => {
        data_type => 'string',
        description => 'Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, &#x60;tls_authorizations.self_managed_http_challenge&#x60;, and &#x60;tls_certificates&#x60;. ',
        required => '0',
    },
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
    __PACKAGE__->method_documentation->{ 'list_tls_subs' } = {
        summary => 'List TLS subscriptions',
        params => $params,
        returns => 'TlsSubscriptionsResponse',
        };
}
# @return TlsSubscriptionsResponse
#
sub list_tls_subs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tls/subscriptions';

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
    if ( exists $args{'filter[state]'}) {
        $query_params->{'filter[state]'} = $self->{api_client}->to_query_value($args{'filter[state]'});
    }

    # query params
    if ( exists $args{'filter[tls_domains/id]'}) {
        $query_params->{'filter[tls_domains.id]'} = $self->{api_client}->to_query_value($args{'filter[tls_domains/id]'});
    }

    # query params
    if ( exists $args{'filter[has_active_order]'}) {
        $query_params->{'filter[has_active_order]'} = $self->{api_client}->to_query_value($args{'filter[has_active_order]'});
    }

    # query params
    if ( exists $args{'filter[certificate_authority]'}) {
        $query_params->{'filter[certificate_authority]'} = $self->{api_client}->to_query_value($args{'filter[certificate_authority]'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'include'}) {
        $query_params->{'include'} = $self->{api_client}->to_query_value($args{'include'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('TlsSubscriptionsResponse', $response);
    return $_response_object;
}

#
# patch_tls_sub
#
# Update a TLS subscription
#
# @param string $tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
# @param boolean $force A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain.  (optional)
# @param TlsSubscription $tls_subscription  (optional)
{
    my $params = {
    'tls_subscription_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying a TLS subscription.',
        required => '1',
    },
    'force' => {
        data_type => 'boolean',
        description => 'A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. ',
        required => '0',
    },
    'tls_subscription' => {
        data_type => 'TlsSubscription',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'patch_tls_sub' } = {
        summary => 'Update a TLS subscription',
        params => $params,
        returns => 'TlsSubscriptionResponse',
        };
}
# @return TlsSubscriptionResponse
#
sub patch_tls_sub {
    my ($self, %args) = @_;

    # verify the required parameter 'tls_subscription_id' is set
    unless (exists $args{'tls_subscription_id'}) {
      croak("Missing the required parameter 'tls_subscription_id' when calling patch_tls_sub");
    }

    # parse inputs
    my $_resource_path = '/tls/subscriptions/{tls_subscription_id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/vnd.api+json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/vnd.api+json');

    # query params
    if ( exists $args{'force'}) {
        $query_params->{'force'} = $self->{api_client}->to_query_value($args{'force'});
    }

    # path params
    if ( exists $args{'tls_subscription_id'}) {
        my $_base_variable = "{" . "tls_subscription_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tls_subscription_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tls_subscription'}) {
        $_body_data = $args{'tls_subscription'};
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
    my $_response_object = $self->{api_client}->deserialize('TlsSubscriptionResponse', $response);
    return $_response_object;
}

1;
