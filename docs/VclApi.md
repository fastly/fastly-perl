# WebService::Fastly::VclApi

## Load the API package
```perl
use WebService::Fastly::Object::VclApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_vcl**](VclApi.md#create_custom_vcl) | **POST** /service/{service_id}/version/{version_id}/vcl | Create a custom VCL file
[**delete_custom_vcl**](VclApi.md#delete_custom_vcl) | **DELETE** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Delete a custom VCL file
[**get_custom_vcl**](VclApi.md#get_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Get a custom VCL file
[**get_custom_vcl_boilerplate**](VclApi.md#get_custom_vcl_boilerplate) | **GET** /service/{service_id}/version/{version_id}/boilerplate | Get boilerplate VCL
[**get_custom_vcl_generated**](VclApi.md#get_custom_vcl_generated) | **GET** /service/{service_id}/version/{version_id}/generated_vcl | Get the generated VCL for a service
[**get_custom_vcl_generated_highlighted**](VclApi.md#get_custom_vcl_generated_highlighted) | **GET** /service/{service_id}/version/{version_id}/generated_vcl/content | Get the generated VCL with syntax highlighting
[**get_custom_vcl_highlighted**](VclApi.md#get_custom_vcl_highlighted) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/content | Get a custom VCL file with syntax highlighting
[**get_custom_vcl_raw**](VclApi.md#get_custom_vcl_raw) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/download | Download a custom VCL file
[**lint_vcl_default**](VclApi.md#lint_vcl_default) | **POST** /vcl_lint | Lint (validate) VCL using a default set of flags.
[**lint_vcl_for_service**](VclApi.md#lint_vcl_for_service) | **POST** /service/{service_id}/lint | Lint (validate) VCL using flags set for the service.
[**list_custom_vcl**](VclApi.md#list_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl | List custom VCL files
[**set_custom_vcl_main**](VclApi.md#set_custom_vcl_main) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/main | Set a custom VCL file as main
[**update_custom_vcl**](VclApi.md#update_custom_vcl) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Update a custom VCL file


# **create_custom_vcl**
> VclResponse create_custom_vcl(service_id => $service_id, version_id => $version_id, content => $content, main => $main, name => $name)

Create a custom VCL file

Upload a VCL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $content = "content_example"; # string | The VCL code to be included.
my $main = null; # boolean | Set to `true` when this is the main VCL, otherwise `false`.
my $name = "name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->create_custom_vcl(service_id => $service_id, version_id => $version_id, content => $content, main => $main, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->create_custom_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **content** | **string**| The VCL code to be included. | [optional] 
 **main** | **boolean**| Set to `true` when this is the main VCL, otherwise `false`. | [optional] 
 **name** | **string**| The name of this VCL. | [optional] 

### Return type

[**VclResponse**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_custom_vcl**
> InlineResponse200 delete_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name)

Delete a custom VCL file

Delete the uploaded VCL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->delete_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->delete_custom_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl**
> VclResponse get_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name, no_content => $no_content)

Get a custom VCL file

Get the uploaded VCL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.
my $no_content = '0'; # string | Omit VCL content.

eval {
    my $result = $api_instance->get_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name, no_content => $no_content);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 
 **no_content** | **string**| Omit VCL content. | [optional] [default to &#39;0&#39;]

### Return type

[**VclResponse**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl_boilerplate**
> string get_custom_vcl_boilerplate(service_id => $service_id, version_id => $version_id)

Get boilerplate VCL

Return boilerplate VCL with the service's TTL from the [settings](/reference/api/vcl-services/settings/).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_custom_vcl_boilerplate(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl_boilerplate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl_generated**
> VclResponse get_custom_vcl_generated(service_id => $service_id, version_id => $version_id)

Get the generated VCL for a service

Display the generated VCL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_custom_vcl_generated(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl_generated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**VclResponse**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl_generated_highlighted**
> VclSyntaxHighlightingResponse get_custom_vcl_generated_highlighted(service_id => $service_id, version_id => $version_id)

Get the generated VCL with syntax highlighting

Display the content of generated VCL with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_custom_vcl_generated_highlighted(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl_generated_highlighted: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**VclSyntaxHighlightingResponse**](VclSyntaxHighlightingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl_highlighted**
> VclSyntaxHighlightingResponse get_custom_vcl_highlighted(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name)

Get a custom VCL file with syntax highlighting

Get the uploaded VCL for a particular service and version with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->get_custom_vcl_highlighted(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl_highlighted: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 

### Return type

[**VclSyntaxHighlightingResponse**](VclSyntaxHighlightingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_vcl_raw**
> string get_custom_vcl_raw(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name)

Download a custom VCL file

Download the specified VCL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->get_custom_vcl_raw(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->get_custom_vcl_raw: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lint_vcl_default**
> ValidatorResult lint_vcl_default(inline_object1 => $inline_object1)

Lint (validate) VCL using a default set of flags.

This endpoint validates the submitted VCL against a default set of enabled flags. Consider using the `/service/{service_id}/lint` operation to validate VCL in the context of a specific service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $inline_object1 = WebService::Fastly::Object::InlineObject1->new(); # InlineObject1 | 

eval {
    my $result = $api_instance->lint_vcl_default(inline_object1 => $inline_object1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->lint_vcl_default: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | 

### Return type

[**ValidatorResult**](ValidatorResult.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lint_vcl_for_service**
> ValidatorResult lint_vcl_for_service(service_id => $service_id, inline_object => $inline_object)

Lint (validate) VCL using flags set for the service.

Services may have flags set by a Fastly employee or by the purchase of products as addons to the service, which modify the way VCL is interpreted by that service.  This endpoint validates the submitted VCL in the context of the specified service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $inline_object = WebService::Fastly::Object::InlineObject->new(); # InlineObject | 

eval {
    my $result = $api_instance->lint_vcl_for_service(service_id => $service_id, inline_object => $inline_object);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->lint_vcl_for_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**ValidatorResult**](ValidatorResult.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_custom_vcl**
> ARRAY[VclResponse] list_custom_vcl(service_id => $service_id, version_id => $version_id)

List custom VCL files

List the uploaded VCLs for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_custom_vcl(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->list_custom_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[VclResponse]**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_custom_vcl_main**
> VclResponse set_custom_vcl_main(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name)

Set a custom VCL file as main

Set the specified VCL as the main.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->set_custom_vcl_main(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->set_custom_vcl_main: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 

### Return type

[**VclResponse**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_custom_vcl**
> VclResponse update_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name, content => $content, main => $main, name => $name)

Update a custom VCL file

Update the uploaded VCL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::VclApi;
my $api_instance = WebService::Fastly::VclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $vcl_name = "vcl_name_example"; # string | The name of this VCL.
my $content = "content_example"; # string | The VCL code to be included.
my $main = null; # boolean | Set to `true` when this is the main VCL, otherwise `false`.
my $name = "name_example"; # string | The name of this VCL.

eval {
    my $result = $api_instance->update_custom_vcl(service_id => $service_id, version_id => $version_id, vcl_name => $vcl_name, content => $content, main => $main, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclApi->update_custom_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **vcl_name** | **string**| The name of this VCL. | 
 **content** | **string**| The VCL code to be included. | [optional] 
 **main** | **boolean**| Set to `true` when this is the main VCL, otherwise `false`. | [optional] 
 **name** | **string**| The name of this VCL. | [optional] 

### Return type

[**VclResponse**](VclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

