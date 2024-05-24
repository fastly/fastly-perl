# WebService::Fastly::MutualAuthenticationApi

## Load the API package
```perl
use WebService::Fastly::Object::MutualAuthenticationApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_mutual_tls_authentication**](MutualAuthenticationApi.md#create_mutual_tls_authentication) | **POST** /tls/mutual_authentications | Create a Mutual Authentication
[**delete_mutual_tls**](MutualAuthenticationApi.md#delete_mutual_tls) | **DELETE** /tls/mutual_authentications/{mutual_authentication_id} | Delete a Mutual TLS
[**get_mutual_authentication**](MutualAuthenticationApi.md#get_mutual_authentication) | **GET** /tls/mutual_authentications/{mutual_authentication_id} | Get a Mutual Authentication
[**list_mutual_authentications**](MutualAuthenticationApi.md#list_mutual_authentications) | **GET** /tls/mutual_authentications | List Mutual Authentications
[**patch_mutual_authentication**](MutualAuthenticationApi.md#patch_mutual_authentication) | **PATCH** /tls/mutual_authentications/{mutual_authentication_id} | Update a Mutual Authentication


# **create_mutual_tls_authentication**
> MutualAuthenticationResponse create_mutual_tls_authentication(mutual_authentication => $mutual_authentication)

Create a Mutual Authentication

Create a mutual authentication using a bundle of certificates to enable client-to-server mutual TLS.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MutualAuthenticationApi;
my $api_instance = WebService::Fastly::MutualAuthenticationApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $mutual_authentication = WebService::Fastly::Object::MutualAuthentication->new(); # MutualAuthentication | 

eval {
    my $result = $api_instance->create_mutual_tls_authentication(mutual_authentication => $mutual_authentication);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MutualAuthenticationApi->create_mutual_tls_authentication: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mutual_authentication** | [**MutualAuthentication**](MutualAuthentication.md)|  | [optional] 

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_mutual_tls**
> delete_mutual_tls(mutual_authentication_id => $mutual_authentication_id)

Delete a Mutual TLS

Remove a Mutual TLS authentication

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MutualAuthenticationApi;
my $api_instance = WebService::Fastly::MutualAuthenticationApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $mutual_authentication_id = "mutual_authentication_id_example"; # string | Alphanumeric string identifying a mutual authentication.

eval {
    $api_instance->delete_mutual_tls(mutual_authentication_id => $mutual_authentication_id);
};
if ($@) {
    warn "Exception when calling MutualAuthenticationApi->delete_mutual_tls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mutual_authentication_id** | **string**| Alphanumeric string identifying a mutual authentication. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mutual_authentication**
> MutualAuthenticationResponse get_mutual_authentication(mutual_authentication_id => $mutual_authentication_id, include => $include)

Get a Mutual Authentication

Show a Mutual Authentication.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MutualAuthenticationApi;
my $api_instance = WebService::Fastly::MutualAuthenticationApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $mutual_authentication_id = "mutual_authentication_id_example"; # string | Alphanumeric string identifying a mutual authentication.
my $include = "include_example"; # string | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 

eval {
    my $result = $api_instance->get_mutual_authentication(mutual_authentication_id => $mutual_authentication_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MutualAuthenticationApi->get_mutual_authentication: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mutual_authentication_id** | **string**| Alphanumeric string identifying a mutual authentication. | 
 **include** | **string**| Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication.  | [optional] 

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_mutual_authentications**
> MutualAuthenticationsResponse list_mutual_authentications(include => $include, page[number] => $page[number], page[size] => $page[size])

List Mutual Authentications

List all mutual authentications.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MutualAuthenticationApi;
my $api_instance = WebService::Fastly::MutualAuthenticationApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $include = "include_example"; # string | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_mutual_authentications(include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MutualAuthenticationApi->list_mutual_authentications: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **string**| Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**MutualAuthenticationsResponse**](MutualAuthenticationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_mutual_authentication**
> MutualAuthenticationResponse patch_mutual_authentication(mutual_authentication_id => $mutual_authentication_id, mutual_authentication => $mutual_authentication)

Update a Mutual Authentication

Update a Mutual Authentication.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::MutualAuthenticationApi;
my $api_instance = WebService::Fastly::MutualAuthenticationApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $mutual_authentication_id = "mutual_authentication_id_example"; # string | Alphanumeric string identifying a mutual authentication.
my $mutual_authentication = WebService::Fastly::Object::MutualAuthentication->new(); # MutualAuthentication | 

eval {
    my $result = $api_instance->patch_mutual_authentication(mutual_authentication_id => $mutual_authentication_id, mutual_authentication => $mutual_authentication);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MutualAuthenticationApi->patch_mutual_authentication: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mutual_authentication_id** | **string**| Alphanumeric string identifying a mutual authentication. | 
 **mutual_authentication** | [**MutualAuthentication**](MutualAuthentication.md)|  | [optional] 

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

