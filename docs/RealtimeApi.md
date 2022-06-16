# Fastly::RealtimeApi

## Load the API package
```perl
use Fastly::Object::RealtimeApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_stats_last120_seconds**](RealtimeApi.md#get_stats_last120_seconds) | **GET** /v1/channel/{service_id}/ts/h | Get real-time data for the last 120 seconds
[**get_stats_last120_seconds_limit_entries**](RealtimeApi.md#get_stats_last120_seconds_limit_entries) | **GET** /v1/channel/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time data entries
[**get_stats_last_second**](RealtimeApi.md#get_stats_last_second) | **GET** /v1/channel/{service_id}/ts/{timestamp_in_seconds} | Get real-time data from specified time


# **get_stats_last120_seconds**
> Realtime get_stats_last120_seconds(service_id => $service_id)

Get real-time data for the last 120 seconds

Get data for the 120 seconds preceding the latest timestamp available for a service.

### Example
```perl
use Data::Dumper;
use Fastly::RealtimeApi;
my $api_instance = Fastly::RealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_stats_last120_seconds(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RealtimeApi->get_stats_last120_seconds: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**Realtime**](Realtime.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_stats_last120_seconds_limit_entries**
> Realtime get_stats_last120_seconds_limit_entries(service_id => $service_id, max_entries => $max_entries)

Get a limited number of real-time data entries

Get data for the 120 seconds preceding the latest timestamp available for a service, up to a maximum of `max_entries` entries.

### Example
```perl
use Data::Dumper;
use Fastly::RealtimeApi;
my $api_instance = Fastly::RealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $max_entries = 1; # int | Maximum number of results to show.

eval {
    my $result = $api_instance->get_stats_last120_seconds_limit_entries(service_id => $service_id, max_entries => $max_entries);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RealtimeApi->get_stats_last120_seconds_limit_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **max_entries** | **int**| Maximum number of results to show. | 

### Return type

[**Realtime**](Realtime.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_stats_last_second**
> Realtime get_stats_last_second(service_id => $service_id, timestamp_in_seconds => $timestamp_in_seconds)

Get real-time data from specified time

Get real-time data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next.

### Example
```perl
use Data::Dumper;
use Fastly::RealtimeApi;
my $api_instance = Fastly::RealtimeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $timestamp_in_seconds = 56; # int | Timestamp in seconds (Unix epoch time).

eval {
    my $result = $api_instance->get_stats_last_second(service_id => $service_id, timestamp_in_seconds => $timestamp_in_seconds);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RealtimeApi->get_stats_last_second: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **timestamp_in_seconds** | **int**| Timestamp in seconds (Unix epoch time). | 

### Return type

[**Realtime**](Realtime.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

