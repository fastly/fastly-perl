# WebService::Fastly::DictionaryInfoApi

## Load the API package
```perl
use WebService::Fastly::Object::DictionaryInfoApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dictionary_info**](DictionaryInfoApi.md#get_dictionary_info) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_id}/info | Get edge dictionary metadata


# **get_dictionary_info**
> DictionaryInfoResponse get_dictionary_info(service_id => $service_id, version_id => $version_id, dictionary_id => $dictionary_id)

Get edge dictionary metadata

Retrieve metadata for a single dictionary by ID for a version and service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryInfoApi;
my $api_instance = WebService::Fastly::DictionaryInfoApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.

eval {
    my $result = $api_instance->get_dictionary_info(service_id => $service_id, version_id => $version_id, dictionary_id => $dictionary_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryInfoApi->get_dictionary_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 

### Return type

[**DictionaryInfoResponse**](DictionaryInfoResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

