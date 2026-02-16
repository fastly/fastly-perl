# WebService::Fastly::ServiceAuthorizationsApi

## Load the API package
```perl
use WebService::Fastly::Object::ServiceAuthorizationsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_service_authorization**](ServiceAuthorizationsApi.md#create_service_authorization) | **POST** /service-authorizations | Create service authorization
[**delete_service_authorization**](ServiceAuthorizationsApi.md#delete_service_authorization) | **DELETE** /service-authorizations/{service_authorization_id} | Delete service authorization
[**delete_service_authorization2**](ServiceAuthorizationsApi.md#delete_service_authorization2) | **DELETE** /service-authorizations | Delete service authorizations
[**list_service_authorization**](ServiceAuthorizationsApi.md#list_service_authorization) | **GET** /service-authorizations | List service authorizations
[**show_service_authorization**](ServiceAuthorizationsApi.md#show_service_authorization) | **GET** /service-authorizations/{service_authorization_id} | Show service authorization
[**update_service_authorization**](ServiceAuthorizationsApi.md#update_service_authorization) | **PATCH** /service-authorizations/{service_authorization_id} | Update service authorization
[**update_service_authorization2**](ServiceAuthorizationsApi.md#update_service_authorization2) | **PATCH** /service-authorizations | Update service authorizations


# **create_service_authorization**
> ServiceAuthorizationResponse create_service_authorization(service_authorization => $service_authorization)

Create service authorization

Create service authorization.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_authorization = WebService::Fastly::Object::ServiceAuthorization->new(); # ServiceAuthorization | 

eval {
    my $result = $api_instance->create_service_authorization(service_authorization => $service_authorization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->create_service_authorization: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_authorization** | [**ServiceAuthorization**](ServiceAuthorization.md)|  | [optional] 

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_service_authorization**
> delete_service_authorization(service_authorization_id => $service_authorization_id)

Delete service authorization

Delete service authorization.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_authorization_id = "service_authorization_id_example"; # string | Alphanumeric string identifying a service authorization.

eval {
    $api_instance->delete_service_authorization(service_authorization_id => $service_authorization_id);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->delete_service_authorization: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_authorization_id** | **string**| Alphanumeric string identifying a service authorization. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_service_authorization2**
> InlineResponse20014 delete_service_authorization2(request_body => $request_body)

Delete service authorizations

Delete service authorizations.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->delete_service_authorization2(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->delete_service_authorization2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json; ext=bulk
 - **Accept**: application/vnd.api+json; ext=bulk

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_authorization**
> ServiceAuthorizationsResponse list_service_authorization(page[number] => $page[number], page[size] => $page[size])

List service authorizations

List service authorizations.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_service_authorization(page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->list_service_authorization: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**ServiceAuthorizationsResponse**](ServiceAuthorizationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_service_authorization**
> ServiceAuthorizationResponse show_service_authorization(service_authorization_id => $service_authorization_id)

Show service authorization

Show service authorization.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_authorization_id = "service_authorization_id_example"; # string | Alphanumeric string identifying a service authorization.

eval {
    my $result = $api_instance->show_service_authorization(service_authorization_id => $service_authorization_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->show_service_authorization: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_authorization_id** | **string**| Alphanumeric string identifying a service authorization. | 

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_authorization**
> ServiceAuthorizationResponse update_service_authorization(service_authorization_id => $service_authorization_id, service_authorization => $service_authorization)

Update service authorization

Update service authorization.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_authorization_id = "service_authorization_id_example"; # string | Alphanumeric string identifying a service authorization.
my $service_authorization = WebService::Fastly::Object::ServiceAuthorization->new(); # ServiceAuthorization | 

eval {
    my $result = $api_instance->update_service_authorization(service_authorization_id => $service_authorization_id, service_authorization => $service_authorization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->update_service_authorization: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_authorization_id** | **string**| Alphanumeric string identifying a service authorization. | 
 **service_authorization** | [**ServiceAuthorization**](ServiceAuthorization.md)|  | [optional] 

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_authorization2**
> ServiceAuthorizationsResponse update_service_authorization2(request_body => $request_body)

Update service authorizations

Update service authorizations.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceAuthorizationsApi;
my $api_instance = WebService::Fastly::ServiceAuthorizationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_service_authorization2(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceAuthorizationsApi->update_service_authorization2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

[**ServiceAuthorizationsResponse**](ServiceAuthorizationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json; ext=bulk
 - **Accept**: application/vnd.api+json; ext=bulk

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

