# WebService::Fastly::ApisecurityOperationsApi

## Load the API package
```perl
use WebService::Fastly::Object::ApisecurityOperationsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**api_security_create_operation**](ApisecurityOperationsApi.md#api_security_create_operation) | **POST** /api-security/v1/services/{service_id}/operations | Create operation
[**api_security_create_operation_tag**](ApisecurityOperationsApi.md#api_security_create_operation_tag) | **POST** /api-security/v1/services/{service_id}/tags | Create operation tag
[**api_security_delete_operation**](ApisecurityOperationsApi.md#api_security_delete_operation) | **DELETE** /api-security/v1/services/{service_id}/operations/{operation_id} | Delete operation
[**api_security_delete_operation_tag**](ApisecurityOperationsApi.md#api_security_delete_operation_tag) | **DELETE** /api-security/v1/services/{service_id}/tags/{tag_id} | Delete operation tag
[**api_security_get_operation**](ApisecurityOperationsApi.md#api_security_get_operation) | **GET** /api-security/v1/services/{service_id}/operations/{operation_id} | Retrieve operation
[**api_security_get_operation_tag**](ApisecurityOperationsApi.md#api_security_get_operation_tag) | **GET** /api-security/v1/services/{service_id}/tags/{tag_id} | Retrieve operation tag
[**api_security_list_discovered_operations**](ApisecurityOperationsApi.md#api_security_list_discovered_operations) | **GET** /api-security/v1/services/{service_id}/discovered-operations | List discovered operations
[**api_security_list_operation_tags**](ApisecurityOperationsApi.md#api_security_list_operation_tags) | **GET** /api-security/v1/services/{service_id}/tags | List operation tags
[**api_security_list_operations**](ApisecurityOperationsApi.md#api_security_list_operations) | **GET** /api-security/v1/services/{service_id}/operations | List operations
[**api_security_update_operation**](ApisecurityOperationsApi.md#api_security_update_operation) | **PATCH** /api-security/v1/services/{service_id}/operations/{operation_id} | Update operation
[**api_security_update_operation_tag**](ApisecurityOperationsApi.md#api_security_update_operation_tag) | **PATCH** /api-security/v1/services/{service_id}/tags/{tag_id} | Update operation tag


# **api_security_create_operation**
> OperationGet api_security_create_operation(service_id => $service_id, operation_create => $operation_create)

Create operation

Create a new operation associated with a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $operation_create = WebService::Fastly::Object::OperationCreate->new(); # OperationCreate | 

eval {
    my $result = $api_instance->api_security_create_operation(service_id => $service_id, operation_create => $operation_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_create_operation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **operation_create** | [**OperationCreate**](OperationCreate.md)|  | [optional] 

### Return type

[**OperationGet**](OperationGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_create_operation_tag**
> TagGet api_security_create_operation_tag(service_id => $service_id, tag_create => $tag_create)

Create operation tag

Create a new operation tag associated with a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $tag_create = WebService::Fastly::Object::TagCreate->new(); # TagCreate | 

eval {
    my $result = $api_instance->api_security_create_operation_tag(service_id => $service_id, tag_create => $tag_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_create_operation_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **tag_create** | [**TagCreate**](TagCreate.md)|  | [optional] 

### Return type

[**TagGet**](TagGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_delete_operation**
> api_security_delete_operation(service_id => $service_id, operation_id => $operation_id)

Delete operation

Delete an existing operation associated with a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $operation_id = op_abc123def456; # string | The unique identifier of the operation.

eval {
    $api_instance->api_security_delete_operation(service_id => $service_id, operation_id => $operation_id);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_delete_operation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **operation_id** | **string**| The unique identifier of the operation. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_delete_operation_tag**
> api_security_delete_operation_tag(service_id => $service_id, tag_id => $tag_id)

Delete operation tag

Delete an existing operation tag.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $tag_id = tag_abc123def456; # string | The unique identifier of the operation tag.

eval {
    $api_instance->api_security_delete_operation_tag(service_id => $service_id, tag_id => $tag_id);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_delete_operation_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **tag_id** | **string**| The unique identifier of the operation tag. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_get_operation**
> OperationGet api_security_get_operation(service_id => $service_id, operation_id => $operation_id)

Retrieve operation

Get a specific operation associated with a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $operation_id = op_abc123def456; # string | The unique identifier of the operation.

eval {
    my $result = $api_instance->api_security_get_operation(service_id => $service_id, operation_id => $operation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_get_operation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **operation_id** | **string**| The unique identifier of the operation. | 

### Return type

[**OperationGet**](OperationGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_get_operation_tag**
> TagGet api_security_get_operation_tag(service_id => $service_id, tag_id => $tag_id)

Retrieve operation tag

Get a specific operation tag by its unique identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $tag_id = tag_abc123def456; # string | The unique identifier of the operation tag.

eval {
    my $result = $api_instance->api_security_get_operation_tag(service_id => $service_id, tag_id => $tag_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_get_operation_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **tag_id** | **string**| The unique identifier of the operation tag. | 

### Return type

[**TagGet**](TagGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_list_discovered_operations**
> InlineResponse2001 api_security_list_discovered_operations(service_id => $service_id, status => $status, limit => $limit, page => $page)

List discovered operations

List all discovered operations associated with a specific service. Optionally filter operations by status.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $status = SAVED; # string | Filter operations by status. Only operations with this status will be returned.
my $limit = 100; # int | The maximum number of operations to return per page.
my $page = 1; # int | The page number to return.

eval {
    my $result = $api_instance->api_security_list_discovered_operations(service_id => $service_id, status => $status, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_list_discovered_operations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **status** | **string**| Filter operations by status. Only operations with this status will be returned. | [optional] 
 **limit** | **int**| The maximum number of operations to return per page. | [optional] [default to 100]
 **page** | **int**| The page number to return. | [optional] [default to 0]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_list_operation_tags**
> InlineResponse2003 api_security_list_operation_tags(service_id => $service_id)

List operation tags

List all operation tags associated with a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.

eval {
    my $result = $api_instance->api_security_list_operation_tags(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_list_operation_tags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_list_operations**
> InlineResponse2002 api_security_list_operations(service_id => $service_id, tag_id => $tag_id, limit => $limit, page => $page)

List operations

List all operations associated with a specific service. Optionally filter operations by tag ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $tag_id = tag_abc123def456; # string | Filter operations by operation tag ID. Only operations associated with this operation tag will be returned.
my $limit = 100; # int | The maximum number of operations to return per page.
my $page = 1; # int | The page number to return.

eval {
    my $result = $api_instance->api_security_list_operations(service_id => $service_id, tag_id => $tag_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_list_operations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **tag_id** | **string**| Filter operations by operation tag ID. Only operations associated with this operation tag will be returned. | [optional] 
 **limit** | **int**| The maximum number of operations to return per page. | [optional] [default to 100]
 **page** | **int**| The page number to return. | [optional] [default to 0]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_update_operation**
> OperationGet api_security_update_operation(service_id => $service_id, operation_id => $operation_id, operation_update => $operation_update)

Update operation

Partially update an existing operation associated with a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $operation_id = op_abc123def456; # string | The unique identifier of the operation.
my $operation_update = WebService::Fastly::Object::OperationUpdate->new(); # OperationUpdate | 

eval {
    my $result = $api_instance->api_security_update_operation(service_id => $service_id, operation_id => $operation_id, operation_update => $operation_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_update_operation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **operation_id** | **string**| The unique identifier of the operation. | 
 **operation_update** | [**OperationUpdate**](OperationUpdate.md)|  | [optional] 

### Return type

[**OperationGet**](OperationGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_security_update_operation_tag**
> TagGet api_security_update_operation_tag(service_id => $service_id, tag_id => $tag_id, body => $body)

Update operation tag

Partially update an existing operation tag.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ApisecurityOperationsApi;
my $api_instance = WebService::Fastly::ApisecurityOperationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 3NeCFuZNP1v0iyJ2vmYQI6; # string | The unique identifier of the service.
my $tag_id = tag_abc123def456; # string | The unique identifier of the operation tag.
my $body = WebService::Fastly::Object::TagBase->new(); # TagBase | 

eval {
    my $result = $api_instance->api_security_update_operation_tag(service_id => $service_id, tag_id => $tag_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApisecurityOperationsApi->api_security_update_operation_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| The unique identifier of the service. | 
 **tag_id** | **string**| The unique identifier of the operation tag. | 
 **body** | **TagBase**|  | [optional] 

### Return type

[**TagGet**](TagGet.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

