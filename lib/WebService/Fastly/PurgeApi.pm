=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
package WebService::Fastly::PurgeApi;

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
# bulk_purge_tag
#
# Purge multiple surrogate key tags
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param int $fastly_soft_purge If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. (optional)
# @param string $surrogate_key Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified. (optional)
# @param PurgeResponse $purge_response  (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'fastly_soft_purge' => {
        data_type => 'int',
        description => 'If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important.',
        required => '0',
    },
    'surrogate_key' => {
        data_type => 'string',
        description => 'Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified.',
        required => '0',
    },
    'purge_response' => {
        data_type => 'PurgeResponse',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_purge_tag' } = {
        summary => 'Purge multiple surrogate key tags',
        params => $params,
        returns => 'HASH[string,string]',
        };
}
# @return HASH[string,string]
#
sub bulk_purge_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling bulk_purge_tag");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/purge';

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

    # header params
    if ( exists $args{'fastly_soft_purge'}) {
        $header_params->{'fastly-soft-purge'} = $self->{api_client}->to_header_value($args{'fastly_soft_purge'});
    }

    # header params
    if ( exists $args{'surrogate_key'}) {
        $header_params->{'surrogate-key'} = $self->{api_client}->to_header_value($args{'surrogate_key'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'purge_response'}) {
        $_body_data = $args{'purge_response'};
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
    my $_response_object = $self->{api_client}->deserialize('HASH[string,string]', $response);
    return $_response_object;
}

#
# purge_all
#
# Purge everything from a service
#
# @param string $service_id Alphanumeric string identifying the service. (required)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'purge_all' } = {
        summary => 'Purge everything from a service',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub purge_all {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling purge_all");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/purge_all';

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
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
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
# purge_single_url
#
# Purge a URL
#
# @param string $cached_url URL of object in cache to be purged. (required)
# @param int $fastly_soft_purge If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. (optional)
{
    my $params = {
    'cached_url' => {
        data_type => 'string',
        description => 'URL of object in cache to be purged.',
        required => '1',
    },
    'fastly_soft_purge' => {
        data_type => 'int',
        description => 'If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'purge_single_url' } = {
        summary => 'Purge a URL',
        params => $params,
        returns => 'PurgeResponse',
        };
}
# @return PurgeResponse
#
sub purge_single_url {
    my ($self, %args) = @_;

    # verify the required parameter 'cached_url' is set
    unless (exists $args{'cached_url'}) {
      croak("Missing the required parameter 'cached_url' when calling purge_single_url");
    }

    # parse inputs
    my $_resource_path = '/purge/{cached_url}';

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

    # header params
    if ( exists $args{'fastly_soft_purge'}) {
        $header_params->{'fastly-soft-purge'} = $self->{api_client}->to_header_value($args{'fastly_soft_purge'});
    }

    # path params
    if ( exists $args{'cached_url'}) {
        my $_base_variable = "{" . "cached_url" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cached_url'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(url_purge )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PurgeResponse', $response);
    return $_response_object;
}

#
# purge_tag
#
# Purge by surrogate key tag
#
# @param string $service_id Alphanumeric string identifying the service. (required)
# @param string $surrogate_key Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request. (required)
# @param int $fastly_soft_purge If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. (optional)
{
    my $params = {
    'service_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the service.',
        required => '1',
    },
    'surrogate_key' => {
        data_type => 'string',
        description => 'Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request.',
        required => '1',
    },
    'fastly_soft_purge' => {
        data_type => 'int',
        description => 'If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'purge_tag' } = {
        summary => 'Purge by surrogate key tag',
        params => $params,
        returns => 'PurgeResponse',
        };
}
# @return PurgeResponse
#
sub purge_tag {
    my ($self, %args) = @_;

    # verify the required parameter 'service_id' is set
    unless (exists $args{'service_id'}) {
      croak("Missing the required parameter 'service_id' when calling purge_tag");
    }

    # verify the required parameter 'surrogate_key' is set
    unless (exists $args{'surrogate_key'}) {
      croak("Missing the required parameter 'surrogate_key' when calling purge_tag");
    }

    # parse inputs
    my $_resource_path = '/service/{service_id}/purge/{surrogate_key}';

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

    # header params
    if ( exists $args{'fastly_soft_purge'}) {
        $header_params->{'fastly-soft-purge'} = $self->{api_client}->to_header_value($args{'fastly_soft_purge'});
    }

    # path params
    if ( exists $args{'service_id'}) {
        my $_base_variable = "{" . "service_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'service_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'surrogate_key'}) {
        my $_base_variable = "{" . "surrogate_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'surrogate_key'});
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
    my $_response_object = $self->{api_client}->deserialize('PurgeResponse', $response);
    return $_response_object;
}

1;
