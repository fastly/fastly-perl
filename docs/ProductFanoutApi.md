# WebService::Fastly::ProductFanoutApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductFanoutApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_fanout**](ProductFanoutApi.md#disable_product_fanout) | **DELETE** /enabled-products/v1/fanout/services/{service_id} | Disable product
[**enable_product_fanout**](ProductFanoutApi.md#enable_product_fanout) | **PUT** /enabled-products/v1/fanout/services/{service_id} | Enable product
[**get_product_fanout**](ProductFanoutApi.md#get_product_fanout) | **GET** /enabled-products/v1/fanout/services/{service_id} | Get product enablement status


# **disable_product_fanout**
> disable_product_fanout(service_id => $service_id)

Disable product

Disable the Fanout product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductFanoutApi;
my $api_instance = WebService::Fastly::ProductFanoutApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_fanout(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductFanoutApi->disable_product_fanout: $@\n";
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

# **enable_product_fanout**
> FanoutResponseBodyEnable enable_product_fanout(service_id => $service_id)

Enable product

Enable the Fanout product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductFanoutApi;
my $api_instance = WebService::Fastly::ProductFanoutApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_fanout(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductFanoutApi->enable_product_fanout: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**FanoutResponseBodyEnable**](FanoutResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_fanout**
> FanoutResponseBodyEnable get_product_fanout(service_id => $service_id)

Get product enablement status

Get the enablement status of the Fanout product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductFanoutApi;
my $api_instance = WebService::Fastly::ProductFanoutApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_fanout(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductFanoutApi->get_product_fanout: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**FanoutResponseBodyEnable**](FanoutResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

