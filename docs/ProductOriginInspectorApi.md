# WebService::Fastly::ProductOriginInspectorApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductOriginInspectorApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_origin_inspector**](ProductOriginInspectorApi.md#disable_product_origin_inspector) | **DELETE** /enabled-products/v1/origin_inspector/services/{service_id} | Disable product
[**enable_product_origin_inspector**](ProductOriginInspectorApi.md#enable_product_origin_inspector) | **PUT** /enabled-products/v1/origin_inspector/services/{service_id} | Enable product
[**get_product_origin_inspector**](ProductOriginInspectorApi.md#get_product_origin_inspector) | **GET** /enabled-products/v1/origin_inspector/services/{service_id} | Get product enablement status


# **disable_product_origin_inspector**
> disable_product_origin_inspector(service_id => $service_id)

Disable product

Disable the Origin Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductOriginInspectorApi;
my $api_instance = WebService::Fastly::ProductOriginInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_origin_inspector(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductOriginInspectorApi->disable_product_origin_inspector: $@\n";
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

# **enable_product_origin_inspector**
> OriginInspectorResponseBodyEnable enable_product_origin_inspector(service_id => $service_id)

Enable product

Enable the Origin Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductOriginInspectorApi;
my $api_instance = WebService::Fastly::ProductOriginInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_origin_inspector(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductOriginInspectorApi->enable_product_origin_inspector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**OriginInspectorResponseBodyEnable**](OriginInspectorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_origin_inspector**
> OriginInspectorResponseBodyEnable get_product_origin_inspector(service_id => $service_id)

Get product enablement status

Get the enablement status of the Origin Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductOriginInspectorApi;
my $api_instance = WebService::Fastly::ProductOriginInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_origin_inspector(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductOriginInspectorApi->get_product_origin_inspector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**OriginInspectorResponseBodyEnable**](OriginInspectorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

