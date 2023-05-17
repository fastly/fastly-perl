# WebService::Fastly::ConfigStoreItemApi

## Load the API package
```perl
use WebService::Fastly::Object::ConfigStoreItemApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_config_store_item**](ConfigStoreItemApi.md#bulk_update_config_store_item) | **PATCH** /resources/stores/config/{config_store_id}/items | Update multiple entries in a config store
[**create_config_store_item**](ConfigStoreItemApi.md#create_config_store_item) | **POST** /resources/stores/config/{config_store_id}/item | Create an entry in a config store
[**delete_config_store_item**](ConfigStoreItemApi.md#delete_config_store_item) | **DELETE** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Delete an item from a config store
[**get_config_store_item**](ConfigStoreItemApi.md#get_config_store_item) | **GET** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Get an item from a config store
[**list_config_store_items**](ConfigStoreItemApi.md#list_config_store_items) | **GET** /resources/stores/config/{config_store_id}/items | List items in a config store
[**update_config_store_item**](ConfigStoreItemApi.md#update_config_store_item) | **PATCH** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Update an entry in a config store
[**upsert_config_store_item**](ConfigStoreItemApi.md#upsert_config_store_item) | **PUT** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Insert or update an entry in a config store


# **bulk_update_config_store_item**
> InlineResponse200 bulk_update_config_store_item(config_store_id => $config_store_id, bulk_update_config_store_list_request => $bulk_update_config_store_list_request)

Update multiple entries in a config store

Add multiple key-value pairs to an individual config store, specified by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $bulk_update_config_store_list_request = WebService::Fastly::Object::BulkUpdateConfigStoreListRequest->new(); # BulkUpdateConfigStoreListRequest | 

eval {
    my $result = $api_instance->bulk_update_config_store_item(config_store_id => $config_store_id, bulk_update_config_store_list_request => $bulk_update_config_store_list_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->bulk_update_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **bulk_update_config_store_list_request** | [**BulkUpdateConfigStoreListRequest**](BulkUpdateConfigStoreListRequest.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_config_store_item**
> ConfigStoreItemResponse create_config_store_item(config_store_id => $config_store_id, item_key => $item_key, item_value => $item_value)

Create an entry in a config store

Add a single key-value pair to an individual config store, specified by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->create_config_store_item(config_store_id => $config_store_id, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->create_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_config_store_item**
> InlineResponse200 delete_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key)

Delete an item from a config store

Delete an entry in a config store given a config store ID, and item key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $config_store_item_key = "config_store_item_key_example"; # string | Item key, maximum 256 characters.

eval {
    my $result = $api_instance->delete_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->delete_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **config_store_item_key** | **string**| Item key, maximum 256 characters. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_config_store_item**
> ConfigStoreItemResponse get_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key)

Get an item from a config store

Retrieve a config store entry given a config store ID and item key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $config_store_item_key = "config_store_item_key_example"; # string | Item key, maximum 256 characters.

eval {
    my $result = $api_instance->get_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->get_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **config_store_item_key** | **string**| Item key, maximum 256 characters. | 

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_config_store_items**
> ARRAY[ConfigStoreItemResponse] list_config_store_items(config_store_id => $config_store_id)

List items in a config store

List the key-value pairs associated with a given config store ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.

eval {
    my $result = $api_instance->list_config_store_items(config_store_id => $config_store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->list_config_store_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 

### Return type

[**ARRAY[ConfigStoreItemResponse]**](ConfigStoreItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_config_store_item**
> ConfigStoreItemResponse update_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key, item_key => $item_key, item_value => $item_value)

Update an entry in a config store

Update an entry in a config store given a config store ID, item key, and item value.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $config_store_item_key = "config_store_item_key_example"; # string | Item key, maximum 256 characters.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->update_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->update_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **config_store_item_key** | **string**| Item key, maximum 256 characters. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsert_config_store_item**
> ConfigStoreItemResponse upsert_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key, item_key => $item_key, item_value => $item_value)

Insert or update an entry in a config store

Insert or update an entry in a config store given a config store ID, item key, and item value.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConfigStoreItemApi;
my $api_instance = WebService::Fastly::ConfigStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_store_id = "config_store_id_example"; # string | An alphanumeric string identifying the config store.
my $config_store_item_key = "config_store_item_key_example"; # string | Item key, maximum 256 characters.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->upsert_config_store_item(config_store_id => $config_store_id, config_store_item_key => $config_store_item_key, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigStoreItemApi->upsert_config_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_store_id** | **string**| An alphanumeric string identifying the config store. | 
 **config_store_item_key** | **string**| Item key, maximum 256 characters. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

