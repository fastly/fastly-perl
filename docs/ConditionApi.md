# WebService::Fastly::ConditionApi

## Load the API package
```perl
use WebService::Fastly::Object::ConditionApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_condition**](ConditionApi.md#create_condition) | **POST** /service/{service_id}/version/{version_id}/condition | Create a condition
[**delete_condition**](ConditionApi.md#delete_condition) | **DELETE** /service/{service_id}/version/{version_id}/condition/{condition_name} | Delete a condition
[**get_condition**](ConditionApi.md#get_condition) | **GET** /service/{service_id}/version/{version_id}/condition/{condition_name} | Describe a condition
[**list_conditions**](ConditionApi.md#list_conditions) | **GET** /service/{service_id}/version/{version_id}/condition | List conditions
[**update_condition**](ConditionApi.md#update_condition) | **PUT** /service/{service_id}/version/{version_id}/condition/{condition_name} | Update a condition


# **create_condition**
> ConditionResponse create_condition(service_id => $service_id, version_id => $version_id, comment => $comment, name => $name, priority => $priority, statement => $statement, service_id => $service_id, version => $version, type => $type)

Create a condition

Creates a new condition.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConditionApi;
my $api_instance = WebService::Fastly::ConditionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | Name of the condition. Required.
my $priority = '100'; # string | A numeric string. Priority determines execution order. Lower numbers execute first.
my $statement = "statement_example"; # string | A conditional expression in VCL used to determine if the condition is met.
my $service_id = "service_id_example"; # string | 
my $version = "version_example"; # string | A numeric string that represents the service version.
my $type = "type_example"; # string | Type of the condition. Required.

eval {
    my $result = $api_instance->create_condition(service_id => $service_id, version_id => $version_id, comment => $comment, name => $name, priority => $priority, statement => $statement, service_id => $service_id, version => $version, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConditionApi->create_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| Name of the condition. Required. | [optional] 
 **priority** | **string**| A numeric string. Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
 **statement** | **string**| A conditional expression in VCL used to determine if the condition is met. | [optional] 
 **service_id** | **string**|  | [optional] 
 **version** | **string**| A numeric string that represents the service version. | [optional] 
 **type** | **string**| Type of the condition. Required. | [optional] 

### Return type

[**ConditionResponse**](ConditionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_condition**
> InlineResponse200 delete_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name)

Delete a condition

Deletes the specified condition.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConditionApi;
my $api_instance = WebService::Fastly::ConditionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $condition_name = "condition_name_example"; # string | Name of the condition. Required.

eval {
    my $result = $api_instance->delete_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConditionApi->delete_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **condition_name** | **string**| Name of the condition. Required. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_condition**
> ConditionResponse get_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name)

Describe a condition

Gets the specified condition.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConditionApi;
my $api_instance = WebService::Fastly::ConditionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $condition_name = "condition_name_example"; # string | Name of the condition. Required.

eval {
    my $result = $api_instance->get_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConditionApi->get_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **condition_name** | **string**| Name of the condition. Required. | 

### Return type

[**ConditionResponse**](ConditionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_conditions**
> ARRAY[ConditionResponse] list_conditions(service_id => $service_id, version_id => $version_id)

List conditions

Gets all conditions for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConditionApi;
my $api_instance = WebService::Fastly::ConditionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_conditions(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConditionApi->list_conditions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[ConditionResponse]**](ConditionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_condition**
> ConditionResponse update_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name, comment => $comment, name => $name, priority => $priority, statement => $statement, service_id => $service_id, version => $version, type => $type)

Update a condition

Updates the specified condition.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ConditionApi;
my $api_instance = WebService::Fastly::ConditionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $condition_name = "condition_name_example"; # string | Name of the condition. Required.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | Name of the condition. Required.
my $priority = '100'; # string | A numeric string. Priority determines execution order. Lower numbers execute first.
my $statement = "statement_example"; # string | A conditional expression in VCL used to determine if the condition is met.
my $service_id = "service_id_example"; # string | 
my $version = "version_example"; # string | A numeric string that represents the service version.
my $type = "type_example"; # string | Type of the condition. Required.

eval {
    my $result = $api_instance->update_condition(service_id => $service_id, version_id => $version_id, condition_name => $condition_name, comment => $comment, name => $name, priority => $priority, statement => $statement, service_id => $service_id, version => $version, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConditionApi->update_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **condition_name** | **string**| Name of the condition. Required. | 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| Name of the condition. Required. | [optional] 
 **priority** | **string**| A numeric string. Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
 **statement** | **string**| A conditional expression in VCL used to determine if the condition is met. | [optional] 
 **service_id** | **string**|  | [optional] 
 **version** | **string**| A numeric string that represents the service version. | [optional] 
 **type** | **string**| Type of the condition. Required. | [optional] 

### Return type

[**ConditionResponse**](ConditionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

