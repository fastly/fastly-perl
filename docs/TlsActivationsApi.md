# WebService::Fastly::TlsActivationsApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsActivationsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_tls_activation**](TlsActivationsApi.md#create_tls_activation) | **POST** /tls/activations | Enable TLS for a domain using a custom certificate
[**delete_tls_activation**](TlsActivationsApi.md#delete_tls_activation) | **DELETE** /tls/activations/{tls_activation_id} | Disable TLS on a domain
[**get_tls_activation**](TlsActivationsApi.md#get_tls_activation) | **GET** /tls/activations/{tls_activation_id} | Get a TLS activation
[**list_tls_activations**](TlsActivationsApi.md#list_tls_activations) | **GET** /tls/activations | List TLS activations
[**update_tls_activation**](TlsActivationsApi.md#update_tls_activation) | **PATCH** /tls/activations/{tls_activation_id} | Update a certificate


# **create_tls_activation**
> TlsActivationResponse create_tls_activation(tls_activation => $tls_activation)

Enable TLS for a domain using a custom certificate

Enable TLS for a particular TLS domain and certificate combination. These relationships must be specified to create the TLS activation.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsActivationsApi;
my $api_instance = WebService::Fastly::TlsActivationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_activation = WebService::Fastly::Object::TlsActivation->new(); # TlsActivation | 

eval {
    my $result = $api_instance->create_tls_activation(tls_activation => $tls_activation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsActivationsApi->create_tls_activation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_activation** | [**TlsActivation**](TlsActivation.md)|  | [optional] 

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tls_activation**
> delete_tls_activation(tls_activation_id => $tls_activation_id)

Disable TLS on a domain

Disable TLS on the domain associated with this TLS activation.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsActivationsApi;
my $api_instance = WebService::Fastly::TlsActivationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_activation_id = "tls_activation_id_example"; # string | Alphanumeric string identifying a TLS activation.

eval {
    $api_instance->delete_tls_activation(tls_activation_id => $tls_activation_id);
};
if ($@) {
    warn "Exception when calling TlsActivationsApi->delete_tls_activation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_activation_id** | **string**| Alphanumeric string identifying a TLS activation. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tls_activation**
> TlsActivationResponse get_tls_activation(tls_activation_id => $tls_activation_id, include => $include)

Get a TLS activation

Show a TLS activation.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsActivationsApi;
my $api_instance = WebService::Fastly::TlsActivationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_activation_id = "tls_activation_id_example"; # string | Alphanumeric string identifying a TLS activation.
my $include = tls_certificate,tls_configuration,tls_domain; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`. 

eval {
    my $result = $api_instance->get_tls_activation(tls_activation_id => $tls_activation_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsActivationsApi->get_tls_activation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_activation_id** | **string**| Alphanumeric string identifying a TLS activation. | 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`.  | [optional] 

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_activations**
> TlsActivationsResponse list_tls_activations(filter[tls_certificate/id] => $filter[tls_certificate/id], filter[tls_configuration/id] => $filter[tls_configuration/id], filter[tls_domain/id] => $filter[tls_domain/id], include => $include, page[number] => $page[number], page[size] => $page[size])

List TLS activations

List all TLS activations.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsActivationsApi;
my $api_instance = WebService::Fastly::TlsActivationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[tls_certificate/id] = "filter[tls_certificate/id]_example"; # string | Limit the returned activations to a specific certificate.
my $filter[tls_configuration/id] = "filter[tls_configuration/id]_example"; # string | Limit the returned activations to a specific TLS configuration.
my $filter[tls_domain/id] = "filter[tls_domain/id]_example"; # string | Limit the returned rules to a specific domain name.
my $include = tls_certificate,tls_configuration,tls_domain; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_tls_activations(filter[tls_certificate/id] => $filter[tls_certificate/id], filter[tls_configuration/id] => $filter[tls_configuration/id], filter[tls_domain/id] => $filter[tls_domain/id], include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsActivationsApi->list_tls_activations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[tls_certificate/id]** | **string**| Limit the returned activations to a specific certificate. | [optional] 
 **filter[tls_configuration/id]** | **string**| Limit the returned activations to a specific TLS configuration. | [optional] 
 **filter[tls_domain/id]** | **string**| Limit the returned rules to a specific domain name. | [optional] 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**TlsActivationsResponse**](TlsActivationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tls_activation**
> TlsActivationResponse update_tls_activation(tls_activation_id => $tls_activation_id, tls_activation => $tls_activation)

Update a certificate

Update the certificate used to terminate TLS traffic for the domain associated with this TLS activation.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsActivationsApi;
my $api_instance = WebService::Fastly::TlsActivationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_activation_id = "tls_activation_id_example"; # string | Alphanumeric string identifying a TLS activation.
my $tls_activation = WebService::Fastly::Object::TlsActivation->new(); # TlsActivation | 

eval {
    my $result = $api_instance->update_tls_activation(tls_activation_id => $tls_activation_id, tls_activation => $tls_activation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsActivationsApi->update_tls_activation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_activation_id** | **string**| Alphanumeric string identifying a TLS activation. | 
 **tls_activation** | [**TlsActivation**](TlsActivation.md)|  | [optional] 

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

