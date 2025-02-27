# WebService::Fastly::ProductAiAcceleratorApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductAiAcceleratorApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ai_accelerator**](ProductAiAcceleratorApi.md#disable_product_ai_accelerator) | **DELETE** /enabled-products/v1/ai_accelerator | Disable product
[**enable_ai_accelerator**](ProductAiAcceleratorApi.md#enable_ai_accelerator) | **PUT** /enabled-products/v1/ai_accelerator | Enable product
[**get_ai_accelerator**](ProductAiAcceleratorApi.md#get_ai_accelerator) | **GET** /enabled-products/v1/ai_accelerator | Get product enablement status


# **disable_product_ai_accelerator**
> disable_product_ai_accelerator()

Disable product

Disable the AI Accelerator product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiAcceleratorApi;
my $api_instance = WebService::Fastly::ProductAiAcceleratorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->disable_product_ai_accelerator();
};
if ($@) {
    warn "Exception when calling ProductAiAcceleratorApi->disable_product_ai_accelerator: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_ai_accelerator**
> AiAcceleratorResponseBodyEnable enable_ai_accelerator()

Enable product

Enable the AI Accelerator product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiAcceleratorApi;
my $api_instance = WebService::Fastly::ProductAiAcceleratorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->enable_ai_accelerator();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductAiAcceleratorApi->enable_ai_accelerator: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAcceleratorResponseBodyEnable**](AiAcceleratorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ai_accelerator**
> AiAcceleratorResponseBodyEnable get_ai_accelerator()

Get product enablement status

Get the enablement status of the AI Accelerator product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiAcceleratorApi;
my $api_instance = WebService::Fastly::ProductAiAcceleratorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_ai_accelerator();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductAiAcceleratorApi->get_ai_accelerator: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAcceleratorResponseBodyEnable**](AiAcceleratorResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

