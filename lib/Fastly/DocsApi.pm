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
package Fastly::DocsApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# get_docs
#
# Get Fastly API docs as structured data
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_docs' } = {
        summary => 'Get Fastly API docs as structured data',
        params => $params,
        returns => 'ARRAY[object]',
        };
}
# @return ARRAY[object]
#
sub get_docs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/docs';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[object]', $response);
    return $_response_object;
}

#
# get_docs_section
#
# Get API docs matching a section filter
#
# @param string $section The section to search for. Supports regular expressions. (required)
# @param string $invert Get everything that does not match section. (required)
{
    my $params = {
    'section' => {
        data_type => 'string',
        description => 'The section to search for. Supports regular expressions.',
        required => '1',
    },
    'invert' => {
        data_type => 'string',
        description => 'Get everything that does not match section.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_docs_section' } = {
        summary => 'Get API docs matching a section filter',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_docs_section {
    my ($self, %args) = @_;

    # verify the required parameter 'section' is set
    unless (exists $args{'section'}) {
      croak("Missing the required parameter 'section' when calling get_docs_section");
    }

    # verify the required parameter 'invert' is set
    unless (exists $args{'invert'}) {
      croak("Missing the required parameter 'invert' when calling get_docs_section");
    }

    # parse inputs
    my $_resource_path = '/docs/section/{section}';

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
    if ( exists $args{'invert'}) {
        $query_params->{'invert'} = $self->{api_client}->to_query_value($args{'invert'});
    }

    # path params
    if ( exists $args{'section'}) {
        my $_base_variable = "{" . "section" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'section'});
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
# get_docs_subject
#
# Get API docs for a single subject
#
# @param string $subject The subject to search for. Supports regular expressions. (required)
{
    my $params = {
    'subject' => {
        data_type => 'string',
        description => 'The subject to search for. Supports regular expressions.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_docs_subject' } = {
        summary => 'Get API docs for a single subject',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_docs_subject {
    my ($self, %args) = @_;

    # verify the required parameter 'subject' is set
    unless (exists $args{'subject'}) {
      croak("Missing the required parameter 'subject' when calling get_docs_subject");
    }

    # parse inputs
    my $_resource_path = '/docs/subject/{subject}';

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
    if ( exists $args{'subject'}) {
        my $_base_variable = "{" . "subject" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'subject'});
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

1;
