# WebService::Fastly::IamPermissionsApi

## Load the API package
```perl
use WebService::Fastly::Object::IamPermissionsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_permissions**](IamPermissionsApi.md#list_permissions) | **GET** /permissions | List permissions


# **list_permissions**
> object list_permissions()

List permissions

List all permissions.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::IamPermissionsApi;
my $api_instance = WebService::Fastly::IamPermissionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_permissions();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IamPermissionsApi->list_permissions: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

