# WebService::Fastly::ObservabilityAggregationsForLogsApi

## Load the API package
```perl
use WebService::Fastly::Object::ObservabilityAggregationsForLogsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**log_aggregations_get**](ObservabilityAggregationsForLogsApi.md#log_aggregations_get) | **GET** /observability/aggregations | Retrieve aggregated log results


# **log_aggregations_get**
> LogAggregationsGetResponse log_aggregations_get(source => $source, service_id => $service_id, start => $start, end => $end, series => $series, limit => $limit, filter => $filter, dimensions => $dimensions, sort => $sort)

Retrieve aggregated log results

Retrieves aggregated log results.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityAggregationsForLogsApi;
my $api_instance = WebService::Fastly::ObservabilityAggregationsForLogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $source = "source_example"; # string | 
my $service_id = "service_id_example"; # string | 
my $start = "start_example"; # string | 
my $end = "end_example"; # string | 
my $series = "series_example"; # string | 
my $limit = 3.4; # double | 
my $filter = "filter_example"; # string | 
my $dimensions = "dimensions_example"; # string | 
my $sort = "sort_example"; # string | 

eval {
    my $result = $api_instance->log_aggregations_get(source => $source, service_id => $service_id, start => $start, end => $end, series => $series, limit => $limit, filter => $filter, dimensions => $dimensions, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityAggregationsForLogsApi->log_aggregations_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **string**|  | 
 **service_id** | **string**|  | 
 **start** | **string**|  | 
 **end** | **string**|  | 
 **series** | **string**|  | 
 **limit** | **double**|  | [optional] 
 **filter** | **string**|  | [optional] 
 **dimensions** | **string**|  | [optional] 
 **sort** | **string**|  | [optional] 

### Return type

[**LogAggregationsGetResponse**](LogAggregationsGetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

