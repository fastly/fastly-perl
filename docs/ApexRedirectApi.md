# Fastly::ApexRedirectApi

## Load the API package
```perl
use Fastly::Object::ApexRedirectApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_apex_redirect**](ApexRedirectApi.md#delete_apex_redirect) | **DELETE** /apex-redirects/{apex_redirect_id} | Delete an apex redirect
[**get_apex_redirect**](ApexRedirectApi.md#get_apex_redirect) | **GET** /apex-redirects/{apex_redirect_id} | Get an apex redirect
[**list_apex_redirects**](ApexRedirectApi.md#list_apex_redirects) | **GET** /service/{service_id}/version/{version_id}/apex-redirects | List apex redirects
[**update_apex_redirect**](ApexRedirectApi.md#update_apex_redirect) | **PUT** /apex-redirects/{apex_redirect_id} | Update an apex redirect


# **delete_apex_redirect**
> DeleteAcl200Response delete_apex_redirect(apex_redirect_id => $apex_redirect_id)

Delete an apex redirect

Delete an apex redirect by its ID.

### Example
```perl
use Data::Dumper;
use Fastly::ApexRedirectApi;
my $api_instance = Fastly::ApexRedirectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $apex_redirect_id = 6QI9o6ZZrSP3y9gI0OhMwZ; # string | 

eval {
    my $result = $api_instance->delete_apex_redirect(apex_redirect_id => $apex_redirect_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApexRedirectApi->delete_apex_redirect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apex_redirect_id** | **string**|  | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_apex_redirect**
> ApexRedirect get_apex_redirect(apex_redirect_id => $apex_redirect_id)

Get an apex redirect

Get an apex redirect by its ID.

### Example
```perl
use Data::Dumper;
use Fastly::ApexRedirectApi;
my $api_instance = Fastly::ApexRedirectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $apex_redirect_id = 6QI9o6ZZrSP3y9gI0OhMwZ; # string | 

eval {
    my $result = $api_instance->get_apex_redirect(apex_redirect_id => $apex_redirect_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApexRedirectApi->get_apex_redirect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apex_redirect_id** | **string**|  | 

### Return type

[**ApexRedirect**](ApexRedirect.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_apex_redirects**
> ARRAY[ApexRedirect] list_apex_redirects(service_id => $service_id, version_id => $version_id)

List apex redirects

List all apex redirects for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::ApexRedirectApi;
my $api_instance = Fastly::ApexRedirectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_apex_redirects(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApexRedirectApi->list_apex_redirects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[ApexRedirect]**](ApexRedirect.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_apex_redirect**
> ApexRedirect update_apex_redirect(apex_redirect_id => $apex_redirect_id, service_id => $service_id, version => $version, created_at => $created_at, deleted_at => $deleted_at, updated_at => $updated_at, status_code => $status_code, domains => $domains, feature_revision => $feature_revision)

Update an apex redirect

Update an apex redirect by its ID.

### Example
```perl
use Data::Dumper;
use Fastly::ApexRedirectApi;
my $api_instance = Fastly::ApexRedirectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $apex_redirect_id = 6QI9o6ZZrSP3y9gI0OhMwZ; # string | 
my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version = 56; # int | Integer identifying a service version.
my $created_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $deleted_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $updated_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date and time in ISO 8601 format.
my $status_code = 56; # int | HTTP status code used to redirect the client.
my $domains = [("null")]; # ARRAY[string] | Array of apex domains that should redirect to their WWW subdomain.
my $feature_revision = 56; # int | Revision number of the apex redirect feature implementation. Defaults to the most recent revision.

eval {
    my $result = $api_instance->update_apex_redirect(apex_redirect_id => $apex_redirect_id, service_id => $service_id, version => $version, created_at => $created_at, deleted_at => $deleted_at, updated_at => $updated_at, status_code => $status_code, domains => $domains, feature_revision => $feature_revision);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApexRedirectApi->update_apex_redirect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apex_redirect_id** | **string**|  | 
 **service_id** | **string**| Alphanumeric string identifying the service. | [optional] 
 **version** | **int**| Integer identifying a service version. | [optional] 
 **created_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **deleted_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **updated_at** | **DateTime**| Date and time in ISO 8601 format. | [optional] 
 **status_code** | **int**| HTTP status code used to redirect the client. | [optional] 
 **domains** | [**ARRAY[string]**](string.md)| Array of apex domains that should redirect to their WWW subdomain. | [optional] 
 **feature_revision** | **int**| Revision number of the apex redirect feature implementation. Defaults to the most recent revision. | [optional] 

### Return type

[**ApexRedirect**](ApexRedirect.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

