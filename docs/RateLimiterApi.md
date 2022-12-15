# WebService::Fastly::RateLimiterApi

## Load the API package
```perl
use WebService::Fastly::Object::RateLimiterApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_rate_limiter**](RateLimiterApi.md#delete_rate_limiter) | **DELETE** /rate-limiters/{rate_limiter_id} | Delete a rate limiter
[**get_rate_limiter**](RateLimiterApi.md#get_rate_limiter) | **GET** /rate-limiters/{rate_limiter_id} | Get a rate limiter
[**list_rate_limiters**](RateLimiterApi.md#list_rate_limiters) | **GET** /service/{service_id}/version/{version_id}/rate-limiters | List rate limiters


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

