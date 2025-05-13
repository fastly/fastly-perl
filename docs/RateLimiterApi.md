# WebService::Fastly::RateLimiterApi

## Load the API package
```perl
use WebService::Fastly::Object::RateLimiterApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_rate_limiter**](RateLimiterApi.md#create_rate_limiter) | **POST** /service/{service_id}/version/{version_id}/rate-limiters | Create a rate limiter
[**delete_rate_limiter**](RateLimiterApi.md#delete_rate_limiter) | **DELETE** /rate-limiters/{rate_limiter_id} | Delete a rate limiter
[**get_rate_limiter**](RateLimiterApi.md#get_rate_limiter) | **GET** /rate-limiters/{rate_limiter_id} | Get a rate limiter
[**list_rate_limiters**](RateLimiterApi.md#list_rate_limiters) | **GET** /service/{service_id}/version/{version_id}/rate-limiters | List rate limiters
[**update_rate_limiter**](RateLimiterApi.md#update_rate_limiter) | **PUT** /rate-limiters/{rate_limiter_id} | Update a rate limiter


# **create_rate_limiter**
> RateLimiterResponse create_rate_limiter(service_id => $service_id, version_id => $version_id, name => $name, uri_dictionary_name => $uri_dictionary_name, http_methods => $http_methods, rps_limit => $rps_limit, window_size => $window_size, client_key => $client_key, penalty_box_duration => $penalty_box_duration, action => $action, response_object_name => $response_object_name, logger_type => $logger_type, feature_revision => $feature_revision)

Create a rate limiter

Create a rate limiter for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RateLimiterApi;
my $api_instance = WebService::Fastly::RateLimiterApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | A human readable name for the rate limiting rule.
my $uri_dictionary_name = "uri_dictionary_name_example"; # string | The name of a Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited.
my $http_methods = [("null")]; # ARRAY[string] | Array of HTTP methods to apply rate limiting to.
my $rps_limit = 56; # int | Upper limit of requests per second allowed by the rate limiter.
my $window_size = 56; # int | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
my $client_key = [("null")]; # ARRAY[string] | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`.
my $penalty_box_duration = 56; # int | Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
my $action = "action_example"; # string | The action to take when a rate limiter violation is detected.
my $response_object_name = "response_object_name_example"; # string | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
my $logger_type = "logger_type_example"; # string | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
my $feature_revision = 56; # int | Revision number of the rate limiting feature implementation. Defaults to the most recent revision.

eval {
    my $result = $api_instance->create_rate_limiter(service_id => $service_id, version_id => $version_id, name => $name, uri_dictionary_name => $uri_dictionary_name, http_methods => $http_methods, rps_limit => $rps_limit, window_size => $window_size, client_key => $client_key, penalty_box_duration => $penalty_box_duration, action => $action, response_object_name => $response_object_name, logger_type => $logger_type, feature_revision => $feature_revision);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RateLimiterApi->create_rate_limiter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| A human readable name for the rate limiting rule. | [optional] 
 **uri_dictionary_name** | **string**| The name of a Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited. | [optional] 
 **http_methods** | [**ARRAY[string]**](string.md)| Array of HTTP methods to apply rate limiting to. | [optional] 
 **rps_limit** | **int**| Upper limit of requests per second allowed by the rate limiter. | [optional] 
 **window_size** | **int**| Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. | [optional] 
 **client_key** | [**ARRAY[string]**](string.md)| Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`. | [optional] 
 **penalty_box_duration** | **int**| Length of time in minutes that the rate limiter is in effect after the initial violation is detected. | [optional] 
 **action** | **string**| The action to take when a rate limiter violation is detected. | [optional] 
 **response_object_name** | **string**| Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. | [optional] 
 **logger_type** | **string**| Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. | [optional] 
 **feature_revision** | **int**| Revision number of the rate limiting feature implementation. Defaults to the most recent revision. | [optional] 

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_rate_limiter**
> InlineResponse200 delete_rate_limiter(rate_limiter_id => $rate_limiter_id)

Delete a rate limiter

Delete a rate limiter by its ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RateLimiterApi;
my $api_instance = WebService::Fastly::RateLimiterApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rate_limiter_id = "rate_limiter_id_example"; # string | Alphanumeric string identifying the rate limiter.

eval {
    my $result = $api_instance->delete_rate_limiter(rate_limiter_id => $rate_limiter_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RateLimiterApi->delete_rate_limiter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_limiter_id** | **string**| Alphanumeric string identifying the rate limiter. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_rate_limiter**
> RateLimiterResponse get_rate_limiter(rate_limiter_id => $rate_limiter_id)

Get a rate limiter

Get a rate limiter by its ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RateLimiterApi;
my $api_instance = WebService::Fastly::RateLimiterApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rate_limiter_id = "rate_limiter_id_example"; # string | Alphanumeric string identifying the rate limiter.

eval {
    my $result = $api_instance->get_rate_limiter(rate_limiter_id => $rate_limiter_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RateLimiterApi->get_rate_limiter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_limiter_id** | **string**| Alphanumeric string identifying the rate limiter. | 

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_rate_limiters**
> ARRAY[RateLimiterResponse] list_rate_limiters(service_id => $service_id, version_id => $version_id)

List rate limiters

List all rate limiters for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RateLimiterApi;
my $api_instance = WebService::Fastly::RateLimiterApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_rate_limiters(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RateLimiterApi->list_rate_limiters: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[RateLimiterResponse]**](RateLimiterResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_rate_limiter**
> RateLimiterResponse update_rate_limiter(rate_limiter_id => $rate_limiter_id, name => $name, uri_dictionary_name => $uri_dictionary_name, http_methods => $http_methods, rps_limit => $rps_limit, window_size => $window_size, client_key => $client_key, penalty_box_duration => $penalty_box_duration, action => $action, response_object_name => $response_object_name, logger_type => $logger_type, feature_revision => $feature_revision)

Update a rate limiter

Update a rate limiter by its ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RateLimiterApi;
my $api_instance = WebService::Fastly::RateLimiterApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rate_limiter_id = "rate_limiter_id_example"; # string | Alphanumeric string identifying the rate limiter.
my $name = "name_example"; # string | A human readable name for the rate limiting rule.
my $uri_dictionary_name = "uri_dictionary_name_example"; # string | The name of a Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited.
my $http_methods = [("null")]; # ARRAY[string] | Array of HTTP methods to apply rate limiting to.
my $rps_limit = 56; # int | Upper limit of requests per second allowed by the rate limiter.
my $window_size = 56; # int | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
my $client_key = [("null")]; # ARRAY[string] | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`.
my $penalty_box_duration = 56; # int | Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
my $action = "action_example"; # string | The action to take when a rate limiter violation is detected.
my $response_object_name = "response_object_name_example"; # string | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
my $logger_type = "logger_type_example"; # string | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
my $feature_revision = 56; # int | Revision number of the rate limiting feature implementation. Defaults to the most recent revision.

eval {
    my $result = $api_instance->update_rate_limiter(rate_limiter_id => $rate_limiter_id, name => $name, uri_dictionary_name => $uri_dictionary_name, http_methods => $http_methods, rps_limit => $rps_limit, window_size => $window_size, client_key => $client_key, penalty_box_duration => $penalty_box_duration, action => $action, response_object_name => $response_object_name, logger_type => $logger_type, feature_revision => $feature_revision);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RateLimiterApi->update_rate_limiter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_limiter_id** | **string**| Alphanumeric string identifying the rate limiter. | 
 **name** | **string**| A human readable name for the rate limiting rule. | [optional] 
 **uri_dictionary_name** | **string**| The name of a Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited. | [optional] 
 **http_methods** | [**ARRAY[string]**](string.md)| Array of HTTP methods to apply rate limiting to. | [optional] 
 **rps_limit** | **int**| Upper limit of requests per second allowed by the rate limiter. | [optional] 
 **window_size** | **int**| Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. | [optional] 
 **client_key** | [**ARRAY[string]**](string.md)| Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`. | [optional] 
 **penalty_box_duration** | **int**| Length of time in minutes that the rate limiter is in effect after the initial violation is detected. | [optional] 
 **action** | **string**| The action to take when a rate limiter violation is detected. | [optional] 
 **response_object_name** | **string**| Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. | [optional] 
 **logger_type** | **string**| Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. | [optional] 
 **feature_revision** | **int**| Revision number of the rate limiting feature implementation. Defaults to the most recent revision. | [optional] 

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

