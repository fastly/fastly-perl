# WebService::Fastly::SecretStoreApi

## Load the API package
```perl
use WebService::Fastly::Object::SecretStoreApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**client_key**](SecretStoreApi.md#client_key) | **POST** /resources/stores/secret/client-key | Create new client key
[**create_secret_store**](SecretStoreApi.md#create_secret_store) | **POST** /resources/stores/secret | Create new secret store
[**delete_secret_store**](SecretStoreApi.md#delete_secret_store) | **DELETE** /resources/stores/secret/{store_id} | Delete secret store
[**get_secret_store**](SecretStoreApi.md#get_secret_store) | **GET** /resources/stores/secret/{store_id} | Get secret store by ID
[**get_secret_stores**](SecretStoreApi.md#get_secret_stores) | **GET** /resources/stores/secret | Get all secret stores
[**signing_key**](SecretStoreApi.md#signing_key) | **GET** /resources/stores/secret/signing-key | Get public key


# **client_key**
> ClientKey client_key()

Create new client key

Create a new client key for encrypting secrets locally before uploading.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->client_key();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->client_key: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ClientKey**](ClientKey.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_secret_store**
> SecretStoreResponse create_secret_store(secret_store => $secret_store)

Create new secret store

Create a new secret store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $secret_store = WebService::Fastly::Object::SecretStore->new(); # SecretStore | 

eval {
    my $result = $api_instance->create_secret_store(secret_store => $secret_store);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->create_secret_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_store** | [**SecretStore**](SecretStore.md)|  | [optional] 

### Return type

[**SecretStoreResponse**](SecretStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_secret_store**
> delete_secret_store(store_id => $store_id)

Delete secret store

Delete a secret store and all of its contents.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 

eval {
    $api_instance->delete_secret_store(store_id => $store_id);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->delete_secret_store: $@\n";
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

# **get_secret_store**
> SecretStoreResponse get_secret_store(store_id => $store_id)

Get secret store by ID

Get a secret store by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 

eval {
    my $result = $api_instance->get_secret_store(store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->get_secret_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 

### Return type

[**SecretStoreResponse**](SecretStoreResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_secret_stores**
> InlineResponse20012 get_secret_stores(cursor => $cursor, limit => $limit, name => $name)

Get all secret stores

Get all secret stores.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = '100'; # string | Number of results per page. The maximum is 200.
my $name = "name_example"; # string | Returns a one-element array containing the details for the named secret store.

eval {
    my $result = $api_instance->get_secret_stores(cursor => $cursor, limit => $limit, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->get_secret_stores: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 200. | [optional] [default to &#39;100&#39;]
 **name** | **string**| Returns a one-element array containing the details for the named secret store. | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signing_key**
> SigningKey signing_key()

Get public key

Get the public key used for signing client keys.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreApi;
my $api_instance = WebService::Fastly::SecretStoreApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->signing_key();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreApi->signing_key: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SigningKey**](SigningKey.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

