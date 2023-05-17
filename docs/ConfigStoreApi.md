# WebService::Fastly::ConfigStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::ConfigStoreApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_config_store**](ConfigStoreApi.md#create_config_store) | **POST** /resources/stores/config | Create a config store
[**delete_config_store**](ConfigStoreApi.md#delete_config_store) | **DELETE** /resources/stores/config/{config_store_id} | Delete a config store
[**get_config_store**](ConfigStoreApi.md#get_config_store) | **GET** /resources/stores/config/{config_store_id} | Describe a config store
[**get_config_store_info**](ConfigStoreApi.md#get_config_store_info) | **GET** /resources/stores/config/{config_store_id}/info | Get config store metadata
[**list_config_store_services**](ConfigStoreApi.md#list_config_store_services) | **GET** /resources/stores/config/{config_store_id}/services | List linked services
[**list_config_stores**](ConfigStoreApi.md#list_config_stores) | **GET** /resources/stores/config | List config stores
[**update_config_store**](ConfigStoreApi.md#update_config_store) | **PUT** /resources/stores/config/{config_store_id} | Update a config store


# **create_config_store**
> ConfigStoreResponse create_config_store(name => $name)

Create a config store

Create a config store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $name = "name_example"; # string | The name of the config store.

eval {
    my $result = $api_instance->create_config_store(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->create_config_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the config store. | [optional] 

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_config_store**
> InlineResponse200 delete_config_store(config_store_id => $config_store_id)

Delete a config store

Delete a config store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.

eval {
    my $result = $api_instance->delete_config_store(config_store_id => $config_store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->delete_config_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_config_store**
> ConfigStoreResponse get_config_store(config_store_id => $config_store_id)

Describe a config store

Describe a config store by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.

eval {
    my $result = $api_instance->get_config_store(config_store_id => $config_store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->get_config_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_config_store_info**
> ConfigStoreInfoResponse get_config_store_info(config_store_id => $config_store_id)

Get config store metadata

Retrieve metadata for a single config store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.

eval {
    my $result = $api_instance->get_config_store_info(config_store_id => $config_store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->get_config_store_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 

### Return type

[**ConfigStoreInfoResponse**](ConfigStoreInfoResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_config_store_services**
> object list_config_store_services(config_store_id => $config_store_id)

List linked services

List services linked to a config store

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.

eval {
    my $result = $api_instance->list_config_store_services(config_store_id => $config_store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->list_config_store_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_config_stores**
> ARRAY[ConfigStoreResponse] list_config_stores()

List config stores

List config stores.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_config_stores();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->list_config_stores: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ConfigStoreResponse]**](ConfigStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_config_store**
> ConfigStoreResponse update_config_store(config_store_id => $config_store_id, name => $name)

Update a config store

Update a config store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreApi;
my $api_instance = WebService::Fastly::ConfigStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $name = "name_example"; # string | The name of the config store.

eval {
    my $result = $api_instance->update_config_store(config_store_id => $config_store_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreApi->update_config_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **name** | **string**| The name of the config store. | [optional] 

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

