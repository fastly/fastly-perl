# WebService::Fastly::KvStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::KvStoreApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**kv_store_create**](KvStoreApi.md#kv_store_create) | **POST** /resources/stores/kv | Create a KV store.
[**kv_store_delete**](KvStoreApi.md#kv_store_delete) | **DELETE** /resources/stores/kv/{store_id} | Delete a KV store.
[**kv_store_get**](KvStoreApi.md#kv_store_get) | **GET** /resources/stores/kv/{store_id} | Describe a KV store.
[**kv_store_list**](KvStoreApi.md#kv_store_list) | **GET** /resources/stores/kv | List all KV stores.
[**kv_store_put**](KvStoreApi.md#kv_store_put) | **PUT** /resources/stores/kv/{store_id} | Update a KV store.


# **kv_store_create**
> KvStoreDetails kv_store_create(location => $location, kv_store_request_create_or_update => $kv_store_request_create_or_update)

Create a KV store.

Create a KV store.

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
my $kv_store_request_create_or_update = WebService::Fastly::Object::KvStoreRequestCreateOrUpdate->new(); # KvStoreRequestCreateOrUpdate | 

eval {
    my $result = $api_instance->kv_store_create(location => $location, kv_store_request_create_or_update => $kv_store_request_create_or_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->kv_store_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**|  | [optional] 
 **kv_store_request_create_or_update** | [**KvStoreRequestCreateOrUpdate**](KvStoreRequestCreateOrUpdate.md)|  | [optional] 

### Return type

[**KvStoreDetails**](KvStoreDetails.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_delete**
> kv_store_delete(store_id => $store_id)

Delete a KV store.

A KV store must be empty before it can be deleted. Attempting to delete a KV store that contains items will result in a response with a `409` status code.

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
    $api_instance->kv_store_delete(store_id => $store_id);
};
if ($@) {
    warn "Exception when calling KvStoreApi->kv_store_delete: $@\n";
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

# **kv_store_get**
> KvStoreDetails kv_store_get(store_id => $store_id)

Describe a KV store.

Get details of a KV store.

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
    my $result = $api_instance->kv_store_get(store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->kv_store_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 

### Return type

[**KvStoreDetails**](KvStoreDetails.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_list**
> InlineResponse20010 kv_store_list(cursor => $cursor, limit => $limit, name => $name)

List all KV stores.

List all KV stores.

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
my $limit = 1000; # int | 
my $name = "name_example"; # string | Returns a one-element array containing the details for the named KV store.

eval {
    my $result = $api_instance->kv_store_list(cursor => $cursor, limit => $limit, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreApi->kv_store_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 1000]
 **name** | **string**| Returns a one-element array containing the details for the named KV store. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_put**
> kv_store_put(store_id => $store_id, kv_store_request_create_or_update => $kv_store_request_create_or_update)

Update a KV store.

Update the name of a KV store.

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
my $kv_store_request_create_or_update = WebService::Fastly::Object::KvStoreRequestCreateOrUpdate->new(); # KvStoreRequestCreateOrUpdate | 

eval {
    $api_instance->kv_store_put(store_id => $store_id, kv_store_request_create_or_update => $kv_store_request_create_or_update);
};
if ($@) {
    warn "Exception when calling KvStoreApi->kv_store_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **kv_store_request_create_or_update** | [**KvStoreRequestCreateOrUpdate**](KvStoreRequestCreateOrUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

