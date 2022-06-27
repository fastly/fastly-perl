# WebService::Fastly::EntitledProductsApi

## Load the API package
```perl
use WebService::Fastly::Object::EntitledProductsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entitled_product**](EntitledProductsApi.md#get_entitled_product) | **GET** /entitled-products/{product_id} | Get entitled product


# **get_entitled_product**
> EntitledProduct get_entitled_product(product_id => $product_id)

Get entitled product

Get entitled product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EntitledProductsApi;
my $api_instance = WebService::Fastly::EntitledProductsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $product_id = origin_inspector; # string | 

eval {
    my $result = $api_instance->get_entitled_product(product_id => $product_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntitledProductsApi->get_entitled_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**|  | 

### Return type

[**EntitledProduct**](EntitledProduct.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

