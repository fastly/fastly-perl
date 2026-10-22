# WebService::Fastly::AiRuntimeControlSessionsApi

## Load the API package
```perl
use WebService::Fastly::Object::AiRuntimeControlSessionsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_get_session_logs**](AiRuntimeControlSessionsApi.md#arc_get_session_logs) | **GET** /ai-runtime-control/v1/sessions | Get session logs


# **arc_get_session_logs**
> ArcSessionsResponse arc_get_session_logs(key => $key, provider => $provider, model => $model, from => $from, to => $to, cursor => $cursor, limit => $limit, sort => $sort)

Get session logs

Returns session logs, including request and response data and metadata, for debugging and audit purposes.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlSessionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlSessionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key = 7fVVQb1nZaJgnzCn4B4v3B; # string | Filter results to a specific virtual key ID.
my $provider = pTfnUUBcU1yv8SoRJn5PZ2; # string | Filter results by AI provider connection ID.
my $model = claude-sonnet-4-20250514; # string | Filter results by AI model identifier.
my $from = 2026-09-01T00:00Z; # DateTime | The start of the time range, in RFC 3339 format.
my $to = 2026-09-22T00:00Z; # DateTime | The end of the time range, in RFC 3339 format. Defaults to `now`.
my $cursor = MTAwOjA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page. 
my $limit = 100; # int | Limit how many results are returned.
my $sort = 'created_at'; # string | Sort field. Prefix with `-` for descending order (e.g., `sort=-created_at`). 

eval {
    my $result = $api_instance->arc_get_session_logs(key => $key, provider => $provider, model => $model, from => $from, to => $to, cursor => $cursor, limit => $limit, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlSessionsApi->arc_get_session_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**| Filter results to a specific virtual key ID. | [optional] 
 **provider** | **string**| Filter results by AI provider connection ID. | [optional] 
 **model** | **string**| Filter results by AI model identifier. | [optional] 
 **from** | **DateTime**| The start of the time range, in RFC 3339 format. | [optional] 
 **to** | **DateTime**| The end of the time range, in RFC 3339 format. Defaults to `now`. | [optional] 
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page.  | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **sort** | **string**| Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-created_at`).  | [optional] [default to &#39;created_at&#39;]

### Return type

[**ArcSessionsResponse**](ArcSessionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

