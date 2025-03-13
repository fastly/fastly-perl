# WebService::Fastly::HeaderApi

## Load the API package
```perl
use WebService::Fastly::Object::HeaderApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_header_object**](HeaderApi.md#create_header_object) | **POST** /service/{service_id}/version/{version_id}/header | Create a Header object
[**delete_header_object**](HeaderApi.md#delete_header_object) | **DELETE** /service/{service_id}/version/{version_id}/header/{header_name} | Delete a Header object
[**get_header_object**](HeaderApi.md#get_header_object) | **GET** /service/{service_id}/version/{version_id}/header/{header_name} | Get a Header object
[**list_header_objects**](HeaderApi.md#list_header_objects) | **GET** /service/{service_id}/version/{version_id}/header | List Header objects
[**update_header_object**](HeaderApi.md#update_header_object) | **PUT** /service/{service_id}/version/{version_id}/header/{header_name} | Update a Header object


# **create_header_object**
> HeaderResponse create_header_object(service_id => $service_id, version_id => $version_id, action => $action, cache_condition => $cache_condition, dst => $dst, name => $name, regex => $regex, request_condition => $request_condition, response_condition => $response_condition, src => $src, substitution => $substitution, type => $type, ignore_if_set => $ignore_if_set, priority => $priority)

Create a Header object

Creates a new Header object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HeaderApi;
my $api_instance = WebService::Fastly::HeaderApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $action = "action_example"; # string | Accepts a string value.
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $dst = "dst_example"; # string | Header to set.
my $name = "name_example"; # string | A handle to refer to this Header object.
my $regex = "regex_example"; # string | Regular expression to use. Only applies to `regex` and `regex_repeat` actions.
my $request_condition = "request_condition_example"; # string | Condition which, if met, will select this configuration during a request. Optional.
my $response_condition = "response_condition_example"; # string | Optional name of a response condition to apply.
my $src = "src_example"; # string | Variable to be used as a source for the header content. Does not apply to `delete` action.
my $substitution = "substitution_example"; # string | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions.
my $type = "type_example"; # string | Accepts a string value.
my $ignore_if_set = "ignore_if_set_example"; # string | Don't add the header if it is added already. Only applies to 'set' action. Numerical value (\\\"0\\\" = false, \\\"1\\\" = true)
my $priority = '100'; # string | Priority determines execution order. Lower numbers execute first.

eval {
    my $result = $api_instance->create_header_object(service_id => $service_id, version_id => $version_id, action => $action, cache_condition => $cache_condition, dst => $dst, name => $name, regex => $regex, request_condition => $request_condition, response_condition => $response_condition, src => $src, substitution => $substitution, type => $type, ignore_if_set => $ignore_if_set, priority => $priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HeaderApi->create_header_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **action** | **string**| Accepts a string value. | [optional] 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **dst** | **string**| Header to set. | [optional] 
 **name** | **string**| A handle to refer to this Header object. | [optional] 
 **regex** | **string**| Regular expression to use. Only applies to `regex` and `regex_repeat` actions. | [optional] 
 **request_condition** | **string**| Condition which, if met, will select this configuration during a request. Optional. | [optional] 
 **response_condition** | **string**| Optional name of a response condition to apply. | [optional] 
 **src** | **string**| Variable to be used as a source for the header content. Does not apply to `delete` action. | [optional] 
 **substitution** | **string**| Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions. | [optional] 
 **type** | **string**| Accepts a string value. | [optional] 
 **ignore_if_set** | **string**| Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true) | [optional] 
 **priority** | **string**| Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]

### Return type

[**HeaderResponse**](HeaderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_header_object**
> InlineResponse200 delete_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name)

Delete a Header object

Deletes a Header object by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HeaderApi;
my $api_instance = WebService::Fastly::HeaderApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $header_name = "header_name_example"; # string | A handle to refer to this Header object.

eval {
    my $result = $api_instance->delete_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HeaderApi->delete_header_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **header_name** | **string**| A handle to refer to this Header object. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_header_object**
> HeaderResponse get_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name)

Get a Header object

Retrieves a Header object by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HeaderApi;
my $api_instance = WebService::Fastly::HeaderApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $header_name = "header_name_example"; # string | A handle to refer to this Header object.

eval {
    my $result = $api_instance->get_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HeaderApi->get_header_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **header_name** | **string**| A handle to refer to this Header object. | 

### Return type

[**HeaderResponse**](HeaderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_header_objects**
> ARRAY[HeaderResponse] list_header_objects(service_id => $service_id, version_id => $version_id)

List Header objects

Retrieves all Header objects for a particular Version of a Service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HeaderApi;
my $api_instance = WebService::Fastly::HeaderApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_header_objects(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HeaderApi->list_header_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[HeaderResponse]**](HeaderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_header_object**
> HeaderResponse update_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name, action => $action, cache_condition => $cache_condition, dst => $dst, name => $name, regex => $regex, request_condition => $request_condition, response_condition => $response_condition, src => $src, substitution => $substitution, type => $type, ignore_if_set => $ignore_if_set, priority => $priority)

Update a Header object

Modifies an existing Header object by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HeaderApi;
my $api_instance = WebService::Fastly::HeaderApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $header_name = "header_name_example"; # string | A handle to refer to this Header object.
my $action = "action_example"; # string | Accepts a string value.
my $cache_condition = "cache_condition_example"; # string | Name of the cache condition controlling when this configuration applies.
my $dst = "dst_example"; # string | Header to set.
my $name = "name_example"; # string | A handle to refer to this Header object.
my $regex = "regex_example"; # string | Regular expression to use. Only applies to `regex` and `regex_repeat` actions.
my $request_condition = "request_condition_example"; # string | Condition which, if met, will select this configuration during a request. Optional.
my $response_condition = "response_condition_example"; # string | Optional name of a response condition to apply.
my $src = "src_example"; # string | Variable to be used as a source for the header content. Does not apply to `delete` action.
my $substitution = "substitution_example"; # string | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions.
my $type = "type_example"; # string | Accepts a string value.
my $ignore_if_set = "ignore_if_set_example"; # string | Don't add the header if it is added already. Only applies to 'set' action. Numerical value (\\\"0\\\" = false, \\\"1\\\" = true)
my $priority = '100'; # string | Priority determines execution order. Lower numbers execute first.

eval {
    my $result = $api_instance->update_header_object(service_id => $service_id, version_id => $version_id, header_name => $header_name, action => $action, cache_condition => $cache_condition, dst => $dst, name => $name, regex => $regex, request_condition => $request_condition, response_condition => $response_condition, src => $src, substitution => $substitution, type => $type, ignore_if_set => $ignore_if_set, priority => $priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HeaderApi->update_header_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **header_name** | **string**| A handle to refer to this Header object. | 
 **action** | **string**| Accepts a string value. | [optional] 
 **cache_condition** | **string**| Name of the cache condition controlling when this configuration applies. | [optional] 
 **dst** | **string**| Header to set. | [optional] 
 **name** | **string**| A handle to refer to this Header object. | [optional] 
 **regex** | **string**| Regular expression to use. Only applies to `regex` and `regex_repeat` actions. | [optional] 
 **request_condition** | **string**| Condition which, if met, will select this configuration during a request. Optional. | [optional] 
 **response_condition** | **string**| Optional name of a response condition to apply. | [optional] 
 **src** | **string**| Variable to be used as a source for the header content. Does not apply to `delete` action. | [optional] 
 **substitution** | **string**| Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions. | [optional] 
 **type** | **string**| Accepts a string value. | [optional] 
 **ignore_if_set** | **string**| Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true) | [optional] 
 **priority** | **string**| Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]

### Return type

[**HeaderResponse**](HeaderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

