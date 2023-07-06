# WebService::Fastly::OriginInspectorRealtimeApi

## Load the API package
```perl
use WebService::Fastly::Object::OriginInspectorRealtimeApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_origin_inspector_last120_seconds**](OriginInspectorRealtimeApi.md#get_origin_inspector_last120_seconds) | **GET** /v1/origins/{service_id}/ts/h | Get real-time origin data for the last 120 seconds
[**get_origin_inspector_last_max_entries**](OriginInspectorRealtimeApi.md#get_origin_inspector_last_max_entries) | **GET** /v1/origins/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time origin data entries
[**get_origin_inspector_last_second**](OriginInspectorRealtimeApi.md#get_origin_inspector_last_second) | **GET** /v1/origins/{service_id}/ts/{start_timestamp} | Get real-time origin data from specific time.


# **get_origin_inspector_last120_seconds**
> OriginInspector get_origin_inspector_last120_seconds(service_id => $service_id)

Get real-time origin data for the last 120 seconds

Get data for the 120 seconds preceding the latest timestamp available for a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::OriginInspectorRealtimeApi;
my $api_instance = WebService::Fastly::OriginInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_origin_inspector_last120_seconds(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OriginInspectorRealtimeApi->get_origin_inspector_last120_seconds: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**OriginInspector**](OriginInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_origin_inspector_last_max_entries**
> OriginInspector get_origin_inspector_last_max_entries(service_id => $service_id, max_entries => $max_entries)

Get a limited number of real-time origin data entries

Get data for the `max_entries` seconds preceding the latest timestamp available for a service, up to a maximum of 120 entries.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::OriginInspectorRealtimeApi;
my $api_instance = WebService::Fastly::OriginInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $max_entries = 1; # int | Maximum number of results to display.

eval {
    my $result = $api_instance->get_origin_inspector_last_max_entries(service_id => $service_id, max_entries => $max_entries);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OriginInspectorRealtimeApi->get_origin_inspector_last_max_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **max_entries** | **int**| Maximum number of results to display. | 

### Return type

[**OriginInspector**](OriginInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_origin_inspector_last_second**
> OriginInspector get_origin_inspector_last_second(service_id => $service_id, start_timestamp => $start_timestamp)

Get real-time origin data from specific time.

Get real-time origin data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next. Due to processing latency, the earliest entry in the response dataset may be earlier than `start_timestamp` by the value of `AggregateDelay`. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::OriginInspectorRealtimeApi;
my $api_instance = WebService::Fastly::OriginInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $start_timestamp = 56; # int | Timestamp in seconds (Unix epoch time).

eval {
    my $result = $api_instance->get_origin_inspector_last_second(service_id => $service_id, start_timestamp => $start_timestamp);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OriginInspectorRealtimeApi->get_origin_inspector_last_second: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **start_timestamp** | **int**| Timestamp in seconds (Unix epoch time). | 

### Return type

[**OriginInspector**](OriginInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

