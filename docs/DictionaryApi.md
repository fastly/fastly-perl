# Fastly::DictionaryApi

## Load the API package
```perl
use Fastly::Object::DictionaryApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dictionary**](DictionaryApi.md#create_dictionary) | **POST** /service/{service_id}/version/{version_id}/dictionary | Create an edge dictionary
[**delete_dictionary**](DictionaryApi.md#delete_dictionary) | **DELETE** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Delete an edge dictionary
[**get_dictionary**](DictionaryApi.md#get_dictionary) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Get an edge dictionary
[**list_dictionaries**](DictionaryApi.md#list_dictionaries) | **GET** /service/{service_id}/version/{version_id}/dictionary | List edge dictionaries
[**update_dictionary**](DictionaryApi.md#update_dictionary) | **PUT** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Update an edge dictionary


# **create_dictionary**
> DictionaryResponse create_dictionary(service_id => $service_id, version_id => $version_id, name => $name, write_only => $write_only)

Create an edge dictionary

Create named dictionary for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::DictionaryApi;
my $api_instance = Fastly::DictionaryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
my $write_only = false; # boolean | Determines if items in the dictionary are readable or not.

eval {
    my $result = $api_instance->create_dictionary(service_id => $service_id, version_id => $version_id, name => $name, write_only => $write_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryApi->create_dictionary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | [optional] 
 **write_only** | **boolean**| Determines if items in the dictionary are readable or not. | [optional] [default to false]

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dictionary**
> DeleteAcl200Response delete_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name)

Delete an edge dictionary

Delete named dictionary for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::DictionaryApi;
my $api_instance = Fastly::DictionaryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $dictionary_name = "dictionary_name_example"; # string | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).

eval {
    my $result = $api_instance->delete_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryApi->delete_dictionary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **dictionary_name** | **string**| Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dictionary**
> DictionaryResponse get_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name)

Get an edge dictionary

Retrieve a single dictionary by name for the version and service.

### Example
```perl
use Data::Dumper;
use Fastly::DictionaryApi;
my $api_instance = Fastly::DictionaryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $dictionary_name = "dictionary_name_example"; # string | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).

eval {
    my $result = $api_instance->get_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryApi->get_dictionary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **dictionary_name** | **string**| Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | 

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dictionaries**
> ARRAY[DictionaryResponse] list_dictionaries(service_id => $service_id, version_id => $version_id)

List edge dictionaries

List all dictionaries for the version of the service.

### Example
```perl
use Data::Dumper;
use Fastly::DictionaryApi;
my $api_instance = Fastly::DictionaryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_dictionaries(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryApi->list_dictionaries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[DictionaryResponse]**](DictionaryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dictionary**
> DictionaryResponse update_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name, name => $name, write_only => $write_only)

Update an edge dictionary

Update named dictionary for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::DictionaryApi;
my $api_instance = Fastly::DictionaryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $dictionary_name = "dictionary_name_example"; # string | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
my $name = "name_example"; # string | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
my $write_only = false; # boolean | Determines if items in the dictionary are readable or not.

eval {
    my $result = $api_instance->update_dictionary(service_id => $service_id, version_id => $version_id, dictionary_name => $dictionary_name, name => $name, write_only => $write_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryApi->update_dictionary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **dictionary_name** | **string**| Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | 
 **name** | **string**| Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | [optional] 
 **write_only** | **boolean**| Determines if items in the dictionary are readable or not. | [optional] [default to false]

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

