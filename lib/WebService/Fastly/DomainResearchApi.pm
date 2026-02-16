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
package WebService::Fastly::DomainResearchApi;

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
# domain_status
#
# Domain status
#
# @param string $domain  (required)
# @param string $scope  (optional)
{
    my $params = {
    'domain' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'scope' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'domain_status' } = {
        summary => 'Domain status',
        params => $params,
        returns => 'Status',
        };
}
# @return Status
#
sub domain_status {
    my ($self, %args) = @_;

    # verify the required parameter 'domain' is set
    unless (exists $args{'domain'}) {
      croak("Missing the required parameter 'domain' when calling domain_status");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/tools/status';

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
    if ( exists $args{'domain'}) {
        $query_params->{'domain'} = $self->{api_client}->to_query_value($args{'domain'});
    }

    # query params
    if ( exists $args{'scope'}) {
        $query_params->{'scope'} = $self->{api_client}->to_query_value($args{'scope'});
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
    my $_response_object = $self->{api_client}->deserialize('Status', $response);
    return $_response_object;
}

#
# suggest_domains
#
# Suggest domains
#
# @param string $query  (required)
# @param string $defaults  (optional)
# @param string $keywords  (optional)
# @param string $location  (optional)
# @param string $vendor  (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'defaults' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'keywords' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'location' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'vendor' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'suggest_domains' } = {
        summary => 'Suggest domains',
        params => $params,
        returns => 'InlineResponse2009',
        };
}
# @return InlineResponse2009
#
sub suggest_domains {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling suggest_domains");
    }

    # parse inputs
    my $_resource_path = '/domain-management/v1/tools/suggest';

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
    if ( exists $args{'query'}) {
        $query_params->{'query'} = $self->{api_client}->to_query_value($args{'query'});
    }

    # query params
    if ( exists $args{'defaults'}) {
        $query_params->{'defaults'} = $self->{api_client}->to_query_value($args{'defaults'});
    }

    # query params
    if ( exists $args{'keywords'}) {
        $query_params->{'keywords'} = $self->{api_client}->to_query_value($args{'keywords'});
    }

    # query params
    if ( exists $args{'location'}) {
        $query_params->{'location'} = $self->{api_client}->to_query_value($args{'location'});
    }

    # query params
    if ( exists $args{'vendor'}) {
        $query_params->{'vendor'} = $self->{api_client}->to_query_value($args{'vendor'});
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

1;
