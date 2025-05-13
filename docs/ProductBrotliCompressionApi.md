# WebService::Fastly::ProductBrotliCompressionApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductBrotliCompressionApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_brotli_compression**](ProductBrotliCompressionApi.md#disable_product_brotli_compression) | **DELETE** /enabled-products/v1/brotli_compression/services/{service_id} | Disable product
[**enable_product_brotli_compression**](ProductBrotliCompressionApi.md#enable_product_brotli_compression) | **PUT** /enabled-products/v1/brotli_compression/services/{service_id} | Enable product
[**get_product_brotli_compression**](ProductBrotliCompressionApi.md#get_product_brotli_compression) | **GET** /enabled-products/v1/brotli_compression/services/{service_id} | Get product enablement status
[**get_services_product_brotli_compression**](ProductBrotliCompressionApi.md#get_services_product_brotli_compression) | **GET** /enabled-products/v1/brotli_compression/services | Get services with product enabled


# **disable_product_brotli_compression**
> disable_product_brotli_compression(service_id => $service_id)

Disable product

Disable the Brotli Compression product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBrotliCompressionApi;
my $api_instance = WebService::Fastly::ProductBrotliCompressionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_brotli_compression(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductBrotliCompressionApi->disable_product_brotli_compression: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_product_brotli_compression**
> BrotliCompressionResponseBodyEnable enable_product_brotli_compression(service_id => $service_id)

Enable product

Enable the Brotli Compression product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBrotliCompressionApi;
my $api_instance = WebService::Fastly::ProductBrotliCompressionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_brotli_compression(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBrotliCompressionApi->enable_product_brotli_compression: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**BrotliCompressionResponseBodyEnable**](BrotliCompressionResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_brotli_compression**
> BrotliCompressionResponseBodyEnable get_product_brotli_compression(service_id => $service_id)

Get product enablement status

Get the enablement status of the Brotli Compression product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBrotliCompressionApi;
my $api_instance = WebService::Fastly::ProductBrotliCompressionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_brotli_compression(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBrotliCompressionApi->get_product_brotli_compression: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**BrotliCompressionResponseBodyEnable**](BrotliCompressionResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_brotli_compression**
> BrotliCompressionResponseBodyGetAllServices get_services_product_brotli_compression()

Get services with product enabled

Get all the services which have the Brotli Compression product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBrotliCompressionApi;
my $api_instance = WebService::Fastly::ProductBrotliCompressionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_brotli_compression();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBrotliCompressionApi->get_services_product_brotli_compression: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BrotliCompressionResponseBodyGetAllServices**](BrotliCompressionResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

