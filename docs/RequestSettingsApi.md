# WebService::Fastly::RequestSettingsApi

## Load the API package
```perl
use WebService::Fastly::Object::RequestSettingsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_request_settings**](RequestSettingsApi.md#create_request_settings) | **POST** /service/{service_id}/version/{version_id}/request_settings | Create a Request Settings object
[**delete_request_settings**](RequestSettingsApi.md#delete_request_settings) | **DELETE** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Delete a Request Settings object
[**get_request_settings**](RequestSettingsApi.md#get_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Get a Request Settings object
[**list_request_settings**](RequestSettingsApi.md#list_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings | List Request Settings objects
[**update_request_settings**](RequestSettingsApi.md#update_request_settings) | **PUT** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Update a Request Settings object


# **create_request_settings**
> RequestSettingsResponse create_request_settings(service_id => $service_id, version_id => $version_id)

Create a Request Settings object

Creates a new Request Settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RequestSettingsApi;
my $api_instance = WebService::Fastly::RequestSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->create_request_settings(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RequestSettingsApi->create_request_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_request_settings**
> InlineResponse200 delete_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name)

Delete a Request Settings object

Removes the specified Request Settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RequestSettingsApi;
my $api_instance = WebService::Fastly::RequestSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $request_settings_name = "request_settings_name_example"; # string | Name for the request settings.

eval {
    my $result = $api_instance->delete_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RequestSettingsApi->delete_request_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **request_settings_name** | **string**| Name for the request settings. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_request_settings**
> RequestSettingsResponse get_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name)

Get a Request Settings object

Gets the specified Request Settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RequestSettingsApi;
my $api_instance = WebService::Fastly::RequestSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $request_settings_name = "request_settings_name_example"; # string | Name for the request settings.

eval {
    my $result = $api_instance->get_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RequestSettingsApi->get_request_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **request_settings_name** | **string**| Name for the request settings. | 

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_request_settings**
> ARRAY[RequestSettingsResponse] list_request_settings(service_id => $service_id, version_id => $version_id)

List Request Settings objects

Returns a list of all Request Settings objects for the given service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RequestSettingsApi;
my $api_instance = WebService::Fastly::RequestSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_request_settings(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RequestSettingsApi->list_request_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[RequestSettingsResponse]**](RequestSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_request_settings**
> RequestSettingsResponse update_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name, action => $action, bypass_busy_wait => $bypass_busy_wait, default_host => $default_host, force_miss => $force_miss, force_ssl => $force_ssl, geo_headers => $geo_headers, hash_keys => $hash_keys, max_stale_age => $max_stale_age, name => $name, request_condition => $request_condition, timer_support => $timer_support, xff => $xff)

Update a Request Settings object

Updates the specified Request Settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::RequestSettingsApi;
my $api_instance = WebService::Fastly::RequestSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $request_settings_name = "request_settings_name_example"; # string | Name for the request settings.
my $action = "action_example"; # string | Allows you to terminate request handling and immediately perform an action.
my $bypass_busy_wait = 56; # int | Disable collapsed forwarding, so you don't wait for other objects to origin.
my $default_host = "default_host_example"; # string | Sets the host header.
my $force_miss = 56; # int | Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.
my $force_ssl = 56; # int | Forces the request use SSL (redirects a non-SSL to SSL).
my $geo_headers = 56; # int | Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.
my $hash_keys = "hash_keys_example"; # string | Comma separated list of varnish request object fields that should be in the hash key.
my $max_stale_age = 56; # int | How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.
my $name = "name_example"; # string | Name for the request settings.
my $request_condition = "request_condition_example"; # string | Condition which, if met, will select this configuration during a request. Optional.
my $timer_support = 56; # int | Injects the X-Timer info into the request for viewing origin fetch durations.
my $xff = "xff_example"; # string | Short for X-Forwarded-For.

eval {
    my $result = $api_instance->update_request_settings(service_id => $service_id, version_id => $version_id, request_settings_name => $request_settings_name, action => $action, bypass_busy_wait => $bypass_busy_wait, default_host => $default_host, force_miss => $force_miss, force_ssl => $force_ssl, geo_headers => $geo_headers, hash_keys => $hash_keys, max_stale_age => $max_stale_age, name => $name, request_condition => $request_condition, timer_support => $timer_support, xff => $xff);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RequestSettingsApi->update_request_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **request_settings_name** | **string**| Name for the request settings. | 
 **action** | **string**| Allows you to terminate request handling and immediately perform an action. | [optional] 
 **bypass_busy_wait** | **int**| Disable collapsed forwarding, so you don&#39;t wait for other objects to origin. | [optional] 
 **default_host** | **string**| Sets the host header. | [optional] 
 **force_miss** | **int**| Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable. | [optional] 
 **force_ssl** | **int**| Forces the request use SSL (redirects a non-SSL to SSL). | [optional] 
 **geo_headers** | **int**| Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers. | [optional] 
 **hash_keys** | **string**| Comma separated list of varnish request object fields that should be in the hash key. | [optional] 
 **max_stale_age** | **int**| How old an object is allowed to be to serve stale-if-error or stale-while-revalidate. | [optional] 
 **name** | **string**| Name for the request settings. | [optional] 
 **request_condition** | **string**| Condition which, if met, will select this configuration during a request. Optional. | [optional] 
 **timer_support** | **int**| Injects the X-Timer info into the request for viewing origin fetch durations. | [optional] 
 **xff** | **string**| Short for X-Forwarded-For. | [optional] 

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

