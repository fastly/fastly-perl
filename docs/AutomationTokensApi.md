# WebService::Fastly::AutomationTokensApi

## Load the API package
```perl
use WebService::Fastly::Object::AutomationTokensApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_automation_token**](AutomationTokensApi.md#create_automation_token) | **POST** /automation-tokens | Create Automation Token
[**get_automation_token_id**](AutomationTokensApi.md#get_automation_token_id) | **GET** /automation-tokens/{id} | Retrieve an Automation Token by ID
[**get_automation_tokens_id_services**](AutomationTokensApi.md#get_automation_tokens_id_services) | **GET** /automation-tokens/{id}/services | List Automation Token Services
[**list_automation_tokens**](AutomationTokensApi.md#list_automation_tokens) | **GET** /automation-tokens | List Customer Automation Tokens
[**revoke_automation_token_id**](AutomationTokensApi.md#revoke_automation_token_id) | **DELETE** /automation-tokens/{id} | Revoke an Automation Token by ID


# **create_automation_token**
> AutomationTokenCreateResponse create_automation_token(automation_token_create_request => $automation_token_create_request)

Create Automation Token

Creates a new automation token.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AutomationTokensApi;
my $api_instance = WebService::Fastly::AutomationTokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $automation_token_create_request = WebService::Fastly::Object::AutomationTokenCreateRequest->new(); # AutomationTokenCreateRequest | 

eval {
    my $result = $api_instance->create_automation_token(automation_token_create_request => $automation_token_create_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutomationTokensApi->create_automation_token: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automation_token_create_request** | [**AutomationTokenCreateRequest**](AutomationTokenCreateRequest.md)|  | [optional] 

### Return type

[**AutomationTokenCreateResponse**](AutomationTokenCreateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_automation_token_id**
> AutomationTokenResponse get_automation_token_id(id => $id)

Retrieve an Automation Token by ID

Retrieves an automation token by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AutomationTokensApi;
my $api_instance = WebService::Fastly::AutomationTokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->get_automation_token_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutomationTokensApi->get_automation_token_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 

### Return type

[**AutomationTokenResponse**](AutomationTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_automation_tokens_id_services**
> InlineResponse2004 get_automation_tokens_id_services(id => $id, per_page => $per_page, page => $page)

List Automation Token Services

List of services associated with the automation token.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AutomationTokensApi;
my $api_instance = WebService::Fastly::AutomationTokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = "id_example"; # string | 
my $per_page = 56; # int | 
my $page = 56; # int | 

eval {
    my $result = $api_instance->get_automation_tokens_id_services(id => $id, per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutomationTokensApi->get_automation_tokens_id_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_automation_tokens**
> ARRAY[AutomationTokenResponse] list_automation_tokens(per_page => $per_page, page => $page)

List Customer Automation Tokens

Lists all automation tokens for a customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AutomationTokensApi;
my $api_instance = WebService::Fastly::AutomationTokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $per_page = 56; # int | 
my $page = 56; # int | 

eval {
    my $result = $api_instance->list_automation_tokens(per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutomationTokensApi->list_automation_tokens: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**ARRAY[AutomationTokenResponse]**](AutomationTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_automation_token_id**
> AutomationTokenErrorResponse revoke_automation_token_id(id => $id)

Revoke an Automation Token by ID

Revoke an automation token by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AutomationTokensApi;
my $api_instance = WebService::Fastly::AutomationTokensApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->revoke_automation_token_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutomationTokensApi->revoke_automation_token_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 

### Return type

[**AutomationTokenErrorResponse**](AutomationTokenErrorResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

