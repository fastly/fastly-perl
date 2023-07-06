# WebService::Fastly::IamRolesApi

## Load the API package
```perl
use WebService::Fastly::Object::IamRolesApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_role_permissions**](IamRolesApi.md#add_role_permissions) | **POST** /roles/{role_id}/permissions | Add permissions to a role
[**create_a_role**](IamRolesApi.md#create_a_role) | **POST** /roles | Create a role
[**delete_a_role**](IamRolesApi.md#delete_a_role) | **DELETE** /roles/{role_id} | Delete a role
[**get_a_role**](IamRolesApi.md#get_a_role) | **GET** /roles/{role_id} | Get a role
[**list_role_permissions**](IamRolesApi.md#list_role_permissions) | **GET** /roles/{role_id}/permissions | List permissions in a role
[**list_roles**](IamRolesApi.md#list_roles) | **GET** /roles | List roles
[**remove_role_permissions**](IamRolesApi.md#remove_role_permissions) | **DELETE** /roles/{role_id}/permissions | Remove permissions from a role
[**update_a_role**](IamRolesApi.md#update_a_role) | **PATCH** /roles/{role_id} | Update a role


# **add_role_permissions**
> object add_role_permissions(role_id => $role_id, request_body => $request_body)

Add permissions to a role

Add permissions to a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->add_role_permissions(role_id => $role_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->add_role_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_a_role**
> object create_a_role(request_body => $request_body)

Create a role

Create a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_a_role(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->create_a_role: $@\n";
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

# **delete_a_role**
> delete_a_role(role_id => $role_id)

Delete a role

Delete a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.

eval {
    $api_instance->delete_a_role(role_id => $role_id);
};
if ($@) {
    warn "Exception when calling IamRolesApi->delete_a_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_role**
> object get_a_role(role_id => $role_id)

Get a role

Get a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.

eval {
    my $result = $api_instance->get_a_role(role_id => $role_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->get_a_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_role_permissions**
> object list_role_permissions(role_id => $role_id)

List permissions in a role

List all permissions in a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.

eval {
    my $result = $api_instance->list_role_permissions(role_id => $role_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->list_role_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_roles**
> object list_roles(per_page => $per_page, page => $page)

List roles

List all roles.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_roles(per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->list_roles: $@\n";
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

# **remove_role_permissions**
> remove_role_permissions(role_id => $role_id, request_body => $request_body)

Remove permissions from a role

Remove permissions from a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    $api_instance->remove_role_permissions(role_id => $role_id, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling IamRolesApi->remove_role_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_a_role**
> object update_a_role(role_id => $role_id, request_body => $request_body)

Update a role

Update a role.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamRolesApi;
my $api_instance = WebService::Fastly::IamRolesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $role_id = "role_id_example"; # string | Alphanumeric string identifying the role.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_a_role(role_id => $role_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->update_a_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

