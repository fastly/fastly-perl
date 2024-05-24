# WebService::Fastly::PackageApi

## Load the API package
```perl
use WebService::Fastly::Object::PackageApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_package**](PackageApi.md#get_package) | **GET** /service/{service_id}/version/{version_id}/package | Get details of the service&#39;s Compute package.
[**put_package**](PackageApi.md#put_package) | **PUT** /service/{service_id}/version/{version_id}/package | Upload a Compute package.


# **get_package**
> PackageResponse get_package(service_id => $service_id, version_id => $version_id)

Get details of the service's Compute package.

List detailed information about the Compute package for the specified service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PackageApi;
my $api_instance = WebService::Fastly::PackageApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_package(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PackageApi->get_package: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**PackageResponse**](PackageResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_package**
> PackageResponse put_package(service_id => $service_id, version_id => $version_id, expect => $expect, package => $package)

Upload a Compute package.

Upload a Compute package associated with the specified service version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PackageApi;
my $api_instance = WebService::Fastly::PackageApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $expect = 100-continue; # string | We recommend using the Expect header because it may identify issues with the request based upon the headers alone instead of requiring you to wait until the entire binary package upload has completed.
my $package = "/path/to/file"; # string | The content of the Wasm binary package.

eval {
    my $result = $api_instance->put_package(service_id => $service_id, version_id => $version_id, expect => $expect, package => $package);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PackageApi->put_package: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **expect** | **string**| We recommend using the Expect header because it may identify issues with the request based upon the headers alone instead of requiring you to wait until the entire binary package upload has completed. | [optional] 
 **package** | **string****string**| The content of the Wasm binary package. | [optional] 

### Return type

[**PackageResponse**](PackageResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

