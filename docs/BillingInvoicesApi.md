# WebService::Fastly::BillingInvoicesApi

## Load the API package
```perl
use WebService::Fastly::Object::BillingInvoicesApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_by_invoice_id**](BillingInvoicesApi.md#get_invoice_by_invoice_id) | **GET** /billing/v3/invoices/{invoice_id} | Get invoice by ID.
[**list_invoices**](BillingInvoicesApi.md#list_invoices) | **GET** /billing/v3/invoices | List of invoices.


# **get_invoice_by_invoice_id**
> InvoiceResponse get_invoice_by_invoice_id(invoice_id => $invoice_id)

Get invoice by ID.

Returns invoice associated with the invoice id.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingInvoicesApi;
my $api_instance = WebService::Fastly::BillingInvoicesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $invoice_id = "invoice_id_example"; # string | Alphanumeric string identifying the invoice.

eval {
    my $result = $api_instance->get_invoice_by_invoice_id(invoice_id => $invoice_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingInvoicesApi->get_invoice_by_invoice_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **string**| Alphanumeric string identifying the invoice. | 

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_invoices**
> ListInvoicesResponse list_invoices(billing_start_date => $billing_start_date, billing_end_date => $billing_end_date, limit => $limit, cursor => $cursor)

List of invoices.

Returns the list of invoices, sorted by billing start date (newest to oldest).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingInvoicesApi;
my $api_instance = WebService::Fastly::BillingInvoicesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $billing_start_date = 2023-01-01T00:00:00Z; # string | 
my $billing_end_date = 2023-01-31T00:00:00Z; # string | 
my $limit = '100'; # string | Number of results per page. The maximum is 200.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.

eval {
    my $result = $api_instance->list_invoices(billing_start_date => $billing_start_date, billing_end_date => $billing_end_date, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingInvoicesApi->list_invoices: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_start_date** | **string**|  | [optional] 
 **billing_end_date** | **string**|  | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 200. | [optional] [default to &#39;100&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 

### Return type

[**ListInvoicesResponse**](ListInvoicesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

