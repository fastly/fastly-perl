# WebService::Fastly::AclApi

## Load the API package
```perl
use WebService::Fastly::Object::AclApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_acl**](AclApi.md#create_acl) | **POST** /service/{service_id}/version/{version_id}/acl | Create a new ACL
[**delete_acl**](AclApi.md#delete_acl) | **DELETE** /service/{service_id}/version/{version_id}/acl/{acl_name} | Delete an ACL
[**get_acl**](AclApi.md#get_acl) | **GET** /service/{service_id}/version/{version_id}/acl/{acl_name} | Describe an ACL
[**list_acls**](AclApi.md#list_acls) | **GET** /service/{service_id}/version/{version_id}/acl | List ACLs
[**update_acl**](AclApi.md#update_acl) | **PUT** /service/{service_id}/version/{version_id}/acl/{acl_name} | Update an ACL


# **create_acl**
> AclResponse create_acl(service_id => $service_id, version_id => $version_id, name => $name)

Create a new ACL

Create a new ACL attached to the specified service version. A new, empty ACL must be attached to a draft version of a service. The version associated with the ACL must be activated to be used.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclApi;
my $api_instance = WebService::Fastly::AclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.

eval {
    my $result = $api_instance->create_acl(service_id => $service_id, version_id => $version_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->create_acl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | [optional] 

### Return type

[**AclResponse**](AclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_acl**
> InlineResponse200 delete_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name)

Delete an ACL

Delete an ACL from the specified service version. To remove an ACL from use, the ACL must be deleted from a draft version and the version without the ACL must be activated.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclApi;
my $api_instance = WebService::Fastly::AclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $acl_name = "acl_name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.

eval {
    my $result = $api_instance->delete_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->delete_acl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **acl_name** | **string**| Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_acl**
> AclResponse get_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name)

Describe an ACL

Retrieve a single ACL by name for the version and service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclApi;
my $api_instance = WebService::Fastly::AclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $acl_name = "acl_name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.

eval {
    my $result = $api_instance->get_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->get_acl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **acl_name** | **string**| Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | 

### Return type

[**AclResponse**](AclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_acls**
> ARRAY[AclResponse] list_acls(service_id => $service_id, version_id => $version_id)

List ACLs

List ACLs.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclApi;
my $api_instance = WebService::Fastly::AclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_acls(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->list_acls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[AclResponse]**](AclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_acl**
> AclResponse update_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name, name => $name)

Update an ACL

Update an ACL for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclApi;
my $api_instance = WebService::Fastly::AclApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $acl_name = "acl_name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
my $name = "name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.

eval {
    my $result = $api_instance->update_acl(service_id => $service_id, version_id => $version_id, acl_name => $acl_name, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->update_acl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **acl_name** | **string**| Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | 
 **name** | **string**| Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | [optional] 

### Return type

[**AclResponse**](AclResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

