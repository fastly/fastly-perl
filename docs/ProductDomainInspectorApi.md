# WebService::Fastly::ProductDomainInspectorApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductDomainInspectorApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_domain_inspector**](ProductDomainInspectorApi.md#disable_product_domain_inspector) | **DELETE** /enabled-products/v1/domain_inspector/services/{service_id} | Disable product
[**enable_product_domain_inspector**](ProductDomainInspectorApi.md#enable_product_domain_inspector) | **PUT** /enabled-products/v1/domain_inspector/services/{service_id} | Enable product
[**get_product_domain_inspector**](ProductDomainInspectorApi.md#get_product_domain_inspector) | **GET** /enabled-products/v1/domain_inspector/services/{service_id} | Get product enablement status
[**get_services_product_domain_inspector**](ProductDomainInspectorApi.md#get_services_product_domain_inspector) | **GET** /enabled-products/v1/domain_inspector/services | Get services with product enabled


# **disable_product_domain_inspector**
> disable_product_domain_inspector(service_id => $service_id)

Disable product

Disable the Domain Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainInspectorApi;
my $api_instance = WebService::Fastly::ProductDomainInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_domain_inspector(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductDomainInspectorApi->disable_product_domain_inspector: $@\n";
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

# **enable_product_domain_inspector**
> DomainInspectorResponseBodyEnable enable_product_domain_inspector(service_id => $service_id)

Enable product

Enable the Domain Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainInspectorApi;
my $api_instance = WebService::Fastly::ProductDomainInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_domain_inspector(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDomainInspectorApi->enable_product_domain_inspector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DomainInspectorResponseBodyEnable**](DomainInspectorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_domain_inspector**
> DomainInspectorResponseBodyEnable get_product_domain_inspector(service_id => $service_id)

Get product enablement status

Get the enablement status of the Domain Inspector product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainInspectorApi;
my $api_instance = WebService::Fastly::ProductDomainInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_domain_inspector(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDomainInspectorApi->get_product_domain_inspector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DomainInspectorResponseBodyEnable**](DomainInspectorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_domain_inspector**
> DomainInspectorResponseBodyGetAllServices get_services_product_domain_inspector()

Get services with product enabled

Get all the services which have the Domain Inspector product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainInspectorApi;
my $api_instance = WebService::Fastly::ProductDomainInspectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_domain_inspector();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDomainInspectorApi->get_services_product_domain_inspector: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainInspectorResponseBodyGetAllServices**](DomainInspectorResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

