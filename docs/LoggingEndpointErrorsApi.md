# WebService::Fastly::LoggingEndpointErrorsApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingEndpointErrorsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_endpoint_errors**](LoggingEndpointErrorsApi.md#get_log_endpoint_errors) | **GET** /observability/service/{service_id}/logging/errors | Stream Log Endpoint Errors


# **get_log_endpoint_errors**
> string get_log_endpoint_errors(service_id => $service_id, from => $from, to => $to, filter[endpoint] => $filter[endpoint])

Stream Log Endpoint Errors

Provides a near real-time stream of log errors through a hybrid short-polling model. A client should make an initial request using the `from` parameter to specify a start time. The `to` parameter should be used alongside the `from` parameter since the default bucket is 10 seconds.  For pagination, use the URLs provided in the Link header of the response. These contain updated `from` timestamps for retrieving the next or previous page of logs.  Defaults to `application/x-ndjson` format. Use `Accept: application/json` header to request standard JSON array format instead. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingEndpointErrorsApi;
my $api_instance = WebService::Fastly::LoggingEndpointErrorsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = SU1Z0isxPaozGVKXdv0eY; # string | 
my $from = 1756123200; # int | 
my $to = 1756209600; # int | 
my $filter[endpoint] = MyS3,BigQuery; # string | 

eval {
    my $result = $api_instance->get_log_endpoint_errors(service_id => $service_id, from => $from, to => $to, filter[endpoint] => $filter[endpoint]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingEndpointErrorsApi->get_log_endpoint_errors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**|  | 
 **from** | **int**|  | [optional] 
 **to** | **int**|  | [optional] 
 **filter[endpoint]** | **string**|  | [optional] 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

