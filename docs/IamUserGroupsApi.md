# Fastly::IamUserGroupsApi

## Load the API package
```perl
use Fastly::Object::IamUserGroupsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_a_user_group**](IamUserGroupsApi.md#delete_a_user_group) | **DELETE** /user-groups/{user_group_id} | Delete a user group
[**get_a_user_group**](IamUserGroupsApi.md#get_a_user_group) | **GET** /user-groups/{user_group_id} | Get a user group
[**list_user_group_members**](IamUserGroupsApi.md#list_user_group_members) | **GET** /user-groups/{user_group_id}/members | List members of a user group
[**list_user_group_roles**](IamUserGroupsApi.md#list_user_group_roles) | **GET** /user-groups/{user_group_id}/roles | List roles in a user group
[**list_user_group_service_groups**](IamUserGroupsApi.md#list_user_group_service_groups) | **GET** /user-groups/{user_group_id}/service-groups | List service groups in a user group
[**list_user_groups**](IamUserGroupsApi.md#list_user_groups) | **GET** /user-groups | List user groups


# **delete_a_user_group**
> delete_a_user_group(user_group_id => $user_group_id)

Delete a user group

Delete a user group.

### Example
```perl
use Data::Dumper;
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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
use Fastly::IamUserGroupsApi;
my $api_instance = Fastly::IamUserGroupsApi->new(

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

