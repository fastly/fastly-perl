# WebService::Fastly::CacheSettingsApi

## Load the API package
```perl
use WebService::Fastly::Object::CacheSettingsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cache_settings**](CacheSettingsApi.md#create_cache_settings) | **POST** /service/{service_id}/version/{version_id}/cache_settings | Create a cache settings object
[**delete_cache_settings**](CacheSettingsApi.md#delete_cache_settings) | **DELETE** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Delete a cache settings object
[**get_cache_settings**](CacheSettingsApi.md#get_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Get a cache settings object
[**list_cache_settings**](CacheSettingsApi.md#list_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings | List cache settings objects
[**update_cache_settings**](CacheSettingsApi.md#update_cache_settings) | **PUT** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Update a cache settings object


# **create_cache_settings**
> CacheSettingResponse create_cache_settings(service_id => $service_id, version_id => $version_id, action => $action, cache_condition => $cache_condition, name => $name, stale_ttl => $stale_ttl, ttl => $ttl)

Create a cache settings object

Create a cache settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CacheSettingsApi;
my $api_instance = WebService::Fastly::CacheSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $action = "action_example"; # string | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $name = "name_example"; # string | Name for the cache settings object.
my $stale_ttl = "stale_ttl_example"; # string | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as 'stale if error').
my $ttl = "ttl_example"; # string | Maximum time to consider the object fresh in the cache (the cache 'time to live').

eval {
    my $result = $api_instance->create_cache_settings(service_id => $service_id, version_id => $version_id, action => $action, cache_condition => $cache_condition, name => $name, stale_ttl => $stale_ttl, ttl => $ttl);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CacheSettingsApi->create_cache_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **action** | **string**| If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  | [optional] 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **name** | **string**| Name for the cache settings object. | [optional] 
 **stale_ttl** | **string**| Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). | [optional] 
 **ttl** | **string**| Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). | [optional] 

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_cache_settings**
> InlineResponse200 delete_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name)

Delete a cache settings object

Delete a specific cache settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CacheSettingsApi;
my $api_instance = WebService::Fastly::CacheSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $cache_settings_name = "cache_settings_name_example"; # string | Name for the cache settings object.

eval {
    my $result = $api_instance->delete_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CacheSettingsApi->delete_cache_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **cache_settings_name** | **string**| Name for the cache settings object. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cache_settings**
> CacheSettingResponse get_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name)

Get a cache settings object

Get a specific cache settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CacheSettingsApi;
my $api_instance = WebService::Fastly::CacheSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $cache_settings_name = "cache_settings_name_example"; # string | Name for the cache settings object.

eval {
    my $result = $api_instance->get_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CacheSettingsApi->get_cache_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **cache_settings_name** | **string**| Name for the cache settings object. | 

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cache_settings**
> ARRAY[CacheSettingResponse] list_cache_settings(service_id => $service_id, version_id => $version_id)

List cache settings objects

Get a list of all cache settings for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CacheSettingsApi;
my $api_instance = WebService::Fastly::CacheSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_cache_settings(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CacheSettingsApi->list_cache_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[CacheSettingResponse]**](CacheSettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_cache_settings**
> CacheSettingResponse update_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name, action => $action, cache_condition => $cache_condition, name => $name, stale_ttl => $stale_ttl, ttl => $ttl)

Update a cache settings object

Update a specific cache settings object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CacheSettingsApi;
my $api_instance = WebService::Fastly::CacheSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $cache_settings_name = "cache_settings_name_example"; # string | Name for the cache settings object.
my $action = "action_example"; # string | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $name = "name_example"; # string | Name for the cache settings object.
my $stale_ttl = "stale_ttl_example"; # string | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as 'stale if error').
my $ttl = "ttl_example"; # string | Maximum time to consider the object fresh in the cache (the cache 'time to live').

eval {
    my $result = $api_instance->update_cache_settings(service_id => $service_id, version_id => $version_id, cache_settings_name => $cache_settings_name, action => $action, cache_condition => $cache_condition, name => $name, stale_ttl => $stale_ttl, ttl => $ttl);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CacheSettingsApi->update_cache_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **cache_settings_name** | **string**| Name for the cache settings object. | 
 **action** | **string**| If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  | [optional] 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **name** | **string**| Name for the cache settings object. | [optional] 
 **stale_ttl** | **string**| Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). | [optional] 
 **ttl** | **string**| Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). | [optional] 

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

