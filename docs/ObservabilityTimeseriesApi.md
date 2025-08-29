# WebService::Fastly::ObservabilityTimeseriesApi

## Load the API package
```perl
use WebService::Fastly::Object::ObservabilityTimeseriesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**timeseries_get**](ObservabilityTimeseriesApi.md#timeseries_get) | **GET** /observability/timeseries | Retrieve observability data as a time series


# **timeseries_get**
> TimeseriesGetResponse timeseries_get(source => $source, from => $from, to => $to, granularity => $granularity, series => $series, dimensions => $dimensions, filter => $filter)

Retrieve observability data as a time series

Retrieves observability data as a time series.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityTimeseriesApi;
my $api_instance = WebService::Fastly::ObservabilityTimeseriesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $source = logs; # string | 
my $from = 2024-01-03T16:00:00Z; # string | 
my $to = 2024-01-03T18:00:00Z; # string | 
my $granularity = hour; # string | 
my $series = avg[response_time],p99[response_time]; # string | 
my $dimensions = "dimensions_example"; # string | 
my $filter = filter[response_status]=200; # string | 

eval {
    my $result = $api_instance->timeseries_get(source => $source, from => $from, to => $to, granularity => $granularity, series => $series, dimensions => $dimensions, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityTimeseriesApi->timeseries_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **string**|  | 
 **from** | **string**|  | 
 **to** | **string**|  | 
 **granularity** | **string**|  | 
 **series** | **string**|  | 
 **dimensions** | **string**|  | [optional] 
 **filter** | **string**|  | [optional] 

### Return type

[**TimeseriesGetResponse**](TimeseriesGetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

