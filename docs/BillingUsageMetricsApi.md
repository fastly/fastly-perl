# WebService::Fastly::BillingUsageMetricsApi

## Load the API package
```perl
use WebService::Fastly::Object::BillingUsageMetricsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_service_level_usage**](BillingUsageMetricsApi.md#get_service_level_usage) | **GET** /billing/v3/service-usage-metrics | Retrieve service-level usage metrics for a product.
[**get_usage_metrics**](BillingUsageMetricsApi.md#get_usage_metrics) | **GET** /billing/v3/usage-metrics | Get monthly usage metrics


# **get_service_level_usage**
> Serviceusagemetrics get_service_level_usage(product_id => $product_id, usage_type_name => $usage_type_name, start_month => $start_month, end_month => $end_month, limit => $limit, cursor => $cursor)

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

my $product_id = "product_id_example"; # string | The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests.
my $usage_type_name = "usage_type_name_example"; # string | The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests.
my $start_month = 2023-01; # string | 
my $end_month = 2023-03; # string | 
my $limit = '5'; # string | Number of results per page. The maximum is 100.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.

eval {
    my $result = $api_instance->get_service_level_usage(product_id => $product_id, usage_type_name => $usage_type_name, start_month => $start_month, end_month => $end_month, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingUsageMetricsApi->get_service_level_usage: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests. | 
 **usage_type_name** | **string**| The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests. | 
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

# **get_usage_metrics**
> Usagemetric get_usage_metrics(start_month => $start_month, end_month => $end_month)

Get monthly usage metrics

Returns monthly usage metrics for customer by product.

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

my $start_month = 2023-01; # string | 
my $end_month = 2023-03; # string | 

eval {
    my $result = $api_instance->get_usage_metrics(start_month => $start_month, end_month => $end_month);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingUsageMetricsApi->get_usage_metrics: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_month** | **string**|  | [optional] 
 **end_month** | **string**|  | [optional] 

### Return type

[**Usagemetric**](Usagemetric.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

