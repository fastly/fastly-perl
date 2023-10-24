# WebService::Fastly::WholePlatformDdosHistoricalApi

## Load the API package
```perl
use WebService::Fastly::Object::WholePlatformDdosHistoricalApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_platform_ddos_historical**](WholePlatformDdosHistoricalApi.md#get_platform_ddos_historical) | **GET** /metrics/platform/ddos | Get historical DDoS metrics for the entire Fastly platform


# **get_platform_ddos_historical**
> PlatformDdosResponse get_platform_ddos_historical(start => $start, end => $end, downsample => $downsample)

Get historical DDoS metrics for the entire Fastly platform

Fetches historical DDoS metrics for the entire Fastly platform.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WholePlatformDdosHistoricalApi;
my $api_instance = WebService::Fastly::WholePlatformDdosHistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $start = 2021-08-01T00:00:00.000Z; # string | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
my $end = 2020-08-02T00:00:00.000Z; # string | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
my $downsample = hour; # string | Duration of sample windows.

eval {
    my $result = $api_instance->get_platform_ddos_historical(start => $start, end => $end, downsample => $downsample);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WholePlatformDdosHistoricalApi->get_platform_ddos_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **string**| A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] 
 **end** | **string**| A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] 
 **downsample** | **string**| Duration of sample windows. | [optional] [default to &#39;hour&#39;]

### Return type

[**PlatformDdosResponse**](PlatformDdosResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

