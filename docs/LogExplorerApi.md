# WebService::Fastly::LogExplorerApi

## Load the API package
```perl
use WebService::Fastly::Object::LogExplorerApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_records**](LogExplorerApi.md#get_log_records) | **GET** /observability/log-explorer | Retrieve log records


# **get_log_records**
> GetLogRecordsResponse get_log_records(service_id => $service_id, start => $start, end => $end, limit => $limit, next_cursor => $next_cursor, filter => $filter)

Retrieve log records

Retrieves log records.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LogExplorerApi;
my $api_instance = WebService::Fastly::LogExplorerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 1jlmtMz1ncwA0KC3TBGD0X; # string | 
my $start = "start_example"; # string | 
my $end = "end_example"; # string | 
my $limit = 3.4; # double | 
my $next_cursor = "next_cursor_example"; # string | 
my $filter = "filter_example"; # string | 

eval {
    my $result = $api_instance->get_log_records(service_id => $service_id, start => $start, end => $end, limit => $limit, next_cursor => $next_cursor, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogExplorerApi->get_log_records: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**|  | 
 **start** | **string**|  | 
 **end** | **string**|  | 
 **limit** | **double**|  | [optional] 
 **next_cursor** | **string**|  | [optional] 
 **filter** | **string**|  | [optional] 

### Return type

[**GetLogRecordsResponse**](GetLogRecordsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

