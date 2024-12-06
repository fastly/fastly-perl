# WebService::Fastly::KvStoreItemApi

## Load the API package
```perl
use WebService::Fastly::Object::KvStoreItemApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**delete_key_from_store**](KvStoreItemApi.md#delete_key_from_store) | **DELETE** /resources/stores/kv/{store_id}/keys/{key_name} | Delete kv store item.
[**get_keys**](KvStoreItemApi.md#get_keys) | **GET** /resources/stores/kv/{store_id}/keys | List kv store keys.
[**get_value_for_key**](KvStoreItemApi.md#get_value_for_key) | **GET** /resources/stores/kv/{store_id}/keys/{key_name} | Get the value of an kv store item
[**set_value_for_key**](KvStoreItemApi.md#set_value_for_key) | **PUT** /resources/stores/kv/{store_id}/keys/{key_name} | Insert an item into an kv store


# **delete_key_from_store**
> delete_key_from_store(store_id => $store_id, key_name => $key_name)

Delete kv store item.

Delete an item from an kv store

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreItemApi;
my $api_instance = WebService::Fastly::KvStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $key_name = "key_name_example"; # string | 

eval {
    $api_instance->delete_key_from_store(store_id => $store_id, key_name => $key_name);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->delete_key_from_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key_name** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_keys**
> InlineResponse2004 get_keys(store_id => $store_id, cursor => $cursor, limit => $limit, prefix => $prefix, consistency => $consistency)

List kv store keys.

List the keys of all items within an kv store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreItemApi;
my $api_instance = WebService::Fastly::KvStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $cursor = "cursor_example"; # string | 
my $limit = 100; # int | 
my $prefix = "prefix_example"; # string | 
my $consistency = "consistency_example"; # string | 

eval {
    my $result = $api_instance->get_keys(store_id => $store_id, cursor => $cursor, limit => $limit, prefix => $prefix, consistency => $consistency);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->get_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **cursor** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]
 **prefix** | **string**|  | [optional] 
 **consistency** | **string**|  | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_value_for_key**
> string get_value_for_key(store_id => $store_id, key_name => $key_name)

Get the value of an kv store item

Get the value associated with a key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreItemApi;
my $api_instance = WebService::Fastly::KvStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $key_name = "key_name_example"; # string | 

eval {
    my $result = $api_instance->get_value_for_key(store_id => $store_id, key_name => $key_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->get_value_for_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key_name** | **string**|  | 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_value_for_key**
> string set_value_for_key(store_id => $store_id, key_name => $key_name, if_generation_match => $if_generation_match, time_to_live_sec => $time_to_live_sec, metadata => $metadata, add => $add, append => $append, prepend => $prepend, background_fetch => $background_fetch, body => $body)

Insert an item into an kv store

Set a new value for a new or existing key in an kv store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::KvStoreItemApi;
my $api_instance = WebService::Fastly::KvStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $key_name = "key_name_example"; # string | 
my $if_generation_match = 56; # int | 
my $time_to_live_sec = 56; # int | 
my $metadata = "metadata_example"; # string | 
my $add = null; # boolean | 
my $append = null; # boolean | 
my $prepend = null; # boolean | 
my $background_fetch = null; # boolean | 
my $body = WebService::Fastly::Object::string->new(); # string | 

eval {
    my $result = $api_instance->set_value_for_key(store_id => $store_id, key_name => $key_name, if_generation_match => $if_generation_match, time_to_live_sec => $time_to_live_sec, metadata => $metadata, add => $add, append => $append, prepend => $prepend, background_fetch => $background_fetch, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->set_value_for_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key_name** | **string**|  | 
 **if_generation_match** | **int**|  | [optional] 
 **time_to_live_sec** | **int**|  | [optional] 
 **metadata** | **string**|  | [optional] 
 **add** | **boolean**|  | [optional] 
 **append** | **boolean**|  | [optional] 
 **prepend** | **boolean**|  | [optional] 
 **background_fetch** | **boolean**|  | [optional] 
 **body** | **string**|  | [optional] 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

