# WebService::Fastly::ObservabilityTimeseriesForLogsApi

## Load the API package
```perl
use WebService::Fastly::Object::ObservabilityTimeseriesForLogsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**log_timeseries_get**](ObservabilityTimeseriesForLogsApi.md#log_timeseries_get) | **GET** /observability/timeseries | Retrieve log data as time series


# **log_timeseries_get**
> LogTimeseriesGetResponse log_timeseries_get(source => $source, service_id => $service_id, start => $start, end => $end, granularity => $granularity, series => $series, filter => $filter)

Retrieve log data as time series

Retrieves log data as time series.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityTimeseriesForLogsApi;
my $api_instance = WebService::Fastly::ObservabilityTimeseriesForLogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $source = "source_example"; # string | 
my $service_id = "service_id_example"; # string | 
my $start = "start_example"; # string | 
my $end = "end_example"; # string | 
my $granularity = "granularity_example"; # string | 
my $series = "series_example"; # string | 
my $filter = "filter_example"; # string | 

eval {
    my $result = $api_instance->log_timeseries_get(source => $source, service_id => $service_id, start => $start, end => $end, granularity => $granularity, series => $series, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityTimeseriesForLogsApi->log_timeseries_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **string**|  | 
 **service_id** | **string**|  | 
 **start** | **string**|  | 
 **end** | **string**|  | 
 **granularity** | **string**|  | 
 **series** | **string**|  | 
 **filter** | **string**|  | [optional] 

### Return type

[**LogTimeseriesGetResponse**](LogTimeseriesGetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

