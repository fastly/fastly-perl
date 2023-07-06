# WebService::Fastly::SudoApi

## Load the API package
```perl
use WebService::Fastly::Object::SudoApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_sudo_access**](SudoApi.md#request_sudo_access) | **POST** /sudo | Request Sudo access


# **request_sudo_access**
> SudoResponse request_sudo_access(sudo_request => $sudo_request)

Request Sudo access

Re-authenticate to allow the provided user to obtain sudo access.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SudoApi;
my $api_instance = WebService::Fastly::SudoApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $sudo_request = WebService::Fastly::Object::SudoRequest->new(); # SudoRequest | 

eval {
    my $result = $api_instance->request_sudo_access(sudo_request => $sudo_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SudoApi->request_sudo_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sudo_request** | [**SudoRequest**](SudoRequest.md)|  | [optional] 

### Return type

[**SudoResponse**](SudoResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

