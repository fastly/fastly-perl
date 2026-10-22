# WebService::Fastly::AiRuntimeControlUsageMetricsApi

## Load the API package
```perl
use WebService::Fastly::Object::AiRuntimeControlUsageMetricsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_export_usage_metrics**](AiRuntimeControlUsageMetricsApi.md#arc_export_usage_metrics) | **GET** /ai-runtime-control/v1/usage-metrics/export | Export usage metrics
[**arc_get_usage_metrics**](AiRuntimeControlUsageMetricsApi.md#arc_get_usage_metrics) | **GET** /ai-runtime-control/v1/usage-metrics | Get usage metrics


# **arc_export_usage_metrics**
> ArcUsageMetricsResponse arc_export_usage_metrics(key => $key, provider => $provider, model => $model, from => $from, to => $to)

Export usage metrics

Returns usage metrics for AI Runtime Control requests. Accepts the same filter parameters as [get usage metrics](#arc-get-usage-metrics), except `sort` and `granularity`, which aren't supported here.  Set the `Accept` header to `text/csv` to receive a CSV file download instead of a JSON response. In the CSV output, the column named `time` corresponds to the `date` field in the JSON response. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlUsageMetricsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlUsageMetricsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key = 7fVVQb1nZaJgnzCn4B4v3B; # string | Filter results to a specific virtual key ID.
my $provider = pTfnUUBcU1yv8SoRJn5PZ2; # string | Filter results by AI provider connection ID.
my $model = claude-sonnet-4-20250514; # string | Filter results by AI model identifier.
my $from = 2026-09-01T00:00Z; # DateTime | The start of the time range, in RFC 3339 format.
my $to = 2026-09-22T00:00Z; # DateTime | The end of the time range, in RFC 3339 format. Defaults to now.

eval {
    my $result = $api_instance->arc_export_usage_metrics(key => $key, provider => $provider, model => $model, from => $from, to => $to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlUsageMetricsApi->arc_export_usage_metrics: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**| Filter results to a specific virtual key ID. | [optional] 
 **provider** | **string**| Filter results by AI provider connection ID. | [optional] 
 **model** | **string**| Filter results by AI model identifier. | [optional] 
 **from** | **DateTime**| The start of the time range, in RFC 3339 format. | [optional] 
 **to** | **DateTime**| The end of the time range, in RFC 3339 format. Defaults to now. | [optional] 

### Return type

[**ArcUsageMetricsResponse**](ArcUsageMetricsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_usage_metrics**
> ArcUsageMetricsResponse arc_get_usage_metrics(key => $key, provider => $provider, model => $model, from => $from, to => $to, granularity => $granularity, sort => $sort)

Get usage metrics

Returns usage metrics for AI Runtime Control requests, including request counts, session counts, input token counts, and output token counts.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlUsageMetricsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlUsageMetricsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key = 7fVVQb1nZaJgnzCn4B4v3B; # string | Filter results to a specific virtual key ID.
my $provider = pTfnUUBcU1yv8SoRJn5PZ2; # string | Filter results by AI provider connection ID.
my $model = claude-sonnet-4-20250514; # string | Filter results by AI model identifier.
my $from = 2026-09-01T00:00Z; # DateTime | The start of the time range, in RFC 3339 format.
my $to = 2026-09-22T00:00Z; # DateTime | The end of the time range, in RFC 3339 format. Defaults to now.
my $granularity = daily; # string | The time granularity to aggregate usage by.
my $sort = date; # string | Sort field. Prefix with `-` for descending order (e.g., `sort=-date`). 

eval {
    my $result = $api_instance->arc_get_usage_metrics(key => $key, provider => $provider, model => $model, from => $from, to => $to, granularity => $granularity, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlUsageMetricsApi->arc_get_usage_metrics: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**| Filter results to a specific virtual key ID. | [optional] 
 **provider** | **string**| Filter results by AI provider connection ID. | [optional] 
 **model** | **string**| Filter results by AI model identifier. | [optional] 
 **from** | **DateTime**| The start of the time range, in RFC 3339 format. | [optional] 
 **to** | **DateTime**| The end of the time range, in RFC 3339 format. Defaults to now. | [optional] 
 **granularity** | **string**| The time granularity to aggregate usage by. | [optional] [default to &#39;daily&#39;]
 **sort** | **string**| Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-date`).  | [optional] [default to &#39;date&#39;]

### Return type

[**ArcUsageMetricsResponse**](ArcUsageMetricsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

