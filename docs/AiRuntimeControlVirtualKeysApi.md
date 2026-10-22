# WebService::Fastly::AiRuntimeControlVirtualKeysApi

## Load the API package
```perl
use WebService::Fastly::Object::AiRuntimeControlVirtualKeysApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_create_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_create_virtual_key) | **POST** /ai-runtime-control/v1/keys | Create a virtual key
[**arc_delete_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_delete_virtual_key) | **DELETE** /ai-runtime-control/v1/keys/{key_id} | Delete a virtual key
[**arc_get_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_get_virtual_key) | **GET** /ai-runtime-control/v1/keys/{key_id} | Get a virtual key
[**arc_get_virtual_key_failover**](AiRuntimeControlVirtualKeysApi.md#arc_get_virtual_key_failover) | **GET** /ai-runtime-control/v1/keys/{key_id}/failover | Get a virtual key&#39;s failover policy
[**arc_list_virtual_keys**](AiRuntimeControlVirtualKeysApi.md#arc_list_virtual_keys) | **GET** /ai-runtime-control/v1/keys | List virtual keys
[**arc_rotate_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_rotate_virtual_key) | **POST** /ai-runtime-control/v1/keys/{key_id}/rotate | Rotate a virtual key
[**arc_update_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_update_virtual_key) | **PATCH** /ai-runtime-control/v1/keys/{key_id} | Update a virtual key
[**arc_update_virtual_key_failover**](AiRuntimeControlVirtualKeysApi.md#arc_update_virtual_key_failover) | **PUT** /ai-runtime-control/v1/keys/{key_id}/failover | Update a virtual key&#39;s failover policy


# **arc_create_virtual_key**
> ArcCreateVirtualKeyResponse arc_create_virtual_key(arc_virtual_key => $arc_virtual_key)

Create a virtual key

Create a new virtual key for authenticating requests through the AI Runtime Control gateway.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $arc_virtual_key = WebService::Fastly::Object::ArcVirtualKey->new(); # ArcVirtualKey | 

eval {
    my $result = $api_instance->arc_create_virtual_key(arc_virtual_key => $arc_virtual_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_create_virtual_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **arc_virtual_key** | [**ArcVirtualKey**](ArcVirtualKey.md)|  | 

### Return type

[**ArcCreateVirtualKeyResponse**](ArcCreateVirtualKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_delete_virtual_key**
> arc_delete_virtual_key(key_id => $key_id)

Delete a virtual key

Delete a virtual key. This also deletes any security configuration associated with the key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.

eval {
    $api_instance->arc_delete_virtual_key(key_id => $key_id);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_delete_virtual_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_virtual_key**
> ArcVirtualKeyResponse arc_get_virtual_key(key_id => $key_id)

Get a virtual key

Retrieve a single virtual key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.

eval {
    my $result = $api_instance->arc_get_virtual_key(key_id => $key_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_get_virtual_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 

### Return type

[**ArcVirtualKeyResponse**](ArcVirtualKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_virtual_key_failover**
> ArcVirtualKeyFailoverResponse arc_get_virtual_key_failover(key_id => $key_id)

Get a virtual key's failover policy

Retrieve the failover policy for a virtual key. A failover policy lists alternate provider connections to retry a request against, and which error conditions trigger a retry.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.

eval {
    my $result = $api_instance->arc_get_virtual_key_failover(key_id => $key_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_get_virtual_key_failover: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 

### Return type

[**ArcVirtualKeyFailoverResponse**](ArcVirtualKeyFailoverResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_list_virtual_keys**
> ArcVirtualKeysResponse arc_list_virtual_keys(include_deleted => $include_deleted, search => $search, cursor => $cursor, limit => $limit, sort => $sort)

List virtual keys

List the virtual keys belonging to your account.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $include_deleted = false; # boolean | Include deleted virtual keys in the results.
my $search = production; # string | Filter results to virtual keys whose name contains this substring.
my $cursor = MTA6MA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page. 
my $limit = 10; # int | Limit how many results are returned.
my $sort = created_at; # string | Sort field. Prefix with `-` for descending order (e.g., `sort=-created_at`). 

eval {
    my $result = $api_instance->arc_list_virtual_keys(include_deleted => $include_deleted, search => $search, cursor => $cursor, limit => $limit, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_list_virtual_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **boolean**| Include deleted virtual keys in the results. | [optional] [default to false]
 **search** | **string**| Filter results to virtual keys whose name contains this substring. | [optional] 
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page.  | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 10]
 **sort** | **string**| Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-created_at`).  | [optional] [default to &#39;created_at&#39;]

### Return type

[**ArcVirtualKeysResponse**](ArcVirtualKeysResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_rotate_virtual_key**
> ArcRotateVirtualKeyResponse arc_rotate_virtual_key(key_id => $key_id, arc_rotate_virtual_key_request => $arc_rotate_virtual_key_request)

Rotate a virtual key

Issue a new access token for a virtual key, invalidating the previous one.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.
my $arc_rotate_virtual_key_request = WebService::Fastly::Object::ArcRotateVirtualKeyRequest->new(); # ArcRotateVirtualKeyRequest | 

eval {
    my $result = $api_instance->arc_rotate_virtual_key(key_id => $key_id, arc_rotate_virtual_key_request => $arc_rotate_virtual_key_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_rotate_virtual_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 
 **arc_rotate_virtual_key_request** | [**ArcRotateVirtualKeyRequest**](ArcRotateVirtualKeyRequest.md)|  | [optional] 

### Return type

[**ArcRotateVirtualKeyResponse**](ArcRotateVirtualKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_update_virtual_key**
> ArcUpdateVirtualKeyResponse arc_update_virtual_key(key_id => $key_id, arc_update_virtual_key_request => $arc_update_virtual_key_request)

Update a virtual key

Update the attributes of a virtual key. Only the fields you include are changed.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.
my $arc_update_virtual_key_request = WebService::Fastly::Object::ArcUpdateVirtualKeyRequest->new(); # ArcUpdateVirtualKeyRequest | 

eval {
    my $result = $api_instance->arc_update_virtual_key(key_id => $key_id, arc_update_virtual_key_request => $arc_update_virtual_key_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_update_virtual_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 
 **arc_update_virtual_key_request** | [**ArcUpdateVirtualKeyRequest**](ArcUpdateVirtualKeyRequest.md)|  | 

### Return type

[**ArcUpdateVirtualKeyResponse**](ArcUpdateVirtualKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_update_virtual_key_failover**
> ArcVirtualKeyFailoverResponse arc_update_virtual_key_failover(key_id => $key_id, arc_virtual_key_failover_request => $arc_virtual_key_failover_request)

Update a virtual key's failover policy

Replace the failover policy for a virtual key.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlVirtualKeysApi;
my $api_instance = WebService::Fastly::AiRuntimeControlVirtualKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $key_id = 7fVVQb1nZaJgnzCn4B4v3B; # string | The ID of the virtual key.
my $arc_virtual_key_failover_request = WebService::Fastly::Object::ArcVirtualKeyFailoverRequest->new(); # ArcVirtualKeyFailoverRequest | 

eval {
    my $result = $api_instance->arc_update_virtual_key_failover(key_id => $key_id, arc_virtual_key_failover_request => $arc_virtual_key_failover_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlVirtualKeysApi->arc_update_virtual_key_failover: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **string**| The ID of the virtual key. | 
 **arc_virtual_key_failover_request** | [**ArcVirtualKeyFailoverRequest**](ArcVirtualKeyFailoverRequest.md)|  | 

### Return type

[**ArcVirtualKeyFailoverResponse**](ArcVirtualKeyFailoverResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

