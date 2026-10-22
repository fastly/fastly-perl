# WebService::Fastly::ProductAiRuntimeControlApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductAiRuntimeControlApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#disable_product_ai_runtime_control) | **DELETE** /enabled-products/v1/ai_runtime_control | Disable product
[**enable_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#enable_product_ai_runtime_control) | **PUT** /enabled-products/v1/ai_runtime_control | Enable product
[**get_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#get_product_ai_runtime_control) | **GET** /enabled-products/v1/ai_runtime_control | Get product enablement status


# **disable_product_ai_runtime_control**
> disable_product_ai_runtime_control()

Disable product

Disable the AI Runtime Control product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiRuntimeControlApi;
my $api_instance = WebService::Fastly::ProductAiRuntimeControlApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->disable_product_ai_runtime_control();
};
if ($@) {
    warn "Exception when calling ProductAiRuntimeControlApi->disable_product_ai_runtime_control: $@\n";
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

# **enable_product_ai_runtime_control**
> AiRuntimeControlResponseBodyEnable enable_product_ai_runtime_control()

Enable product

Enable the AI Runtime Control product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiRuntimeControlApi;
my $api_instance = WebService::Fastly::ProductAiRuntimeControlApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->enable_product_ai_runtime_control();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductAiRuntimeControlApi->enable_product_ai_runtime_control: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiRuntimeControlResponseBodyEnable**](AiRuntimeControlResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_ai_runtime_control**
> AiRuntimeControlResponseBodyEnable get_product_ai_runtime_control()

Get product enablement status

Get the enablement status of the AI Runtime Control product

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductAiRuntimeControlApi;
my $api_instance = WebService::Fastly::ProductAiRuntimeControlApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_product_ai_runtime_control();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductAiRuntimeControlApi->get_product_ai_runtime_control: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiRuntimeControlResponseBodyEnable**](AiRuntimeControlResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

