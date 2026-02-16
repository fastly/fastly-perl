# WebService::Fastly::KvStoreItemApi

## Load the API package
```perl
use WebService::Fastly::Object::KvStoreItemApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**kv_store_delete_item**](KvStoreItemApi.md#kv_store_delete_item) | **DELETE** /resources/stores/kv/{store_id}/keys/{key} | Delete an item.
[**kv_store_get_item**](KvStoreItemApi.md#kv_store_get_item) | **GET** /resources/stores/kv/{store_id}/keys/{key} | Get an item.
[**kv_store_list_item_keys**](KvStoreItemApi.md#kv_store_list_item_keys) | **GET** /resources/stores/kv/{store_id}/keys | List item keys.
[**kv_store_upsert_item**](KvStoreItemApi.md#kv_store_upsert_item) | **PUT** /resources/stores/kv/{store_id}/keys/{key} | Insert or update an item.


# **kv_store_delete_item**
> kv_store_delete_item(store_id => $store_id, key => $key, if_generation_match => $if_generation_match, force => $force)

Delete an item.

Delete an item.

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
my $key = "key_example"; # string | 
my $if_generation_match = 56; # int | 
my $force = false; # boolean | 

eval {
    $api_instance->kv_store_delete_item(store_id => $store_id, key => $key, if_generation_match => $if_generation_match, force => $force);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->kv_store_delete_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key** | **string**|  | 
 **if_generation_match** | **int**|  | [optional] 
 **force** | **boolean**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_get_item**
> string kv_store_get_item(store_id => $store_id, key => $key)

Get an item.

Get an item, including its value, metadata (if any), and generation marker.

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
my $key = "key_example"; # string | 

eval {
    my $result = $api_instance->kv_store_get_item(store_id => $store_id, key => $key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->kv_store_get_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key** | **string**|  | 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_list_item_keys**
> InlineResponse20011 kv_store_list_item_keys(store_id => $store_id, cursor => $cursor, limit => $limit, prefix => $prefix, consistency => $consistency)

List item keys.

Lists the matching item keys (or all item keys, if no prefix is supplied).

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
my $consistency = 'strong'; # string | 

eval {
    my $result = $api_instance->kv_store_list_item_keys(store_id => $store_id, cursor => $cursor, limit => $limit, prefix => $prefix, consistency => $consistency);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->kv_store_list_item_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **cursor** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]
 **prefix** | **string**|  | [optional] 
 **consistency** | **string**|  | [optional] [default to &#39;strong&#39;]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kv_store_upsert_item**
> kv_store_upsert_item(store_id => $store_id, key => $key, if_generation_match => $if_generation_match, time_to_live_sec => $time_to_live_sec, metadata => $metadata, add => $add, append => $append, prepend => $prepend, background_fetch => $background_fetch, body => $body)

Insert or update an item.

Inserts or updates an item's value and metadata.

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
my $key = "key_example"; # string | 
my $if_generation_match = 56; # int | 
my $time_to_live_sec = 56; # int | 
my $metadata = "metadata_example"; # string | 
my $add = false; # boolean | 
my $append = false; # boolean | 
my $prepend = false; # boolean | 
my $background_fetch = false; # boolean | 
my $body = WebService::Fastly::Object::string->new(); # string | 

eval {
    $api_instance->kv_store_upsert_item(store_id => $store_id, key => $key, if_generation_match => $if_generation_match, time_to_live_sec => $time_to_live_sec, metadata => $metadata, add => $add, append => $append, prepend => $prepend, background_fetch => $background_fetch, body => $body);
};
if ($@) {
    warn "Exception when calling KvStoreItemApi->kv_store_upsert_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **key** | **string**|  | 
 **if_generation_match** | **int**|  | [optional] 
 **time_to_live_sec** | **int**|  | [optional] 
 **metadata** | **string**|  | [optional] 
 **add** | **boolean**|  | [optional] [default to false]
 **append** | **boolean**|  | [optional] [default to false]
 **prepend** | **boolean**|  | [optional] [default to false]
 **background_fetch** | **boolean**|  | [optional] [default to false]
 **body** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

