# WebService::Fastly::IamRolesApi

## Load the API package
```perl
use WebService::Fastly::Object::IamRolesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**iam_v1_roles_get**](IamRolesApi.md#iam_v1_roles_get) | **GET** /iam/v1/roles/{role_id} | Get IAM role by ID
[**iam_v1_roles_list**](IamRolesApi.md#iam_v1_roles_list) | **GET** /iam/v1/roles | List IAM roles


# **iam_v1_roles_get**
> IamV1RoleResponse iam_v1_roles_get(role_id => $role_id, include => $include)

Get IAM role by ID

Retrieve a single IAM role by its unique identifier. 

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

my $role_id = Q4rXe9vN1szK8a2fUjYtWp; # string | Alphanumeric string identifying the role.
my $include = "include_example"; # string | Include related data (i.e., permissions).

eval {
    my $result = $api_instance->iam_v1_roles_get(role_id => $role_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->iam_v1_roles_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **string**| Alphanumeric string identifying the role. | 
 **include** | **string**| Include related data (i.e., permissions). | [optional] 

### Return type

[**IamV1RoleResponse**](IamV1RoleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iam_v1_roles_list**
> IamV1RoleListResponse iam_v1_roles_list(limit => $limit, cursor => $cursor)

List IAM roles

Retrieve a paginated list of IAM roles available in the account. 

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

my $limit = 100; # int | Number of results per page. The maximum is 1000.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.

eval {
    my $result = $api_instance->iam_v1_roles_list(limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamRolesApi->iam_v1_roles_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results per page. The maximum is 1000. | [optional] [default to 100]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 

### Return type

[**IamV1RoleListResponse**](IamV1RoleListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

