# WebService::Fastly::SnippetApi

## Load the API package
```perl
use WebService::Fastly::Object::SnippetApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_snippet**](SnippetApi.md#create_snippet) | **POST** /service/{service_id}/version/{version_id}/snippet | Create a snippet
[**delete_snippet**](SnippetApi.md#delete_snippet) | **DELETE** /service/{service_id}/version/{version_id}/snippet/{snippet_name} | Delete a snippet
[**get_snippet**](SnippetApi.md#get_snippet) | **GET** /service/{service_id}/version/{version_id}/snippet/{snippet_name} | Get a versioned snippet
[**get_snippet_dynamic**](SnippetApi.md#get_snippet_dynamic) | **GET** /service/{service_id}/snippet/{snippet_id} | Get a dynamic snippet
[**list_snippets**](SnippetApi.md#list_snippets) | **GET** /service/{service_id}/version/{version_id}/snippet | List snippets
[**update_snippet**](SnippetApi.md#update_snippet) | **PUT** /service/{service_id}/version/{version_id}/snippet/{snippet_name} | Update a versioned snippet
[**update_snippet_dynamic**](SnippetApi.md#update_snippet_dynamic) | **PUT** /service/{service_id}/snippet/{snippet_id} | Update a dynamic snippet


# **create_snippet**
> SnippetResponsePost create_snippet(service_id => $service_id, version_id => $version_id, name => $name, type => $type, content => $content, priority => $priority, dynamic => $dynamic)

Create a snippet

Create a snippet for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name for the snippet.
my $type = "type_example"; # string | The location in generated VCL where the snippet should be placed.
my $content = "content_example"; # string | The VCL code that specifies exactly what the snippet does.
my $priority = '100'; # string | Priority determines execution order. Lower numbers execute first.
my $dynamic = "dynamic_example"; # string | Sets the snippet version.

eval {
    my $result = $api_instance->create_snippet(service_id => $service_id, version_id => $version_id, name => $name, type => $type, content => $content, priority => $priority, dynamic => $dynamic);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->create_snippet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name for the snippet. | [optional] 
 **type** | **string**| The location in generated VCL where the snippet should be placed. | [optional] 
 **content** | **string**| The VCL code that specifies exactly what the snippet does. | [optional] 
 **priority** | **string**| Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
 **dynamic** | **string**| Sets the snippet version. | [optional] 

### Return type

[**SnippetResponsePost**](SnippetResponsePost.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_snippet**
> InlineResponse200 delete_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name)

Delete a snippet

Delete a specific snippet for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $snippet_name = "snippet_name_example"; # string | The name for the snippet.

eval {
    my $result = $api_instance->delete_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->delete_snippet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **snippet_name** | **string**| The name for the snippet. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_snippet**
> SnippetResponse get_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name)

Get a versioned snippet

Get a single snippet for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $snippet_name = "snippet_name_example"; # string | The name for the snippet.

eval {
    my $result = $api_instance->get_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->get_snippet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **snippet_name** | **string**| The name for the snippet. | 

### Return type

[**SnippetResponse**](SnippetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_snippet_dynamic**
> SnippetResponse get_snippet_dynamic(service_id => $service_id, snippet_id => $snippet_id)

Get a dynamic snippet

Get a single dynamic snippet for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $snippet_id = "snippet_id_example"; # string | Alphanumeric string identifying a VCL Snippet.

eval {
    my $result = $api_instance->get_snippet_dynamic(service_id => $service_id, snippet_id => $snippet_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->get_snippet_dynamic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **snippet_id** | **string**| Alphanumeric string identifying a VCL Snippet. | 

### Return type

[**SnippetResponse**](SnippetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_snippets**
> ARRAY[SnippetResponse] list_snippets(service_id => $service_id, version_id => $version_id)

List snippets

List all snippets for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_snippets(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->list_snippets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[SnippetResponse]**](SnippetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_snippet**
> SnippetResponse update_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name)

Update a versioned snippet

Update a specific snippet for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $snippet_name = "snippet_name_example"; # string | The name for the snippet.

eval {
    my $result = $api_instance->update_snippet(service_id => $service_id, version_id => $version_id, snippet_name => $snippet_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->update_snippet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **snippet_name** | **string**| The name for the snippet. | 

### Return type

[**SnippetResponse**](SnippetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_snippet_dynamic**
> SnippetResponse update_snippet_dynamic(service_id => $service_id, snippet_id => $snippet_id, name => $name, type => $type, content => $content, priority => $priority, dynamic => $dynamic)

Update a dynamic snippet

Update a dynamic snippet for a particular service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SnippetApi;
my $api_instance = WebService::Fastly::SnippetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $snippet_id = "snippet_id_example"; # string | Alphanumeric string identifying a VCL Snippet.
my $name = "name_example"; # string | The name for the snippet.
my $type = "type_example"; # string | The location in generated VCL where the snippet should be placed.
my $content = "content_example"; # string | The VCL code that specifies exactly what the snippet does.
my $priority = '100'; # string | Priority determines execution order. Lower numbers execute first.
my $dynamic = "dynamic_example"; # string | Sets the snippet version.

eval {
    my $result = $api_instance->update_snippet_dynamic(service_id => $service_id, snippet_id => $snippet_id, name => $name, type => $type, content => $content, priority => $priority, dynamic => $dynamic);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SnippetApi->update_snippet_dynamic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **snippet_id** | **string**| Alphanumeric string identifying a VCL Snippet. | 
 **name** | **string**| The name for the snippet. | [optional] 
 **type** | **string**| The location in generated VCL where the snippet should be placed. | [optional] 
 **content** | **string**| The VCL code that specifies exactly what the snippet does. | [optional] 
 **priority** | **string**| Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
 **dynamic** | **string**| Sets the snippet version. | [optional] 

### Return type

[**SnippetResponse**](SnippetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

