# WebService::Fastly::ProductNgwafApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductNgwafApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ngwaf**](ProductNgwafApi.md#disable_product_ngwaf) | **DELETE** /enabled-products/v1/ngwaf/services/{service_id} | Disable product
[**enable_product_ngwaf**](ProductNgwafApi.md#enable_product_ngwaf) | **PUT** /enabled-products/v1/ngwaf/services/{service_id} | Enable product
[**get_product_ngwaf**](ProductNgwafApi.md#get_product_ngwaf) | **GET** /enabled-products/v1/ngwaf/services/{service_id} | Get product enablement status
[**get_product_ngwaf_configuration**](ProductNgwafApi.md#get_product_ngwaf_configuration) | **GET** /enabled-products/v1/ngwaf/services/{service_id}/configuration | Get configuration
[**get_services_product_ngwaf**](ProductNgwafApi.md#get_services_product_ngwaf) | **GET** /enabled-products/v1/ngwaf/services | Get services with product enabled
[**set_product_ngwaf_configuration**](ProductNgwafApi.md#set_product_ngwaf_configuration) | **PATCH** /enabled-products/v1/ngwaf/services/{service_id}/configuration | Update configuration


# **disable_product_ngwaf**
> disable_product_ngwaf(service_id => $service_id)

Disable product

Disable the Next-Gen WAF product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_ngwaf(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->disable_product_ngwaf: $@\n";
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

# **enable_product_ngwaf**
> NgwafResponseEnable enable_product_ngwaf(service_id => $service_id, ngwaf_request_enable => $ngwaf_request_enable)

Enable product

Enable the Next-Gen WAF product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $ngwaf_request_enable = WebService::Fastly::Object::NgwafRequestEnable->new(); # NgwafRequestEnable | 

eval {
    my $result = $api_instance->enable_product_ngwaf(service_id => $service_id, ngwaf_request_enable => $ngwaf_request_enable);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->enable_product_ngwaf: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **ngwaf_request_enable** | [**NgwafRequestEnable**](NgwafRequestEnable.md)|  | [optional] 

### Return type

[**NgwafResponseEnable**](NgwafResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_ngwaf**
> NgwafResponseEnable get_product_ngwaf(service_id => $service_id)

Get product enablement status

Get the enablement status of the Next-Gen WAF product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_ngwaf(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->get_product_ngwaf: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**NgwafResponseEnable**](NgwafResponseEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_ngwaf_configuration**
> NgwafResponseConfigure get_product_ngwaf_configuration(service_id => $service_id)

Get configuration

Get configuration of the Next-Gen WAF product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_ngwaf_configuration(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->get_product_ngwaf_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**NgwafResponseConfigure**](NgwafResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_ngwaf**
> NgwafResponseBodyGetAllServices get_services_product_ngwaf()

Get services with product enabled

Get all the services which have the Next-Gen WAF product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_ngwaf();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->get_services_product_ngwaf: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NgwafResponseBodyGetAllServices**](NgwafResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_product_ngwaf_configuration**
> NgwafResponseConfigure set_product_ngwaf_configuration(service_id => $service_id, ngwaf_request_update_configuration => $ngwaf_request_update_configuration)

Update configuration

Update configuration of the Next-Gen WAF product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductNgwafApi;
my $api_instance = WebService::Fastly::ProductNgwafApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $ngwaf_request_update_configuration = WebService::Fastly::Object::NgwafRequestUpdateConfiguration->new(); # NgwafRequestUpdateConfiguration | 

eval {
    my $result = $api_instance->set_product_ngwaf_configuration(service_id => $service_id, ngwaf_request_update_configuration => $ngwaf_request_update_configuration);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductNgwafApi->set_product_ngwaf_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **ngwaf_request_update_configuration** | [**NgwafRequestUpdateConfiguration**](NgwafRequestUpdateConfiguration.md)|  | [optional] 

### Return type

[**NgwafResponseConfigure**](NgwafResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

