# WebService::Fastly::SecretStoreItemApi

## Load the API package
```perl
use WebService::Fastly::Object::SecretStoreItemApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_secret**](SecretStoreItemApi.md#create_secret) | **POST** /resources/stores/secret/{store_id}/secrets | Create a new secret in a store.
[**delete_secret**](SecretStoreItemApi.md#delete_secret) | **DELETE** /resources/stores/secret/{store_id}/secrets/{secret_name} | Delete a secret from a store.
[**get_secret**](SecretStoreItemApi.md#get_secret) | **GET** /resources/stores/secret/{store_id}/secrets/{secret_name} | Get secret metadata.
[**get_secrets**](SecretStoreItemApi.md#get_secrets) | **GET** /resources/stores/secret/{store_id}/secrets | List secrets within a store.
[**must_recreate_secret**](SecretStoreItemApi.md#must_recreate_secret) | **PATCH** /resources/stores/secret/{store_id}/secrets | Recreate a secret in a store.
[**recreate_secret**](SecretStoreItemApi.md#recreate_secret) | **PUT** /resources/stores/secret/{store_id}/secrets | Create or recreate a secret in a store.


# **create_secret**
> SecretResponse create_secret(store_id => $store_id, secret => $secret)

Create a new secret in a store.

Create a new secret in a store. Returns an error if a secret already exists with the same name. See `PUT` and `PATCH` methods for ways to recreate an existing secret.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $secret = WebService::Fastly::Object::Secret->new(); # Secret | 

eval {
    my $result = $api_instance->create_secret(store_id => $store_id, secret => $secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->create_secret: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **secret** | [**Secret**](Secret.md)|  | [optional] 

### Return type

[**SecretResponse**](SecretResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_secret**
> delete_secret(store_id => $store_id, secret_name => $secret_name)

Delete a secret from a store.

Delete a secret from a store by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $secret_name = "secret_name_example"; # string | 

eval {
    $api_instance->delete_secret(store_id => $store_id, secret_name => $secret_name);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->delete_secret: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **secret_name** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_secret**
> SecretResponse get_secret(store_id => $store_id, secret_name => $secret_name)

Get secret metadata.

Get metadata about a secret by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $secret_name = "secret_name_example"; # string | 

eval {
    my $result = $api_instance->get_secret(store_id => $store_id, secret_name => $secret_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->get_secret: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **secret_name** | **string**|  | 

### Return type

[**SecretResponse**](SecretResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_secrets**
> InlineResponse20013 get_secrets(store_id => $store_id, cursor => $cursor, limit => $limit)

List secrets within a store.

List all secrets within a store.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = '100'; # string | Number of results per page. The maximum is 200.

eval {
    my $result = $api_instance->get_secrets(store_id => $store_id, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->get_secrets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 200. | [optional] [default to &#39;100&#39;]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **must_recreate_secret**
> SecretResponse must_recreate_secret(store_id => $store_id, secret => $secret)

Recreate a secret in a store.

Recreate a secret based on the secret's name. Returns an error if there is no existing secret with the same name.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $secret = WebService::Fastly::Object::Secret->new(); # Secret | 

eval {
    my $result = $api_instance->must_recreate_secret(store_id => $store_id, secret => $secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->must_recreate_secret: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **secret** | [**Secret**](Secret.md)|  | [optional] 

### Return type

[**SecretResponse**](SecretResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recreate_secret**
> SecretResponse recreate_secret(store_id => $store_id, secret => $secret)

Create or recreate a secret in a store.

Create or recreate a secret based on the secret's name. The response object's `recreated` field will be true if the secret was recreated.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SecretStoreItemApi;
my $api_instance = WebService::Fastly::SecretStoreItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $store_id = "store_id_example"; # string | 
my $secret = WebService::Fastly::Object::Secret->new(); # Secret | 

eval {
    my $result = $api_instance->recreate_secret(store_id => $store_id, secret => $secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SecretStoreItemApi->recreate_secret: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**|  | 
 **secret** | [**Secret**](Secret.md)|  | [optional] 

### Return type

[**SecretResponse**](SecretResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

