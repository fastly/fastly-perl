# WebService::Fastly::MetricsPlatformApi

## Load the API package
```perl
use WebService::Fastly::Object::MetricsPlatformApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_platform_metrics_service_historical**](MetricsPlatformApi.md#get_platform_metrics_service_historical) | **GET** /metrics/platform/services/{service_id}/{granularity} | Get historical time series metrics for a single service


# **get_platform_metrics_service_historical**
> PlatformMetricsResponse get_platform_metrics_service_historical(service_id => $service_id, granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit)

Get historical time series metrics for a single service

Fetches historical metrics for a single service for a given granularity.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MetricsPlatformApi;
my $api_instance = WebService::Fastly::MetricsPlatformApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $granularity = daily; # string | Duration of sample windows.
my $from = 2025-06-08T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $to = 2025-08-02T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $metric = ttfb_edge_p95_us,ttfb_edge_p99_us; # string | The metric(s) to retrieve. Multiple values should be comma-separated.
my $metric_set = ttfb; # string | The metric set(s) to retrieve. Multiple values should be comma-separated.
my $group_by = region; # string | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
my $region = usa; # string | Limit query to one or more specific geographic regions. Values should be comma-separated. 
my $datacenter = SJC,STP; # string | Limit query to one or more specific POPs. Values should be comma-separated.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = '1000'; # string | Number of results per page. The maximum is 10000.

eval {
    my $result = $api_instance->get_platform_metrics_service_historical(service_id => $service_id, granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsPlatformApi->get_platform_metrics_service_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **granularity** | **string**| Duration of sample windows. | 
 **from** | **string**| A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **to** | **string**| A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **metric** | **string**| The metric(s) to retrieve. Multiple values should be comma-separated. | [optional] 
 **metric_set** | **string**| The metric set(s) to retrieve. Multiple values should be comma-separated. | [optional] 
 **group_by** | **string**| Field to group_by in the query. For example, `group_by&#x3D;region` will return entries for grouped by timestamp and region.  | [optional] 
 **region** | **string**| Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] 
 **datacenter** | **string**| Limit query to one or more specific POPs. Values should be comma-separated. | [optional] 
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 10000. | [optional] [default to &#39;1000&#39;]

### Return type

[**PlatformMetricsResponse**](PlatformMetricsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

