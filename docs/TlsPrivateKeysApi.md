# WebService::Fastly::TlsPrivateKeysApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsPrivateKeysApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tls_key**](TlsPrivateKeysApi.md#create_tls_key) | **POST** /tls/private_keys | Create a TLS private key
[**delete_tls_key**](TlsPrivateKeysApi.md#delete_tls_key) | **DELETE** /tls/private_keys/{tls_private_key_id} | Delete a TLS private key
[**get_tls_key**](TlsPrivateKeysApi.md#get_tls_key) | **GET** /tls/private_keys/{tls_private_key_id} | Get a TLS private key
[**list_tls_keys**](TlsPrivateKeysApi.md#list_tls_keys) | **GET** /tls/private_keys | List TLS private keys


# **create_tls_key**
> TlsPrivateKeyResponse create_tls_key(tls_private_key => $tls_private_key)

Create a TLS private key

Create a TLS private key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsPrivateKeysApi;
my $api_instance = WebService::Fastly::TlsPrivateKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_private_key = WebService::Fastly::Object::TlsPrivateKey->new(); # TlsPrivateKey | 

eval {
    my $result = $api_instance->create_tls_key(tls_private_key => $tls_private_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsPrivateKeysApi->create_tls_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_private_key** | [**TlsPrivateKey**](TlsPrivateKey.md)|  | [optional] 

### Return type

[**TlsPrivateKeyResponse**](TlsPrivateKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tls_key**
> delete_tls_key(tls_private_key_id => $tls_private_key_id)

Delete a TLS private key

Destroy a TLS private key. Only private keys not already matched to any certificates can be deleted.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsPrivateKeysApi;
my $api_instance = WebService::Fastly::TlsPrivateKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_private_key_id = "tls_private_key_id_example"; # string | Alphanumeric string identifying a private Key.

eval {
    $api_instance->delete_tls_key(tls_private_key_id => $tls_private_key_id);
};
if ($@) {
    warn "Exception when calling TlsPrivateKeysApi->delete_tls_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_private_key_id** | **string**| Alphanumeric string identifying a private Key. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tls_key**
> TlsPrivateKeyResponse get_tls_key(tls_private_key_id => $tls_private_key_id)

Get a TLS private key

Show a TLS private key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsPrivateKeysApi;
my $api_instance = WebService::Fastly::TlsPrivateKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_private_key_id = "tls_private_key_id_example"; # string | Alphanumeric string identifying a private Key.

eval {
    my $result = $api_instance->get_tls_key(tls_private_key_id => $tls_private_key_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsPrivateKeysApi->get_tls_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_private_key_id** | **string**| Alphanumeric string identifying a private Key. | 

### Return type

[**TlsPrivateKeyResponse**](TlsPrivateKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_keys**
> TlsPrivateKeysResponse list_tls_keys(filter[in_use] => $filter[in_use], page[number] => $page[number], page[size] => $page[size])

List TLS private keys

List all TLS private keys.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsPrivateKeysApi;
my $api_instance = WebService::Fastly::TlsPrivateKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[in_use] = "filter[in_use]_example"; # string | Limit the returned keys to those without any matching TLS certificates. The only valid value is false.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_tls_keys(filter[in_use] => $filter[in_use], page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsPrivateKeysApi->list_tls_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[in_use]** | **string**| Limit the returned keys to those without any matching TLS certificates. The only valid value is false. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**TlsPrivateKeysResponse**](TlsPrivateKeysResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

