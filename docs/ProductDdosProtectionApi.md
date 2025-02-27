# WebService::Fastly::ProductDdosProtectionApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductDdosProtectionApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ddos_protection**](ProductDdosProtectionApi.md#disable_product_ddos_protection) | **DELETE** /enabled-products/v1/ddos_protection/services/{service_id} | Disable product
[**enable_product_ddos_protection**](ProductDdosProtectionApi.md#enable_product_ddos_protection) | **PUT** /enabled-products/v1/ddos_protection/services/{service_id} | Enable product
[**get_product_ddos_protection**](ProductDdosProtectionApi.md#get_product_ddos_protection) | **GET** /enabled-products/v1/ddos_protection/services/{service_id} | Get product enablement status
[**get_product_ddos_protection_configuration**](ProductDdosProtectionApi.md#get_product_ddos_protection_configuration) | **GET** /enabled-products/v1/ddos_protection/services/{service_id}/configuration | Get configuration
[**set_product_ddos_protection_configuration**](ProductDdosProtectionApi.md#set_product_ddos_protection_configuration) | **PATCH** /enabled-products/v1/ddos_protection/services/{service_id}/configuration | Update configuration


# **disable_product_ddos_protection**
> disable_product_ddos_protection(service_id => $service_id)

Disable product

Disable the DDoS Protection product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDdosProtectionApi;
my $api_instance = WebService::Fastly::ProductDdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_ddos_protection(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductDdosProtectionApi->disable_product_ddos_protection: $@\n";
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

# **enable_product_ddos_protection**
> DdosProtectionResponseEnable enable_product_ddos_protection(service_id => $service_id)

Enable product

Enable the DDoS Protection product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDdosProtectionApi;
my $api_instance = WebService::Fastly::ProductDdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_ddos_protection(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDdosProtectionApi->enable_product_ddos_protection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DdosProtectionResponseEnable**](DdosProtectionResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_ddos_protection**
> DdosProtectionResponseEnable get_product_ddos_protection(service_id => $service_id)

Get product enablement status

Get the enablement status of the DDoS Protection product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDdosProtectionApi;
my $api_instance = WebService::Fastly::ProductDdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_ddos_protection(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDdosProtectionApi->get_product_ddos_protection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DdosProtectionResponseEnable**](DdosProtectionResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_ddos_protection_configuration**
> DdosProtectionResponseConfigure get_product_ddos_protection_configuration(service_id => $service_id)

Get configuration

Get configuration of the DDoS Protection product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDdosProtectionApi;
my $api_instance = WebService::Fastly::ProductDdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_ddos_protection_configuration(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDdosProtectionApi->get_product_ddos_protection_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**DdosProtectionResponseConfigure**](DdosProtectionResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_product_ddos_protection_configuration**
> DdosProtectionResponseConfigure set_product_ddos_protection_configuration(service_id => $service_id, ddos_protection_request_update_configuration => $ddos_protection_request_update_configuration)

Update configuration

Update configuration of the DDoS Protection product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDdosProtectionApi;
my $api_instance = WebService::Fastly::ProductDdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $ddos_protection_request_update_configuration = WebService::Fastly::Object::DdosProtectionRequestUpdateConfiguration->new(); # DdosProtectionRequestUpdateConfiguration | 

eval {
    my $result = $api_instance->set_product_ddos_protection_configuration(service_id => $service_id, ddos_protection_request_update_configuration => $ddos_protection_request_update_configuration);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDdosProtectionApi->set_product_ddos_protection_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **ddos_protection_request_update_configuration** | [**DdosProtectionRequestUpdateConfiguration**](DdosProtectionRequestUpdateConfiguration.md)|  | [optional] 

### Return type

[**DdosProtectionResponseConfigure**](DdosProtectionResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

