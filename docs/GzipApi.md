# WebService::Fastly::GzipApi

## Load the API package
```perl
use WebService::Fastly::Object::GzipApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_gzip_config**](GzipApi.md#create_gzip_config) | **POST** /service/{service_id}/version/{version_id}/gzip | Create a gzip configuration
[**delete_gzip_config**](GzipApi.md#delete_gzip_config) | **DELETE** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Delete a gzip configuration
[**get_gzip_configs**](GzipApi.md#get_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Get a gzip configuration
[**list_gzip_configs**](GzipApi.md#list_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip | List gzip configurations
[**update_gzip_config**](GzipApi.md#update_gzip_config) | **PUT** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Update a gzip configuration


# **create_gzip_config**
> GzipResponse create_gzip_config(service_id => $service_id, version_id => $version_id, cache_condition => $cache_condition, content_types => $content_types, extensions => $extensions, name => $name)

Create a gzip configuration

Create a named gzip configuration on a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::GzipApi;
my $api_instance = WebService::Fastly::GzipApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $content_types = "content_types_example"; # string | Space-separated list of content types to compress. If you omit this field a default list will be used.
my $extensions = "extensions_example"; # string | Space-separated list of file extensions to compress. If you omit this field a default list will be used.
my $name = "name_example"; # string | Name of the gzip configuration.

eval {
    my $result = $api_instance->create_gzip_config(service_id => $service_id, version_id => $version_id, cache_condition => $cache_condition, content_types => $content_types, extensions => $extensions, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GzipApi->create_gzip_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **content_types** | **string**| Space-separated list of content types to compress. If you omit this field a default list will be used. | [optional] 
 **extensions** | **string**| Space-separated list of file extensions to compress. If you omit this field a default list will be used. | [optional] 
 **name** | **string**| Name of the gzip configuration. | [optional] 

### Return type

[**GzipResponse**](GzipResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_gzip_config**
> InlineResponse200 delete_gzip_config(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name)

Delete a gzip configuration

Delete a named gzip configuration on a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::GzipApi;
my $api_instance = WebService::Fastly::GzipApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $gzip_name = "gzip_name_example"; # string | Name of the gzip configuration.

eval {
    my $result = $api_instance->delete_gzip_config(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GzipApi->delete_gzip_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **gzip_name** | **string**| Name of the gzip configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gzip_configs**
> GzipResponse get_gzip_configs(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name)

Get a gzip configuration

Get the gzip configuration for a particular service, version, and name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::GzipApi;
my $api_instance = WebService::Fastly::GzipApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $gzip_name = "gzip_name_example"; # string | Name of the gzip configuration.

eval {
    my $result = $api_instance->get_gzip_configs(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GzipApi->get_gzip_configs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **gzip_name** | **string**| Name of the gzip configuration. | 

### Return type

[**GzipResponse**](GzipResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_gzip_configs**
> ARRAY[GzipResponse] list_gzip_configs(service_id => $service_id, version_id => $version_id)

List gzip configurations

List all gzip configurations for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::GzipApi;
my $api_instance = WebService::Fastly::GzipApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_gzip_configs(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GzipApi->list_gzip_configs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[GzipResponse]**](GzipResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_gzip_config**
> GzipResponse update_gzip_config(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name, cache_condition => $cache_condition, content_types => $content_types, extensions => $extensions, name => $name)

Update a gzip configuration

Update a named gzip configuration on a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::GzipApi;
my $api_instance = WebService::Fastly::GzipApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $gzip_name = "gzip_name_example"; # string | Name of the gzip configuration.
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $content_types = "content_types_example"; # string | Space-separated list of content types to compress. If you omit this field a default list will be used.
my $extensions = "extensions_example"; # string | Space-separated list of file extensions to compress. If you omit this field a default list will be used.
my $name = "name_example"; # string | Name of the gzip configuration.

eval {
    my $result = $api_instance->update_gzip_config(service_id => $service_id, version_id => $version_id, gzip_name => $gzip_name, cache_condition => $cache_condition, content_types => $content_types, extensions => $extensions, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GzipApi->update_gzip_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **gzip_name** | **string**| Name of the gzip configuration. | 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **content_types** | **string**| Space-separated list of content types to compress. If you omit this field a default list will be used. | [optional] 
 **extensions** | **string**| Space-separated list of file extensions to compress. If you omit this field a default list will be used. | [optional] 
 **name** | **string**| Name of the gzip configuration. | [optional] 

### Return type

[**GzipResponse**](GzipResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

