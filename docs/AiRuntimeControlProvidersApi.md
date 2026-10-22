# WebService::Fastly::AiRuntimeControlProvidersApi

## Load the API package
```perl
use WebService::Fastly::Object::AiRuntimeControlProvidersApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_get_bedrock_setup**](AiRuntimeControlProvidersApi.md#arc_get_bedrock_setup) | **GET** /ai-runtime-control/v1/providers/bedrock/setup | Get Bedrock setup information
[**arc_get_models_for_provider**](AiRuntimeControlProvidersApi.md#arc_get_models_for_provider) | **GET** /ai-runtime-control/v1/providers/{provider_id}/models | Get models for a provider
[**arc_get_supported_providers**](AiRuntimeControlProvidersApi.md#arc_get_supported_providers) | **GET** /ai-runtime-control/v1/providers | Get supported providers


# **arc_get_bedrock_setup**
> ArcBedrockSetupResponse arc_get_bedrock_setup()

Get Bedrock setup information

Returns the AI Runtime Control IAM role Amazon Resource Name (ARN) and external ID to reference in your AWS account's IAM trust policy before creating an `aws-iam` [provider connection](https://www.fastly.com/documentation/reference/api/ai-runtime-control/provider-connections#arc-create-provider-connection) to Amazon Bedrock.  Requires AWS IAM authentication to be enabled on your account. If it isn't, this endpoint returns a 404 response. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProvidersApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProvidersApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->arc_get_bedrock_setup();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProvidersApi->arc_get_bedrock_setup: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ArcBedrockSetupResponse**](ArcBedrockSetupResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_models_for_provider**
> ArcModelsResponse arc_get_models_for_provider(provider_id => $provider_id)

Get models for a provider

Returns the models available for a specific provider.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProvidersApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProvidersApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $provider_id = anthropic; # string | The ID of the provider.

eval {
    my $result = $api_instance->arc_get_models_for_provider(provider_id => $provider_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProvidersApi->arc_get_models_for_provider: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider_id** | **string**| The ID of the provider. | 

### Return type

[**ArcModelsResponse**](ArcModelsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **arc_get_supported_providers**
> ArcProvidersResponse arc_get_supported_providers()

Get supported providers

Returns the AI providers supported by AI Runtime Control, with each provider's available models nested within.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AiRuntimeControlProvidersApi;
my $api_instance = WebService::Fastly::AiRuntimeControlProvidersApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->arc_get_supported_providers();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AiRuntimeControlProvidersApi->arc_get_supported_providers: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ArcProvidersResponse**](ArcProvidersResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

