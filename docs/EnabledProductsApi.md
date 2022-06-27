# WebService::Fastly::EnabledProductsApi

## Load the API package
```perl
use WebService::Fastly::Object::EnabledProductsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable_product**](EnabledProductsApi.md#disable_product) | **DELETE** /enabled-products/{product_id}/services/{service_id} | Disable a product
[**enable_product**](EnabledProductsApi.md#enable_product) | **PUT** /enabled-products/{product_id}/services/{service_id} | Enable a product
[**get_enabled_product**](EnabledProductsApi.md#get_enabled_product) | **GET** /enabled-products/{product_id}/services/{service_id} | Get enabled product


# **disable_product**
> disable_product(product_id => $product_id, service_id => $service_id)

Disable a product

Disable a product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EnabledProductsApi;
my $api_instance = WebService::Fastly::EnabledProductsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $product_id = origin_inspector; # string | 
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product(product_id => $product_id, service_id => $service_id);
};
if ($@) {
    warn "Exception when calling EnabledProductsApi->disable_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**|  | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_product**
> EnabledProduct enable_product(product_id => $product_id, service_id => $service_id)

Enable a product

Enable a product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EnabledProductsApi;
my $api_instance = WebService::Fastly::EnabledProductsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $product_id = origin_inspector; # string | 
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product(product_id => $product_id, service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EnabledProductsApi->enable_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**|  | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**EnabledProduct**](EnabledProduct.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_enabled_product**
> EnabledProduct get_enabled_product(product_id => $product_id, service_id => $service_id)

Get enabled product

Get enabled product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EnabledProductsApi;
my $api_instance = WebService::Fastly::EnabledProductsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $product_id = origin_inspector; # string | 
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_enabled_product(product_id => $product_id, service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EnabledProductsApi->get_enabled_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**|  | 
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**EnabledProduct**](EnabledProduct.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

