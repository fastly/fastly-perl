# WebService::Fastly::DirectorBackendApi

## Load the API package
```perl
use WebService::Fastly::Object::DirectorBackendApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_director_backend**](DirectorBackendApi.md#create_director_backend) | **POST** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Create a director-backend relationship
[**delete_director_backend**](DirectorBackendApi.md#delete_director_backend) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Delete a director-backend relationship
[**get_director_backend**](DirectorBackendApi.md#get_director_backend) | **GET** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Get a director-backend relationship


# **create_director_backend**
> DirectorBackend create_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name)

Create a director-backend relationship

Establishes a relationship between a Backend and a Director. The Backend is then considered a member of the Director and can be used to balance traffic onto.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorBackendApi;
my $api_instance = WebService::Fastly::DirectorBackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $director_name = "director_name_example"; # string | Name for the Director.
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.

eval {
    my $result = $api_instance->create_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorBackendApi->create_director_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **director_name** | **string**| Name for the Director. | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 

### Return type

[**DirectorBackend**](DirectorBackend.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_director_backend**
> InlineResponse200 delete_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name)

Delete a director-backend relationship

Deletes the relationship between a Backend and a Director. The Backend is no longer considered a member of the Director and thus will not have traffic balanced onto it from this Director.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorBackendApi;
my $api_instance = WebService::Fastly::DirectorBackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $director_name = "director_name_example"; # string | Name for the Director.
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.

eval {
    my $result = $api_instance->delete_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorBackendApi->delete_director_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **director_name** | **string**| Name for the Director. | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_director_backend**
> DirectorBackend get_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name)

Get a director-backend relationship

Returns the relationship between a Backend and a Director. If the Backend has been associated with the Director, it returns a simple record indicating this. Otherwise, returns a 404.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorBackendApi;
my $api_instance = WebService::Fastly::DirectorBackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $director_name = "director_name_example"; # string | Name for the Director.
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.

eval {
    my $result = $api_instance->get_director_backend(director_name => $director_name, service_id => $service_id, version_id => $version_id, backend_name => $backend_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorBackendApi->get_director_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **director_name** | **string**| Name for the Director. | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 

### Return type

[**DirectorBackend**](DirectorBackend.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

