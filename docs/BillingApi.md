# WebService::Fastly::BillingApi

## Load the API package
```perl
use WebService::Fastly::Object::BillingApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_invoice**](BillingApi.md#get_invoice) | **GET** /billing/v2/year/{year}/month/{month} | Get an invoice
[**get_invoice_by_id**](BillingApi.md#get_invoice_by_id) | **GET** /billing/v2/account_customers/{customer_id}/invoices/{invoice_id} | Get an invoice
[**get_invoice_mtd**](BillingApi.md#get_invoice_mtd) | **GET** /billing/v2/account_customers/{customer_id}/mtd_invoice | Get month-to-date billing estimate


# **get_invoice**
> BillingResponse get_invoice(month => $month, year => $year)

Get an invoice

Get the invoice for a given year and month. Can be any month from when the Customer was created to the current month.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingApi;
my $api_instance = WebService::Fastly::BillingApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $month = 05; # string | 2-digit month.
my $year = 2020; # string | 4-digit year.

eval {
    my $result = $api_instance->get_invoice(month => $month, year => $year);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingApi->get_invoice: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **string**| 2-digit month. | 
 **year** | **string**| 4-digit year. | 

### Return type

[**BillingResponse**](BillingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoice_by_id**
> BillingResponse get_invoice_by_id(customer_id => $customer_id, invoice_id => $invoice_id)

Get an invoice

Get the invoice for the given invoice_id.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingApi;
my $api_instance = WebService::Fastly::BillingApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $invoice_id = "invoice_id_example"; # string | Alphanumeric string identifying the invoice.

eval {
    my $result = $api_instance->get_invoice_by_id(customer_id => $customer_id, invoice_id => $invoice_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingApi->get_invoice_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **invoice_id** | **string**| Alphanumeric string identifying the invoice. | 

### Return type

[**BillingResponse**](BillingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoice_mtd**
> BillingEstimateResponse get_invoice_mtd(customer_id => $customer_id, month => $month, year => $year)

Get month-to-date billing estimate

Get the current month-to-date estimate. This endpoint has two different responses. Under normal circumstances, it generally takes less than 5 seconds to generate but in certain cases can take up to 60 seconds. Once generated the month-to-date estimate is cached for 4 hours, and is available the next request will return the JSON representation of the month-to-date estimate. While a report is being generated in the background, this endpoint will return a `202 Accepted` response. The full format of which can be found in detail in our [billing calculation guide](https://docs.fastly.com/en/guides/how-we-calculate-your-bill). There are certain accounts for which we are unable to generate a month-to-date estimate. For example, accounts who have parent-pay are unable to generate an MTD estimate. The parent accounts are able to generate a month-to-date estimate but that estimate will not include the child accounts amounts at this time.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingApi;
my $api_instance = WebService::Fastly::BillingApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $month = 05; # string | 2-digit month.
my $year = 2020; # string | 4-digit year.

eval {
    my $result = $api_instance->get_invoice_mtd(customer_id => $customer_id, month => $month, year => $year);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingApi->get_invoice_mtd: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **month** | **string**| 2-digit month. | [optional] 
 **year** | **string**| 4-digit year. | [optional] 

### Return type

[**BillingEstimateResponse**](BillingEstimateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

