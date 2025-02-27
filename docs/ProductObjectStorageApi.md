# WebService::Fastly::ProductObjectStorageApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductObjectStorageApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_object_storage**](ProductObjectStorageApi.md#disable_product_object_storage) | **DELETE** /enabled-products/v1/object_storage | Disable product
[**enable_object_storage**](ProductObjectStorageApi.md#enable_object_storage) | **PUT** /enabled-products/v1/object_storage | Enable product
[**get_object_storage**](ProductObjectStorageApi.md#get_object_storage) | **GET** /enabled-products/v1/object_storage | Get product enablement status


# **disable_product_object_storage**
> disable_product_object_storage()

Disable product

Disable the Object Storage product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductObjectStorageApi;
my $api_instance = WebService::Fastly::ProductObjectStorageApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->disable_product_object_storage();
};
if ($@) {
    warn "Exception when calling ProductObjectStorageApi->disable_product_object_storage: $@\n";
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

# **enable_object_storage**
> ObjectStorageResponseBodyEnable enable_object_storage()

Enable product

Enable the Object Storage product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductObjectStorageApi;
my $api_instance = WebService::Fastly::ProductObjectStorageApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->enable_object_storage();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductObjectStorageApi->enable_object_storage: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectStorageResponseBodyEnable**](ObjectStorageResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_object_storage**
> ObjectStorageResponseBodyEnable get_object_storage()

Get product enablement status

Get the enablement status of the Object Storage product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductObjectStorageApi;
my $api_instance = WebService::Fastly::ProductObjectStorageApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_object_storage();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductObjectStorageApi->get_object_storage: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectStorageResponseBodyEnable**](ObjectStorageResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

