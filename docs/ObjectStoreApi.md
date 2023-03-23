# WebService::Fastly::ObjectStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::ObjectStoreApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_store**](ObjectStoreApi.md#create_store) | **POST** /resources/stores/object | Create an object store.
[**delete_store**](ObjectStoreApi.md#delete_store) | **DELETE** /resources/stores/object/{store_id} | Delete an object store.
[**get_store**](ObjectStoreApi.md#get_store) | **GET** /resources/stores/object/{store_id} | Describe an object store.
[**get_stores**](ObjectStoreApi.md#get_stores) | **GET** /resources/stores/object | List object stores.


# **create_store**
> StoreResponse create_store(store => $store)

Create an object store.

Create a new object store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStoreApi;
my $api_instance = WebService::Fastly::ObjectStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store = WebService::Fastly::Object::Store->new(); # Store | 

eval {
    my $result = $api_instance->create_store(store => $store);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectStoreApi->create_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

Delete an object store.

An object store must be empty before it can be deleted.  Deleting an object store that still contains keys will result in a `409` (Conflict).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStoreApi;
my $api_instance = WebService::Fastly::ObjectStoreApi->new(

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
    warn "Exception when calling ObjectStoreApi->delete_store: $@\n";
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

Describe an object store.

Get an object store by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStoreApi;
my $api_instance = WebService::Fastly::ObjectStoreApi->new(

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
    warn "Exception when calling ObjectStoreApi->get_store: $@\n";
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

List object stores.

Get all stores for a given customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStoreApi;
my $api_instance = WebService::Fastly::ObjectStoreApi->new(

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
    warn "Exception when calling ObjectStoreApi->get_stores: $@\n";
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

