# WebService::Fastly::TokensApi

## Load the API package
```perl
use WebService::Fastly::Object::TokensApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_token_current**](TokensApi.md#get_token_current) | **GET** /tokens/self | Get the current token
[**list_tokens_customer**](TokensApi.md#list_tokens_customer) | **GET** /customer/{customer_id}/tokens | List tokens for a customer
[**list_tokens_user**](TokensApi.md#list_tokens_user) | **GET** /tokens | List tokens for the authenticated user
[**revoke_token**](TokensApi.md#revoke_token) | **DELETE** /tokens/{token_id} | Revoke a token
[**revoke_token_current**](TokensApi.md#revoke_token_current) | **DELETE** /tokens/self | Revoke the current token


# **get_token_current**
> TokenResponse get_token_current()

Get the current token

Get a single token based on the access_token used in the request.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TokensApi;
my $api_instance = WebService::Fastly::TokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_token_current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokensApi->get_token_current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tokens_customer**
> ARRAY[TokenResponse] list_tokens_customer(customer_id => $customer_id)

List tokens for a customer

List all tokens belonging to a specific customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TokensApi;
my $api_instance = WebService::Fastly::TokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->list_tokens_customer(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokensApi->list_tokens_customer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**ARRAY[TokenResponse]**](TokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tokens_user**
> ARRAY[TokenResponse] list_tokens_user()

List tokens for the authenticated user

List all tokens belonging to the authenticated user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TokensApi;
my $api_instance = WebService::Fastly::TokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_tokens_user();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokensApi->list_tokens_user: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[TokenResponse]**](TokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_token**
> revoke_token(token_id => $token_id)

Revoke a token

Revoke a specific token by its id.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TokensApi;
my $api_instance = WebService::Fastly::TokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $token_id = "token_id_example"; # string | Alphanumeric string identifying a token.

eval {
    $api_instance->revoke_token(token_id => $token_id);
};
if ($@) {
    warn "Exception when calling TokensApi->revoke_token: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **string**| Alphanumeric string identifying a token. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_token_current**
> revoke_token_current()

Revoke the current token

Revoke a token that is used to authenticate the request.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TokensApi;
my $api_instance = WebService::Fastly::TokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->revoke_token_current();
};
if ($@) {
    warn "Exception when calling TokensApi->revoke_token_current: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

