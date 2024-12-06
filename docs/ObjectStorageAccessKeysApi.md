# WebService::Fastly::ObjectStorageAccessKeysApi

## Load the API package
```perl
use WebService::Fastly::Object::ObjectStorageAccessKeysApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_access_key**](ObjectStorageAccessKeysApi.md#create_access_key) | **POST** /resources/object-storage/access-keys | Create an access key
[**delete_access_key**](ObjectStorageAccessKeysApi.md#delete_access_key) | **DELETE** /resources/object-storage/access-keys/{access_key} | Delete an access key
[**get_access_key**](ObjectStorageAccessKeysApi.md#get_access_key) | **GET** /resources/object-storage/access-keys/{access_key} | Get an access key
[**list_access_keys**](ObjectStorageAccessKeysApi.md#list_access_keys) | **GET** /resources/object-storage/access-keys | List access keys


# **create_access_key**
> AccessKeyResponse create_access_key(access_key => $access_key)

Create an access key

Create an access key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStorageAccessKeysApi;
my $api_instance = WebService::Fastly::ObjectStorageAccessKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $access_key = WebService::Fastly::Object::AccessKey->new(); # AccessKey | 

eval {
    my $result = $api_instance->create_access_key(access_key => $access_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectStorageAccessKeysApi->create_access_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | [**AccessKey**](AccessKey.md)|  | [optional] 

### Return type

[**AccessKeyResponse**](AccessKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_access_key**
> delete_access_key(access_key => $access_key)

Delete an access key

Delete an access key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStorageAccessKeysApi;
my $api_instance = WebService::Fastly::ObjectStorageAccessKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $access_key = "access_key_example"; # string | 

eval {
    $api_instance->delete_access_key(access_key => $access_key);
};
if ($@) {
    warn "Exception when calling ObjectStorageAccessKeysApi->delete_access_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_access_key**
> AccessKey get_access_key(access_key => $access_key)

Get an access key

Get an access key by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStorageAccessKeysApi;
my $api_instance = WebService::Fastly::ObjectStorageAccessKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $access_key = "access_key_example"; # string | 

eval {
    my $result = $api_instance->get_access_key(access_key => $access_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectStorageAccessKeysApi->get_access_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | **string**|  | 

### Return type

[**AccessKey**](AccessKey.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_access_keys**
> AccessKeyResponse list_access_keys()

List access keys

List access keys.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObjectStorageAccessKeysApi;
my $api_instance = WebService::Fastly::ObjectStorageAccessKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_access_keys();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectStorageAccessKeysApi->list_access_keys: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccessKeyResponse**](AccessKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

