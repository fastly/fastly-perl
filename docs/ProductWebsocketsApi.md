# WebService::Fastly::ProductWebsocketsApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductWebsocketsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_websockets**](ProductWebsocketsApi.md#disable_product_websockets) | **DELETE** /enabled-products/v1/websockets/services/{service_id} | Disable product
[**enable_product_websockets**](ProductWebsocketsApi.md#enable_product_websockets) | **PUT** /enabled-products/v1/websockets/services/{service_id} | Enable product
[**get_product_websockets**](ProductWebsocketsApi.md#get_product_websockets) | **GET** /enabled-products/v1/websockets/services/{service_id} | Get product enablement status
[**get_services_product_websockets**](ProductWebsocketsApi.md#get_services_product_websockets) | **GET** /enabled-products/v1/websockets/services | Get services with product enabled


# **disable_product_websockets**
> disable_product_websockets(service_id => $service_id)

Disable product

Disable the Websockets product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductWebsocketsApi;
my $api_instance = WebService::Fastly::ProductWebsocketsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_websockets(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductWebsocketsApi->disable_product_websockets: $@\n";
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

# **enable_product_websockets**
> WebsocketsResponseBodyEnable enable_product_websockets(service_id => $service_id)

Enable product

Enable the WebSockets product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductWebsocketsApi;
my $api_instance = WebService::Fastly::ProductWebsocketsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_websockets(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductWebsocketsApi->enable_product_websockets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**WebsocketsResponseBodyEnable**](WebsocketsResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_websockets**
> WebsocketsResponseBodyEnable get_product_websockets(service_id => $service_id)

Get product enablement status

Get the enablement status of the WebSockets product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductWebsocketsApi;
my $api_instance = WebService::Fastly::ProductWebsocketsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_websockets(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductWebsocketsApi->get_product_websockets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**WebsocketsResponseBodyEnable**](WebsocketsResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_websockets**
> WebsocketsResponseBodyGetAllServices get_services_product_websockets()

Get services with product enabled

Get all the services which have the Websockets product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductWebsocketsApi;
my $api_instance = WebService::Fastly::ProductWebsocketsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_websockets();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductWebsocketsApi->get_services_product_websockets: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebsocketsResponseBodyGetAllServices**](WebsocketsResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

