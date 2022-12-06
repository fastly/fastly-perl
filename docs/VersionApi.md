# WebService::Fastly::VersionApi

## Load the API package
```perl
use WebService::Fastly::Object::VersionApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_service_version**](VersionApi.md#activate_service_version) | **PUT** /service/{service_id}/version/{version_id}/activate | Activate a service version
[**clone_service_version**](VersionApi.md#clone_service_version) | **PUT** /service/{service_id}/version/{version_id}/clone | Clone a service version
[**create_service_version**](VersionApi.md#create_service_version) | **POST** /service/{service_id}/version | Create a service version
[**deactivate_service_version**](VersionApi.md#deactivate_service_version) | **PUT** /service/{service_id}/version/{version_id}/deactivate | Deactivate a service version
[**get_service_version**](VersionApi.md#get_service_version) | **GET** /service/{service_id}/version/{version_id} | Get a version of a service
[**list_service_versions**](VersionApi.md#list_service_versions) | **GET** /service/{service_id}/version | List versions of a service
[**lock_service_version**](VersionApi.md#lock_service_version) | **PUT** /service/{service_id}/version/{version_id}/lock | Lock a service version
[**update_service_version**](VersionApi.md#update_service_version) | **PUT** /service/{service_id}/version/{version_id} | Update a service version
[**validate_service_version**](VersionApi.md#validate_service_version) | **GET** /service/{service_id}/version/{version_id}/validate | Validate a service version


# **activate_service_version**
> VersionResponse activate_service_version(service_id => $service_id, version_id => $version_id)

Activate a service version

Activate the current version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->activate_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->activate_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clone_service_version**
> Version clone_service_version(service_id => $service_id, version_id => $version_id)

Clone a service version

Clone the current configuration into a new version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->clone_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->clone_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**Version**](Version.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_service_version**
> VersionCreateResponse create_service_version(service_id => $service_id)

Create a service version

Create a version for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->create_service_version(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->create_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**VersionCreateResponse**](VersionCreateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_service_version**
> VersionResponse deactivate_service_version(service_id => $service_id, version_id => $version_id)

Deactivate a service version

Deactivate the current version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->deactivate_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->deactivate_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_version**
> VersionResponse get_service_version(service_id => $service_id, version_id => $version_id)

Get a version of a service

Get the version for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->get_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_versions**
> ARRAY[VersionResponse] list_service_versions(service_id => $service_id)

List versions of a service

List the versions for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->list_service_versions(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->list_service_versions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ARRAY[VersionResponse]**](VersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lock_service_version**
> Version lock_service_version(service_id => $service_id, version_id => $version_id)

Lock a service version

Locks the specified version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->lock_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->lock_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**Version**](Version.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_version**
> VersionResponse update_service_version(service_id => $service_id, version_id => $version_id, active => $active, comment => $comment, deployed => $deployed, locked => $locked, number => $number, staging => $staging, testing => $testing)

Update a service version

Update a particular version for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $active = false; # boolean | Whether this is the active version or not.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $deployed = null; # boolean | Unused at this time.
my $locked = false; # boolean | Whether this version is locked or not. Objects can not be added or edited on locked versions.
my $number = 56; # int | The number of this version.
my $staging = false; # boolean | Unused at this time.
my $testing = false; # boolean | Unused at this time.

eval {
    my $result = $api_instance->update_service_version(service_id => $service_id, version_id => $version_id, active => $active, comment => $comment, deployed => $deployed, locked => $locked, number => $number, staging => $staging, testing => $testing);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->update_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **active** | **boolean**| Whether this is the active version or not. | [optional] [default to false]
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **deployed** | **boolean**| Unused at this time. | [optional] 
 **locked** | **boolean**| Whether this version is locked or not. Objects can not be added or edited on locked versions. | [optional] [default to false]
 **number** | **int**| The number of this version. | [optional] 
 **staging** | **boolean**| Unused at this time. | [optional] [default to false]
 **testing** | **boolean**| Unused at this time. | [optional] [default to false]

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_service_version**
> InlineResponse200 validate_service_version(service_id => $service_id, version_id => $version_id)

Validate a service version

Validate the version for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VersionApi;
my $api_instance = WebService::Fastly::VersionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->validate_service_version(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VersionApi->validate_service_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

