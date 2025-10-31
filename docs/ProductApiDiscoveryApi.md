# WebService::Fastly::ProductApiDiscoveryApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductApiDiscoveryApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_api_discovery**](ProductApiDiscoveryApi.md#disable_product_api_discovery) | **DELETE** /enabled-products/v1/api_discovery/services/{service_id} | Disable product
[**enable_product_api_discovery**](ProductApiDiscoveryApi.md#enable_product_api_discovery) | **PUT** /enabled-products/v1/api_discovery/services/{service_id} | Enable product
[**get_product_api_discovery**](ProductApiDiscoveryApi.md#get_product_api_discovery) | **GET** /enabled-products/v1/api_discovery/services/{service_id} | Get product enablement status
[**get_services_product_api_discovery**](ProductApiDiscoveryApi.md#get_services_product_api_discovery) | **GET** /enabled-products/v1/api_discovery/services | Get services with product enabled


# **disable_product_api_discovery**
> disable_product_api_discovery(service_id => $service_id)

Disable product

Disable the API Discovery product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductApiDiscoveryApi;
my $api_instance = WebService::Fastly::ProductApiDiscoveryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_api_discovery(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductApiDiscoveryApi->disable_product_api_discovery: $@\n";
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

# **enable_product_api_discovery**
> ApiDiscoveryResponseEnable enable_product_api_discovery(service_id => $service_id)

Enable product

Enable the API Discovery product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductApiDiscoveryApi;
my $api_instance = WebService::Fastly::ProductApiDiscoveryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_api_discovery(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApiDiscoveryApi->enable_product_api_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ApiDiscoveryResponseEnable**](ApiDiscoveryResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_api_discovery**
> ApiDiscoveryResponseEnable get_product_api_discovery(service_id => $service_id)

Get product enablement status

Get the enablement status of the API Discovery product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductApiDiscoveryApi;
my $api_instance = WebService::Fastly::ProductApiDiscoveryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_api_discovery(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApiDiscoveryApi->get_product_api_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ApiDiscoveryResponseEnable**](ApiDiscoveryResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_api_discovery**
> ApiDiscoveryResponseBodyGetAllServices get_services_product_api_discovery()

Get services with product enabled

Get all the services for a customer that has the API Discovery product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductApiDiscoveryApi;
my $api_instance = WebService::Fastly::ProductApiDiscoveryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_api_discovery();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApiDiscoveryApi->get_services_product_api_discovery: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiDiscoveryResponseBodyGetAllServices**](ApiDiscoveryResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

