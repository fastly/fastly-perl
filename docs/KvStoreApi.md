# WebService::Fastly::KvStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::KvStoreApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_store**](KvStoreApi.md#create_store) | **POST** /resources/stores/kv | Create an kv store.
[**delete_store**](KvStoreApi.md#delete_store) | **DELETE** /resources/stores/kv/{store_id} | Delete an kv store.
[**get_store**](KvStoreApi.md#get_store) | **GET** /resources/stores/kv/{store_id} | Describe an kv store.
[**get_stores**](KvStoreApi.md#get_stores) | **GET** /resources/stores/kv | List kv stores.


# **create_store**
> StoreResponse create_store(location => $location, store => $store)

Create an kv store.

Create a new kv store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreApi;
my $api_instance = WebService::Fastly::KvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $location = "location_example"; # string | 
my $store = WebService::Fastly::Object::Store->new(); # Store | 

eval {
    my $result = $api_instance->create_store(location => $location, store => $store);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->create_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**|  | [optional] 
 **store** | [**Store**](Store.md)|  | [optional] 

### Return type

[**StoreResponse**](StoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_store**
> delete_store(store_id => $store_id)

Delete an kv store.

An kv store must be empty before it can be deleted.  Deleting an kv store that still contains keys will result in a `409` (Conflict).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreApi;
my $api_instance = WebService::Fastly::KvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 

eval {
    $api_instance->delete_store(store_id => $store_id);
};
if ($@) {
    warn "Exception when calling KvStoreApi->delete_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store**
> StoreResponse get_store(store_id => $store_id)

Describe an kv store.

Get an kv store by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreApi;
my $api_instance = WebService::Fastly::KvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 

eval {
    my $result = $api_instance->get_store(store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->get_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 

### Return type

[**StoreResponse**](StoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_stores**
> InlineResponse2003 get_stores(cursor => $cursor, limit => $limit)

List kv stores.

Get all stores for a given customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreApi;
my $api_instance = WebService::Fastly::KvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $cursor = "cursor_example"; # string | 
my $limit = 100; # int | 

eval {
    my $result = $api_instance->get_stores(cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->get_stores: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

