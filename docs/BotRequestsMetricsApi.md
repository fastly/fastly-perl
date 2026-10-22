# WebService::Fastly::BotRequestsMetricsApi

## Load the API package
```perl
use WebService::Fastly::Object::BotRequestsMetricsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_bot_request_metrics_service_historical**](BotRequestsMetricsApi.md#get_bot_request_metrics_service_historical) | **GET** /metrics/bots/entities/{service_id}/{granularity} | Get per-service historical time series metrics for bot requests broken down by bot-type.


# **get_bot_request_metrics_service_historical**
> BotRequestMetricsResponse get_bot_request_metrics_service_historical(granularity => $granularity, service_id => $service_id, from => $from, to => $to, group_by => $group_by, datacenter => $datacenter, bot => $bot, region => $region, cursor => $cursor, metric => $metric, metric_set => $metric_set, limit => $limit)

Get per-service historical time series metrics for bot requests broken down by bot-type.

Return historical time series metrics for bot requests broken down by bot-type.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotRequestsMetricsApi;
my $api_instance = WebService::Fastly::BotRequestsMetricsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $granularity = minutely; # string | Duration of sample windows.
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $from = 2025-06-08T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $to = 2025-08-02T00:00:00.000Z; # string | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
my $group_by = bot_id; # string | Field to group by in the query. For example, `group_by=bot_id` will return entries grouped by `timestamp` and `bot_id`. 
my $datacenter = SJC,STP; # string | Limit query to one or more specific POPs. Values should be comma-separated.
my $bot = "bot_example"; # string | Filter results based by Bot ID.
my $region = usa; # string | Limit query to one or more specific geographic regions. Values should be comma-separated. 
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $metric = status_4xx,status_5xx,ipv6,http3; # string | One or more metrics to retrieve. Multiple values should be comma-separated.
my $metric_set = content_guard; # string | The metric set to retrieve.
my $limit = '1000'; # string | Number of results per page. The maximum is 10000.

eval {
    my $result = $api_instance->get_bot_request_metrics_service_historical(granularity => $granularity, service_id => $service_id, from => $from, to => $to, group_by => $group_by, datacenter => $datacenter, bot => $bot, region => $region, cursor => $cursor, metric => $metric, metric_set => $metric_set, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotRequestsMetricsApi->get_bot_request_metrics_service_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **string**| Duration of sample windows. | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **from** | **string**| A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **to** | **string**| A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] 
 **group_by** | **string**| Field to group by in the query. For example, `group_by&#x3D;bot_id` will return entries grouped by `timestamp` and `bot_id`.  | [optional] 
 **datacenter** | **string**| Limit query to one or more specific POPs. Values should be comma-separated. | [optional] 
 **bot** | **string**| Filter results based by Bot ID. | [optional] 
 **region** | **string**| Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] 
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **metric** | **string**| One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] 
 **metric_set** | **string**| The metric set to retrieve. | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 10000. | [optional] [default to &#39;1000&#39;]

### Return type

[**BotRequestMetricsResponse**](BotRequestMetricsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

