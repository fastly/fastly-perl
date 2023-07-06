# WebService::Fastly::DomainInspectorRealtimeApi

## Load the API package
```perl
use WebService::Fastly::Object::DomainInspectorRealtimeApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_domain_inspector_last120_seconds**](DomainInspectorRealtimeApi.md#get_domain_inspector_last120_seconds) | **GET** /v1/domains/{service_id}/ts/h | Get real-time domain data for the last 120 seconds
[**get_domain_inspector_last_max_entries**](DomainInspectorRealtimeApi.md#get_domain_inspector_last_max_entries) | **GET** /v1/domains/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time domain data entries
[**get_domain_inspector_last_second**](DomainInspectorRealtimeApi.md#get_domain_inspector_last_second) | **GET** /v1/domains/{service_id}/ts/{start_timestamp} | Get real-time domain data from a specified time


# **get_domain_inspector_last120_seconds**
> DomainInspector get_domain_inspector_last120_seconds(service_id => $service_id)

Get real-time domain data for the last 120 seconds

Get data for the 120 seconds preceding the latest timestamp available for a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainInspectorRealtimeApi;
my $api_instance = WebService::Fastly::DomainInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_domain_inspector_last120_seconds(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainInspectorRealtimeApi->get_domain_inspector_last120_seconds: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DomainInspector**](DomainInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domain_inspector_last_max_entries**
> DomainInspector get_domain_inspector_last_max_entries(service_id => $service_id, max_entries => $max_entries)

Get a limited number of real-time domain data entries

Get data for the `max_entries` seconds preceding the latest timestamp available for a service, up to a maximum of 120 entries.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainInspectorRealtimeApi;
my $api_instance = WebService::Fastly::DomainInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $max_entries = 1; # int | Maximum number of results to show.

eval {
    my $result = $api_instance->get_domain_inspector_last_max_entries(service_id => $service_id, max_entries => $max_entries);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainInspectorRealtimeApi->get_domain_inspector_last_max_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **max_entries** | **int**| Maximum number of results to show. | 

### Return type

[**DomainInspector**](DomainInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domain_inspector_last_second**
> DomainInspector get_domain_inspector_last_second(service_id => $service_id, start_timestamp => $start_timestamp)

Get real-time domain data from a specified time

Get real-time domain data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next. Due to processing latency, the earliest entry in the response dataset may be earlier than `start_timestamp` by the value of `AggregateDelay`. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainInspectorRealtimeApi;
my $api_instance = WebService::Fastly::DomainInspectorRealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $start_timestamp = 56; # int | Timestamp in seconds (Unix epoch time).

eval {
    my $result = $api_instance->get_domain_inspector_last_second(service_id => $service_id, start_timestamp => $start_timestamp);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainInspectorRealtimeApi->get_domain_inspector_last_second: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **start_timestamp** | **int**| Timestamp in seconds (Unix epoch time). | 

### Return type

[**DomainInspector**](DomainInspector.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

