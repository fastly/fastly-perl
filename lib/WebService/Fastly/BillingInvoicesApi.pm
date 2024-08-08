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
package WebService::Fastly::BillingInvoicesApi;

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
# get_invoice_by_invoice_id
#
# Get invoice by ID.
#
# @param int $invoice_id  (required)
{
    my $params = {
    'invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice_by_invoice_id' } = {
        summary => 'Get invoice by ID.',
        params => $params,
        returns => 'EomInvoiceResponse',
        };
}
# @return EomInvoiceResponse
#
sub get_invoice_by_invoice_id {
    my ($self, %args) = @_;

    # verify the required parameter 'invoice_id' is set
    unless (exists $args{'invoice_id'}) {
      croak("Missing the required parameter 'invoice_id' when calling get_invoice_by_invoice_id");
    }

    # parse inputs
    my $_resource_path = '/billing/v3/invoices/{invoice_id}';

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
    my $_response_object = $self->{api_client}->deserialize('EomInvoiceResponse', $response);
    return $_response_object;
}

#
# get_month_to_date_invoice
#
# Get month-to-date invoice.
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_month_to_date_invoice' } = {
        summary => 'Get month-to-date invoice.',
        params => $params,
        returns => 'MtdInvoiceResponse',
        };
}
# @return MtdInvoiceResponse
#
sub get_month_to_date_invoice {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/billing/v3/invoices/month-to-date';

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
    my $_response_object = $self->{api_client}->deserialize('MtdInvoiceResponse', $response);
    return $_response_object;
}

#
# list_invoices
#
# List of invoices.
#
# @param string $billing_start_date  (optional)
# @param string $billing_end_date  (optional)
# @param string $limit Number of results per page. The maximum is 200. (optional, default to '100')
# @param string $cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty. (optional)
{
    my $params = {
    'billing_start_date' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'billing_end_date' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'limit' => {
        data_type => 'string',
        description => 'Number of results per page. The maximum is 200.',
        required => '0',
    },
    'cursor' => {
        data_type => 'string',
        description => 'Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_invoices' } = {
        summary => 'List of invoices.',
        params => $params,
        returns => 'ListEomInvoicesResponse',
        };
}
# @return ListEomInvoicesResponse
#
sub list_invoices {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/billing/v3/invoices';

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
    if ( exists $args{'billing_start_date'}) {
        $query_params->{'billing_start_date'} = $self->{api_client}->to_query_value($args{'billing_start_date'});
    }

    # query params
    if ( exists $args{'billing_end_date'}) {
        $query_params->{'billing_end_date'} = $self->{api_client}->to_query_value($args{'billing_end_date'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'cursor'}) {
        $query_params->{'cursor'} = $self->{api_client}->to_query_value($args{'cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('ListEomInvoicesResponse', $response);
    return $_response_object;
}

1;
