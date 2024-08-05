# WebService::Fastly::BillingUsageMetricsApi

## Load the API package
```perl
use WebService::Fastly::Object::BillingUsageMetricsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_service_level_usage**](BillingUsageMetricsApi.md#get_service_level_usage) | **GET** /billing/v2/account_customers/{customer_id}/service-usage-metrics | Retrieve service-level usage metrics for a product.
[**get_service_level_usage_types**](BillingUsageMetricsApi.md#get_service_level_usage_types) | **GET** /billing/v2/account_customers/{customer_id}/service-usage-types | Retrieve product usage types for a customer.


# **get_service_level_usage**
> Serviceusagemetrics get_service_level_usage(customer_id => $customer_id, product_id => $product_id, usage_type_name => $usage_type_name, time_granularity => $time_granularity, start_date => $start_date, end_date => $end_date, start_month => $start_month, end_month => $end_month, limit => $limit, cursor => $cursor)

Retrieve service-level usage metrics for a product.

Returns product usage, broken down by service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingUsageMetricsApi;
my $api_instance = WebService::Fastly::BillingUsageMetricsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $product_id = "product_id_example"; # string | The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests.
my $usage_type_name = "usage_type_name_example"; # string | The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests.
my $time_granularity = "time_granularity_example"; # string | 
my $start_date = 2023-01-01; # string | 
my $end_date = 2023-01-31; # string | 
my $start_month = 2023-01; # string | 
my $end_month = 2023-03; # string | 
my $limit = '5'; # string | Number of results per page. The maximum is 100.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.

eval {
    my $result = $api_instance->get_service_level_usage(customer_id => $customer_id, product_id => $product_id, usage_type_name => $usage_type_name, time_granularity => $time_granularity, start_date => $start_date, end_date => $end_date, start_month => $start_month, end_month => $end_month, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingUsageMetricsApi->get_service_level_usage: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **product_id** | **string**| The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests. | 
 **usage_type_name** | **string**| The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests. | 
 **time_granularity** | **string**|  | 
 **start_date** | **string**|  | [optional] 
 **end_date** | **string**|  | [optional] 
 **start_month** | **string**|  | [optional] 
 **end_month** | **string**|  | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 100. | [optional] [default to &#39;5&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 

### Return type

[**Serviceusagemetrics**](Serviceusagemetrics.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_level_usage_types**
> Serviceusagetypes get_service_level_usage_types(customer_id => $customer_id)

Retrieve product usage types for a customer.

Returns product usage types reported by the customer's services.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingUsageMetricsApi;
my $api_instance = WebService::Fastly::BillingUsageMetricsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->get_service_level_usage_types(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingUsageMetricsApi->get_service_level_usage_types: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**Serviceusagetypes**](Serviceusagetypes.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

