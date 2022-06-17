# WebService::Fastly::Http3Api

## Load the API package
```perl
use WebService::Fastly::Object::Http3Api;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_http3**](Http3Api.md#create_http3) | **POST** /service/{service_id}/version/{version_id}/http3 | Enable support for HTTP/3
[**delete_http3**](Http3Api.md#delete_http3) | **DELETE** /service/{service_id}/version/{version_id}/http3 | Disable support for HTTP/3
[**get_http3**](Http3Api.md#get_http3) | **GET** /service/{service_id}/version/{version_id}/http3 | Get HTTP/3 status


# **create_http3**
> Http3 create_http3(service_id => $service_id, version_id => $version_id, service_id => $service_id, version => $version, created_at => $created_at, deleted_at => $deleted_at, updated_at => $updated_at, feature_revision => $feature_revision)

Enable support for HTTP/3

Enable HTTP/3 (QUIC) support for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::Http3Api;
my $api_instance = WebService::Fastly::Http3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $service_id = null; # string | 
my $version = null; # int | 
my $created_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $deleted_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $updated_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $feature_revision = 56; # int | Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision.

eval {
    my $result = $api_instance->create_http3(service_id => $service_id, version_id => $version_id, service_id => $service_id, version => $version, created_at => $created_at, deleted_at => $deleted_at, updated_at => $updated_at, feature_revision => $feature_revision);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling Http3Api->create_http3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **service_id** | [**string**](string.md)|  | [optional] 
 **version** | [**int**](int.md)|  | [optional] 
 **created_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **deleted_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **updated_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **feature_revision** | **int**| Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision. | [optional] 

### Return type

[**Http3**](Http3.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_http3**
> InlineResponse200 delete_http3(service_id => $service_id, version_id => $version_id)

Disable support for HTTP/3

Disable HTTP/3 (QUIC) support for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::Http3Api;
my $api_instance = WebService::Fastly::Http3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->delete_http3(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling Http3Api->delete_http3: $@\n";
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

# **get_http3**
> Http3 get_http3(service_id => $service_id, version_id => $version_id)

Get HTTP/3 status

Get the status of HTTP/3 (QUIC) support for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::Http3Api;
my $api_instance = WebService::Fastly::Http3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_http3(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling Http3Api->get_http3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**Http3**](Http3.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

