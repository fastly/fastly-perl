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
package Fastly::BillingApi;

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
# get_invoice
#
# Get an invoice
#
# @param string $month 2-digit month. (required)
# @param string $year 4-digit year. (required)
{
    my $params = {
    'month' => {
        data_type => 'string',
        description => '2-digit month.',
        required => '1',
    },
    'year' => {
        data_type => 'string',
        description => '4-digit year.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice' } = {
        summary => 'Get an invoice',
        params => $params,
        returns => 'BillingResponse',
        };
}
# @return BillingResponse
#
sub get_invoice {
    my ($self, %args) = @_;

    # verify the required parameter 'month' is set
    unless (exists $args{'month'}) {
      croak("Missing the required parameter 'month' when calling get_invoice");
    }

    # verify the required parameter 'year' is set
    unless (exists $args{'year'}) {
      croak("Missing the required parameter 'year' when calling get_invoice");
    }

    # parse inputs
    my $_resource_path = '/billing/v2/year/{year}/month/{month}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'text/csv', 'application/pdf');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'month'}) {
        my $_base_variable = "{" . "month" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'month'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'year'}) {
        my $_base_variable = "{" . "year" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'year'});
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
    my $_response_object = $self->{api_client}->deserialize('BillingResponse', $response);
    return $_response_object;
}

#
# get_invoice_by_id
#
# Get an invoice
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param string $invoice_id Alphanumeric string identifying the invoice. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'invoice_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the invoice.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice_by_id' } = {
        summary => 'Get an invoice',
        params => $params,
        returns => 'BillingResponse',
        };
}
# @return BillingResponse
#
sub get_invoice_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling get_invoice_by_id");
    }

    # verify the required parameter 'invoice_id' is set
    unless (exists $args{'invoice_id'}) {
      croak("Missing the required parameter 'invoice_id' when calling get_invoice_by_id");
    }

    # parse inputs
    my $_resource_path = '/billing/v2/account_customers/{customer_id}/invoices/{invoice_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'text/csv', 'application/pdf');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'invoice_id'}) {
        my $_base_variable = "{" . "invoice_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BillingResponse', $response);
    return $_response_object;
}

#
# get_invoice_mtd
#
# Get month-to-date billing estimate
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param string $month 2-digit month. (optional)
# @param string $year 4-digit year. (optional)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'month' => {
        data_type => 'string',
        description => '2-digit month.',
        required => '0',
    },
    'year' => {
        data_type => 'string',
        description => '4-digit year.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice_mtd' } = {
        summary => 'Get month-to-date billing estimate',
        params => $params,
        returns => 'BillingEstimateResponse',
        };
}
# @return BillingEstimateResponse
#
sub get_invoice_mtd {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling get_invoice_mtd");
    }

    # parse inputs
    my $_resource_path = '/billing/v2/account_customers/{customer_id}/mtd_invoice';

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
    if ( exists $args{'month'}) {
        $query_params->{'month'} = $self->{api_client}->to_query_value($args{'month'});
    }

    # query params
    if ( exists $args{'year'}) {
        $query_params->{'year'} = $self->{api_client}->to_query_value($args{'year'});
    }

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BillingEstimateResponse', $response);
    return $_response_object;
}

1;
