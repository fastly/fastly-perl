# WebService::Fastly::ProductImageOptimizerApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductImageOptimizerApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_image_optimizer**](ProductImageOptimizerApi.md#disable_product_image_optimizer) | **DELETE** /enabled-products/v1/image_optimizer/services/{service_id} | Disable product
[**enable_product_image_optimizer**](ProductImageOptimizerApi.md#enable_product_image_optimizer) | **PUT** /enabled-products/v1/image_optimizer/services/{service_id} | Enable product
[**get_product_image_optimizer**](ProductImageOptimizerApi.md#get_product_image_optimizer) | **GET** /enabled-products/v1/image_optimizer/services/{service_id} | Get product enablement status
[**get_services_product_image_optimizer**](ProductImageOptimizerApi.md#get_services_product_image_optimizer) | **GET** /enabled-products/v1/image_optimizer/services | Get services with product enabled


# **disable_product_image_optimizer**
> disable_product_image_optimizer(service_id => $service_id)

Disable product

Disable the Image Optimizer product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductImageOptimizerApi;
my $api_instance = WebService::Fastly::ProductImageOptimizerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_image_optimizer(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductImageOptimizerApi->disable_product_image_optimizer: $@\n";
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

# **enable_product_image_optimizer**
> ImageOptimizerResponseBodyEnable enable_product_image_optimizer(service_id => $service_id)

Enable product

Enable the Image Optimizer product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductImageOptimizerApi;
my $api_instance = WebService::Fastly::ProductImageOptimizerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_image_optimizer(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductImageOptimizerApi->enable_product_image_optimizer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ImageOptimizerResponseBodyEnable**](ImageOptimizerResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_image_optimizer**
> ImageOptimizerResponseBodyEnable get_product_image_optimizer(service_id => $service_id)

Get product enablement status

Get the enablement status of the Image Optimizer product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductImageOptimizerApi;
my $api_instance = WebService::Fastly::ProductImageOptimizerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_image_optimizer(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductImageOptimizerApi->get_product_image_optimizer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ImageOptimizerResponseBodyEnable**](ImageOptimizerResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_image_optimizer**
> ImageOptimizerResponseBodyGetAllServices get_services_product_image_optimizer()

Get services with product enabled

Get all the services which have the Image Optimizer product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductImageOptimizerApi;
my $api_instance = WebService::Fastly::ProductImageOptimizerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_image_optimizer();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductImageOptimizerApi->get_services_product_image_optimizer: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImageOptimizerResponseBodyGetAllServices**](ImageOptimizerResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

