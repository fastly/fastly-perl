# WebService::Fastly::IamUserGroupsApi

## Load the API package
```perl
use WebService::Fastly::Object::IamUserGroupsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**add_user_group_members**](IamUserGroupsApi.md#add_user_group_members) | **POST** /user-groups/{user_group_id}/members | Add members to a user group
[**add_user_group_roles**](IamUserGroupsApi.md#add_user_group_roles) | **POST** /user-groups/{user_group_id}/roles | Add roles to a user group
[**add_user_group_service_groups**](IamUserGroupsApi.md#add_user_group_service_groups) | **POST** /user-groups/{user_group_id}/service-groups | Add service groups to a user group
[**create_a_user_group**](IamUserGroupsApi.md#create_a_user_group) | **POST** /user-groups | Create a user group
[**delete_a_user_group**](IamUserGroupsApi.md#delete_a_user_group) | **DELETE** /user-groups/{user_group_id} | Delete a user group
[**get_a_user_group**](IamUserGroupsApi.md#get_a_user_group) | **GET** /user-groups/{user_group_id} | Get a user group
[**list_user_group_members**](IamUserGroupsApi.md#list_user_group_members) | **GET** /user-groups/{user_group_id}/members | List members of a user group
[**list_user_group_roles**](IamUserGroupsApi.md#list_user_group_roles) | **GET** /user-groups/{user_group_id}/roles | List roles in a user group
[**list_user_group_service_groups**](IamUserGroupsApi.md#list_user_group_service_groups) | **GET** /user-groups/{user_group_id}/service-groups | List service groups in a user group
[**list_user_groups**](IamUserGroupsApi.md#list_user_groups) | **GET** /user-groups | List user groups
[**remove_user_group_members**](IamUserGroupsApi.md#remove_user_group_members) | **DELETE** /user-groups/{user_group_id}/members | Remove members of a user group
[**remove_user_group_roles**](IamUserGroupsApi.md#remove_user_group_roles) | **DELETE** /user-groups/{user_group_id}/roles | Remove roles from a user group
[**remove_user_group_service_groups**](IamUserGroupsApi.md#remove_user_group_service_groups) | **DELETE** /user-groups/{user_group_id}/service-groups | Remove service groups from a user group
[**update_a_user_group**](IamUserGroupsApi.md#update_a_user_group) | **PATCH** /user-groups/{user_group_id} | Update a user group


# **add_user_group_members**
> object add_user_group_members(user_group_id => $user_group_id, request_body => $request_body)

Add members to a user group

Add members to a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->add_user_group_members(user_group_id => $user_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->add_user_group_members: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_user_group_roles**
> object add_user_group_roles(user_group_id => $user_group_id, request_body => $request_body)

Add roles to a user group

Add roles to a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->add_user_group_roles(user_group_id => $user_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->add_user_group_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_user_group_service_groups**
> object add_user_group_service_groups(user_group_id => $user_group_id, request_body => $request_body)

Add service groups to a user group

Add service groups to a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->add_user_group_service_groups(user_group_id => $user_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->add_user_group_service_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_a_user_group**
> object create_a_user_group(request_body => $request_body)

Create a user group

Create a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_a_user_group(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->create_a_user_group: $@\n";
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

# **delete_a_user_group**
> delete_a_user_group(user_group_id => $user_group_id)

Delete a user group

Delete a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.

eval {
    $api_instance->delete_a_user_group(user_group_id => $user_group_id);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->delete_a_user_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_user_group**
> object get_a_user_group(user_group_id => $user_group_id)

Get a user group

Get a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.

eval {
    my $result = $api_instance->get_a_user_group(user_group_id => $user_group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->get_a_user_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_user_group_members**
> object list_user_group_members(user_group_id => $user_group_id, per_page => $per_page, page => $page)

List members of a user group

List members of a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_user_group_members(user_group_id => $user_group_id, per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->list_user_group_members: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
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

# **list_user_group_roles**
> object list_user_group_roles(user_group_id => $user_group_id, per_page => $per_page, page => $page)

List roles in a user group

List roles in a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_user_group_roles(user_group_id => $user_group_id, per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->list_user_group_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
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

# **list_user_group_service_groups**
> object list_user_group_service_groups(user_group_id => $user_group_id, per_page => $per_page, page => $page)

List service groups in a user group

List service groups in a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_user_group_service_groups(user_group_id => $user_group_id, per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->list_user_group_service_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
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

# **list_user_groups**
> object list_user_groups(per_page => $per_page, page => $page)

List user groups

List all user groups.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $per_page = 20; # int | Number of records per page.
my $page = 1; # int | Current page.

eval {
    my $result = $api_instance->list_user_groups(per_page => $per_page, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->list_user_groups: $@\n";
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

# **remove_user_group_members**
> remove_user_group_members(user_group_id => $user_group_id, request_body => $request_body)

Remove members of a user group

Remove members of a user group

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    $api_instance->remove_user_group_members(user_group_id => $user_group_id, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->remove_user_group_members: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_user_group_roles**
> remove_user_group_roles(user_group_id => $user_group_id, request_body => $request_body)

Remove roles from a user group

Remove roles from a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    $api_instance->remove_user_group_roles(user_group_id => $user_group_id, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->remove_user_group_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_user_group_service_groups**
> remove_user_group_service_groups(user_group_id => $user_group_id, request_body => $request_body)

Remove service groups from a user group

Remove service groups from a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    $api_instance->remove_user_group_service_groups(user_group_id => $user_group_id, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->remove_user_group_service_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_a_user_group**
> object update_a_user_group(user_group_id => $user_group_id, request_body => $request_body)

Update a user group

Update a user group.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamUserGroupsApi;
my $api_instance = WebService::Fastly::IamUserGroupsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_group_id = "user_group_id_example"; # string | Alphanumeric string identifying the user group.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_a_user_group(user_group_id => $user_group_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamUserGroupsApi->update_a_user_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **string**| Alphanumeric string identifying the user group. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

