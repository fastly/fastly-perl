# WebService::Fastly::ProductKvStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductKvStoreApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_kv_store**](ProductKvStoreApi.md#disable_product_kv_store) | **DELETE** /enabled-products/v1/kv_store | Disable product
[**enable_kv_store**](ProductKvStoreApi.md#enable_kv_store) | **PUT** /enabled-products/v1/kv_store | Enable product
[**get_kv_store**](ProductKvStoreApi.md#get_kv_store) | **GET** /enabled-products/v1/kv_store | Get product enablement status


# **disable_product_kv_store**
> disable_product_kv_store()

Disable product

Disable the KV Store product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductKvStoreApi;
my $api_instance = WebService::Fastly::ProductKvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->disable_product_kv_store();
};
if ($@) {
    warn "Exception when calling ProductKvStoreApi->disable_product_kv_store: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_kv_store**
> KvStoreResponseBodyEnable enable_kv_store()

Enable product

Enable the KV Store product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductKvStoreApi;
my $api_instance = WebService::Fastly::ProductKvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->enable_kv_store();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductKvStoreApi->enable_kv_store: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KvStoreResponseBodyEnable**](KvStoreResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_kv_store**
> KvStoreResponseBodyEnable get_kv_store()

Get product enablement status

Get the enablement status of the KV Store product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductKvStoreApi;
my $api_instance = WebService::Fastly::ProductKvStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_kv_store();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductKvStoreApi->get_kv_store: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KvStoreResponseBodyEnable**](KvStoreResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

