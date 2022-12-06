# WebService::Fastly::DocsApi

## Load the API package
```perl
use WebService::Fastly::Object::DocsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_docs**](DocsApi.md#get_docs) | **GET** /docs | Get Fastly API docs as structured data
[**get_docs_section**](DocsApi.md#get_docs_section) | **GET** /docs/section/{section} | Get API docs matching a section filter
[**get_docs_subject**](DocsApi.md#get_docs_subject) | **GET** /docs/subject/{subject} | Get API docs for a single subject


# **get_docs**
> ARRAY[object] get_docs()

Get Fastly API docs as structured data

Gets all documentation associated with the Fastly API.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DocsApi;
my $api_instance = WebService::Fastly::DocsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_docs();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DocsApi->get_docs: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[object]**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_docs_section**
> get_docs_section(section => $section, invert => $invert)

Get API docs matching a section filter

Gets all documentation associated with a given Categorical Section where `section` is a regular_expression. Passing `invert=true` will force a return of everything that does not match the given regular expression.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DocsApi;
my $api_instance = WebService::Fastly::DocsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $section = backend; # string | The section to search for. Supports regular expressions.
my $invert = "invert_example"; # string | Get everything that does not match section.

eval {
    $api_instance->get_docs_section(section => $section, invert => $invert);
};
if ($@) {
    warn "Exception when calling DocsApi->get_docs_section: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **string**| The section to search for. Supports regular expressions. | 
 **invert** | **string**| Get everything that does not match section. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_docs_subject**
> get_docs_subject(subject => $subject)

Get API docs for a single subject

Gets all documentation relating to a given 'Subject'.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DocsApi;
my $api_instance = WebService::Fastly::DocsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $subject = backend; # string | The subject to search for. Supports regular expressions.

eval {
    $api_instance->get_docs_subject(subject => $subject);
};
if ($@) {
    warn "Exception when calling DocsApi->get_docs_subject: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject** | **string**| The subject to search for. Supports regular expressions. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

