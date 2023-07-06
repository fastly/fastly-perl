# WebService::Fastly::IamServiceGroupsApi

## Load the API package
```perl
use WebService::Fastly::Object::IamServiceGroupsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_service_group_services**](IamServiceGroupsApi.md#add_service_group_services) | **POST** /service-groups/{service_group_id}/services | Add services in a service group
[**create_a_service_group**](IamServiceGroupsApi.md#create_a_service_group) | **POST** /service-groups | Create a service group
[**delete_a_service_group**](IamServiceGroupsApi.md#delete_a_service_group) | **DELETE** /service-groups/{service_group_id} | Delete a service group
[**get_a_service_group**](IamServiceGroupsApi.md#get_a_service_group) | **GET** /service-groups/{service_group_id} | Get a service group
[**list_service_group_services**](IamServiceGroupsApi.md#list_service_group_services) | **GET** /service-groups/{service_group_id}/services | List services to a service group
[**list_service_groups**](IamServiceGroupsApi.md#list_service_groups) | **GET** /service-groups | List service groups
[**remove_service_group_services**](IamServiceGroupsApi.md#remove_service_group_services) | **DELETE** /service-groups/{service_group_id}/services | Remove services from a service group
[**update_a_service_group**](IamServiceGroupsApi.md#update_a_service_group) | **PATCH** /service-groups/{service_group_id} | Update a service group


# **add_service_group_services**
> object add_service_group_services(service_group_id => $service_group_id, request_body => $request_body)

Add services in a service group

Add services in a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->add_service_group_services(service_group_id => $service_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->add_service_group_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_a_service_group**
> object create_a_service_group(request_body => $request_body)

Create a service group

Create a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_a_service_group(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->create_a_service_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_a_service_group**
> delete_a_service_group(service_group_id => $service_group_id)

Delete a service group

Delete a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.

eval {
    $api_instance->delete_a_service_group(service_group_id => $service_group_id);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->delete_a_service_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_service_group**
> object get_a_service_group(service_group_id => $service_group_id)

Get a service group

Get a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.

eval {
    my $result = $api_instance->get_a_service_group(service_group_id => $service_group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->get_a_service_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_group_services**
> object list_service_group_services(service_group_id => $service_group_id, per_page => $per_page, page => $page)

List services to a service group

List services to a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.
my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_service_group_services(service_group_id => $service_group_id, per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->list_service_group_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 
 **per_page** | **int**| Number of records per page. | [optional] [default to 20]
 **page** | **int**| Current page. | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_groups**
> object list_service_groups(per_page => $per_page, page => $page)

List service groups

List all service groups.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_service_groups(per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->list_service_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **int**| Number of records per page. | [optional] [default to 20]
 **page** | **int**| Current page. | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_service_group_services**
> remove_service_group_services(service_group_id => $service_group_id, request_body => $request_body)

Remove services from a service group

Remove services from a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    $api_instance->remove_service_group_services(service_group_id => $service_group_id, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->remove_service_group_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_a_service_group**
> object update_a_service_group(service_group_id => $service_group_id, request_body => $request_body)

Update a service group

Update a service group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamServiceGroupsApi;
my $api_instance = WebService::Fastly::IamServiceGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_group_id = "service_group_id_example"; # string | Alphanumeric string identifying the service group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_a_service_group(service_group_id => $service_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamServiceGroupsApi->update_a_service_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_group_id** | **string**| Alphanumeric string identifying the service group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

