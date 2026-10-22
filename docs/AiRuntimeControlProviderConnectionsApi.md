# WebService::Fastly::AiRuntimeControlProviderConnectionsApi

## Load the API package
```perl
use WebService::Fastly::Object::AiRuntimeControlProviderConnectionsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_create_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_create_provider_connection) | **POST** /ai-runtime-control/v1/provider-connections | Create a provider connection
[**arc_delete_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_delete_provider_connection) | **DELETE** /ai-runtime-control/v1/provider-connections/{id} | Delete a provider connection
[**arc_get_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_get_provider_connection) | **GET** /ai-runtime-control/v1/provider-connections/{id} | Get a provider connection
[**arc_list_provider_connections**](AiRuntimeControlProviderConnectionsApi.md#arc_list_provider_connections) | **GET** /ai-runtime-control/v1/provider-connections | List provider connections
[**arc_update_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_update_provider_connection) | **PATCH** /ai-runtime-control/v1/provider-connections/{id} | Update a provider connection


# **arc_create_provider_connection**
> ArcProviderConnectionResponse arc_create_provider_connection(arc_provider_connection_request => $arc_provider_connection_request)

Create a provider connection

Create a provider connection. Set `auth_type` to `api-key` (the default) to connect with a provider's own API key, or to `aws-iam` to connect to Amazon Bedrock using an AWS IAM role.  Accounts are limited to 25 provider connections. Creating a 26th connection returns a 409 response. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProviderConnectionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProviderConnectionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $arc_provider_connection_request = WebService::Fastly::Object::ArcProviderConnectionRequest->new(); # ArcProviderConnectionRequest | 

eval {
    my $result = $api_instance->arc_create_provider_connection(arc_provider_connection_request => $arc_provider_connection_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProviderConnectionsApi->arc_create_provider_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **arc_provider_connection_request** | [**ArcProviderConnectionRequest**](ArcProviderConnectionRequest.md)|  | 

### Return type

[**ArcProviderConnectionResponse**](ArcProviderConnectionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_delete_provider_connection**
> arc_delete_provider_connection(id => $id)

Delete a provider connection

Delete a provider connection. Returns a 409 response if the connection is still referenced by a virtual key's failover policy. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProviderConnectionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProviderConnectionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = pTfnUUBcU1yv8SoRJn5PZ2; # string | The ID of the provider connection.

eval {
    $api_instance->arc_delete_provider_connection(id => $id);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProviderConnectionsApi->arc_delete_provider_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The ID of the provider connection. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_provider_connection**
> ArcGetProviderConnectionResponse arc_get_provider_connection(id => $id)

Get a provider connection

Retrieve a single provider connection.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProviderConnectionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProviderConnectionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = pTfnUUBcU1yv8SoRJn5PZ2; # string | The ID of the provider connection.

eval {
    my $result = $api_instance->arc_get_provider_connection(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProviderConnectionsApi->arc_get_provider_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The ID of the provider connection. | 

### Return type

[**ArcGetProviderConnectionResponse**](ArcGetProviderConnectionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_list_provider_connections**
> ArcProviderConnectionsResponse arc_list_provider_connections(include_deleted => $include_deleted, sort => $sort)

List provider connections

List the provider connections belonging to your account.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProviderConnectionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProviderConnectionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $include_deleted = false; # boolean | Include deleted provider connections in the results. Deleted connections have a `deleted_at` value.
my $sort = created_at; # string | Sort field. Prefix with `-` for descending order (e.g., `sort=-name`). 

eval {
    my $result = $api_instance->arc_list_provider_connections(include_deleted => $include_deleted, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProviderConnectionsApi->arc_list_provider_connections: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **boolean**| Include deleted provider connections in the results. Deleted connections have a `deleted_at` value. | [optional] [default to false]
 **sort** | **string**| Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-name`).  | [optional] [default to &#39;created_at&#39;]

### Return type

[**ArcProviderConnectionsResponse**](ArcProviderConnectionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_update_provider_connection**
> ArcProviderConnectionResponse arc_update_provider_connection(id => $id, arc_update_provider_connection_request => $arc_update_provider_connection_request)

Update a provider connection

Update the attributes of a provider connection. Only the fields you include are changed. Which fields you can set depends on the connection's existing `auth_type`: `base_url` and `api_key` apply only to `api-key` connections, and `customer_role_arn` and `region` apply only to `aws-iam` connections. `auth_type` itself cannot be changed. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProviderConnectionsApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProviderConnectionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = pTfnUUBcU1yv8SoRJn5PZ2; # string | The ID of the provider connection.
my $arc_update_provider_connection_request = WebService::Fastly::Object::ArcUpdateProviderConnectionRequest->new(); # ArcUpdateProviderConnectionRequest | 

eval {
    my $result = $api_instance->arc_update_provider_connection(id => $id, arc_update_provider_connection_request => $arc_update_provider_connection_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProviderConnectionsApi->arc_update_provider_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The ID of the provider connection. | 
 **arc_update_provider_connection_request** | [**ArcUpdateProviderConnectionRequest**](ArcUpdateProviderConnectionRequest.md)|  | 

### Return type

[**ArcProviderConnectionResponse**](ArcProviderConnectionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

