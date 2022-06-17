# WebService::Fastly::ResponseObjectApi

## Load the API package
```perl
use WebService::Fastly::Object::ResponseObjectApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_response_object**](ResponseObjectApi.md#delete_response_object) | **DELETE** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Delete a Response Object
[**get_response_object**](ResponseObjectApi.md#get_response_object) | **GET** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Get a Response object
[**list_response_objects**](ResponseObjectApi.md#list_response_objects) | **GET** /service/{service_id}/version/{version_id}/response_object | List Response objects


# **delete_response_object**
> InlineResponse200 delete_response_object(service_id => $service_id, version_id => $version_id, response_object_name => $response_object_name)

Delete a Response Object

Deletes the specified Response Object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResponseObjectApi;
my $api_instance = WebService::Fastly::ResponseObjectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $response_object_name = "response_object_name_example"; # string | Name for the request settings.

eval {
    my $result = $api_instance->delete_response_object(service_id => $service_id, version_id => $version_id, response_object_name => $response_object_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResponseObjectApi->delete_response_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **response_object_name** | **string**| Name for the request settings. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_response_object**
> ResponseObjectResponse get_response_object(service_id => $service_id, version_id => $version_id, response_object_name => $response_object_name)

Get a Response object

Gets the specified Response Object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResponseObjectApi;
my $api_instance = WebService::Fastly::ResponseObjectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $response_object_name = "response_object_name_example"; # string | Name for the request settings.

eval {
    my $result = $api_instance->get_response_object(service_id => $service_id, version_id => $version_id, response_object_name => $response_object_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResponseObjectApi->get_response_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **response_object_name** | **string**| Name for the request settings. | 

### Return type

[**ResponseObjectResponse**](ResponseObjectResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_response_objects**
> ARRAY[ResponseObjectResponse] list_response_objects(service_id => $service_id, version_id => $version_id)

List Response objects

Returns all Response Objects for the specified service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ResponseObjectApi;
my $api_instance = WebService::Fastly::ResponseObjectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_response_objects(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResponseObjectApi->list_response_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[ResponseObjectResponse]**](ResponseObjectResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

