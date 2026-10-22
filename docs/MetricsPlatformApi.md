# WebService::Fastly::MetricsPlatformApi

## Load the API package
```perl
use WebService::Fastly::Object::MetricsPlatformApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_platform_metrics_aggregate_historical**](MetricsPlatformApi.md#get_platform_metrics_aggregate_historical) | **GET** /metrics/v2/platform/aggregate/{granularity} | Get aggregated historical time series metrics for all entities
[**get_platform_metrics_entity_historical**](MetricsPlatformApi.md#get_platform_metrics_entity_historical) | **GET** /metrics/v2/platform/entities/{entity_id}/{granularity} | Get historical time series metrics for a single entity.


# **get_platform_metrics_aggregate_historical**
> PlatformMetricsResponse get_platform_metrics_aggregate_historical(granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit)

Get aggregated historical time series metrics for all entities

Fetches historical metrics for all entities for a customer for a given granularity. Entity in this context refers to an instance of a Fastly resource, such as a VCL service, Compute service, or NGWAF workspace.

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

my $granularity = minutely; # string | Duration of sample windows.
my $from = 2025-06-08T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $to = 2025-08-02T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $metric = status_4xx,status_5xx,ipv6,http3; # string | One or more metrics to retrieve. Multiple values should be comma-separated.
my $metric_set = delivery_traffic_flow; # string | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once. 
my $group_by = region; # string | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
my $region = usa; # string | Limit query to one or more specific geographic regions. Values should be comma-separated. 
my $datacenter = SJC,STP; # string | Limit query to one or more specific POPs. Values should be comma-separated.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = '1000'; # string | Number of results per page. The maximum is 10000.

eval {
    my $result = $api_instance->get_platform_metrics_aggregate_historical(granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsPlatformApi->get_platform_metrics_aggregate_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **string**| Duration of sample windows. | 
 **from** | **string**| A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **to** | **string**| A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **metric** | **string**| One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] 
 **metric_set** | **string**| One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once.  | [optional] 
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

# **get_platform_metrics_entity_historical**
> PlatformMetricsResponse get_platform_metrics_entity_historical(entity_id => $entity_id, granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit)

Get historical time series metrics for a single entity.

Fetches historical metrics for a single entity for a given granularity. Entity in this context refers to an instance of a Fastly resource, such as a VCL service, Compute service, or NGWAF workspace.

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

my $entity_id = l4c2G719JnG5z0qbt512fG; # string | Alphanumeric string identifying the entity.
my $granularity = minutely; # string | Duration of sample windows.
my $from = 2025-06-08T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $to = 2025-08-02T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $metric = status_4xx,status_5xx,ipv6,http3; # string | One or more metrics to retrieve. Multiple values should be comma-separated.
my $metric_set = delivery_traffic_flow; # string | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once. 
my $group_by = region; # string | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
my $region = usa; # string | Limit query to one or more specific geographic regions. Values should be comma-separated. 
my $datacenter = SJC,STP; # string | Limit query to one or more specific POPs. Values should be comma-separated.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = '1000'; # string | Number of results per page. The maximum is 10000.

eval {
    my $result = $api_instance->get_platform_metrics_entity_historical(entity_id => $entity_id, granularity => $granularity, from => $from, to => $to, metric => $metric, metric_set => $metric_set, group_by => $group_by, region => $region, datacenter => $datacenter, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsPlatformApi->get_platform_metrics_entity_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **string**| Alphanumeric string identifying the entity. | 
 **granularity** | **string**| Duration of sample windows. | 
 **from** | **string**| A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **to** | **string**| A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **metric** | **string**| One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] 
 **metric_set** | **string**| One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once.  | [optional] 
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

