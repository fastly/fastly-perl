# WebService::Fastly::ResourceApi

## Load the API package
```perl
use WebService::Fastly::Object::ResourceApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource**](ResourceApi.md#create_resource) | **POST** /service/{service_id}/version/{version_id}/resource | Create a resource
[**delete_resource**](ResourceApi.md#delete_resource) | **DELETE** /service/{service_id}/version/{version_id}/resource/{resource_id} | Delete a resource
[**get_resource**](ResourceApi.md#get_resource) | **GET** /service/{service_id}/version/{version_id}/resource/{resource_id} | Display a resource
[**list_resources**](ResourceApi.md#list_resources) | **GET** /service/{service_id}/version/{version_id}/resource | List resources
[**update_resource**](ResourceApi.md#update_resource) | **PUT** /service/{service_id}/version/{version_id}/resource/{resource_id} | Update a resource


# **create_resource**
> ResourceResponse create_resource(service_id => $service_id, version_id => $version_id, name => $name, resource_id => $resource_id)

Create a resource

Create a resource.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResourceApi;
my $api_instance = WebService::Fastly::ResourceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name of the resource.
my $resource_id = "resource_id_example"; # string | The ID of the linked resource.

eval {
    my $result = $api_instance->create_resource(service_id => $service_id, version_id => $version_id, name => $name, resource_id => $resource_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceApi->create_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name of the resource. | [optional] 
 **resource_id** | **string**| The ID of the linked resource. | [optional] 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_resource**
> InlineResponse200 delete_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id)

Delete a resource

Delete a resource.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResourceApi;
my $api_instance = WebService::Fastly::ResourceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $resource_id = "resource_id_example"; # string | An alphanumeric string identifying the resource.

eval {
    my $result = $api_instance->delete_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceApi->delete_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **resource_id** | **string**| An alphanumeric string identifying the resource. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource**
> ResourceResponse get_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id)

Display a resource

Display a resource by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResourceApi;
my $api_instance = WebService::Fastly::ResourceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $resource_id = "resource_id_example"; # string | An alphanumeric string identifying the resource.

eval {
    my $result = $api_instance->get_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceApi->get_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **resource_id** | **string**| An alphanumeric string identifying the resource. | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_resources**
> ARRAY[ResourceResponse] list_resources(service_id => $service_id, version_id => $version_id)

List resources

List resources.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResourceApi;
my $api_instance = WebService::Fastly::ResourceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_resources(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceApi->list_resources: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[ResourceResponse]**](ResourceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_resource**
> ResourceResponse update_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id, name => $name)

Update a resource

Update a resource.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResourceApi;
my $api_instance = WebService::Fastly::ResourceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $resource_id = "resource_id_example"; # string | An alphanumeric string identifying the resource.
my $name = "name_example"; # string | The name of the resource.

eval {
    my $result = $api_instance->update_resource(service_id => $service_id, version_id => $version_id, resource_id => $resource_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceApi->update_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **resource_id** | **string**| An alphanumeric string identifying the resource. | 
 **name** | **string**| The name of the resource. | [optional] 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

