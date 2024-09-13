# WebService::Fastly::AclsInComputeApi

## Load the API package
```perl
use WebService::Fastly::Object::AclsInComputeApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**compute_acl_create_acls**](AclsInComputeApi.md#compute_acl_create_acls) | **POST** /resources/acls | Create a new ACL
[**compute_acl_delete_s_acl_id**](AclsInComputeApi.md#compute_acl_delete_s_acl_id) | **DELETE** /resources/acls/{acl_id} | Delete an ACL
[**compute_acl_list_acl_entries**](AclsInComputeApi.md#compute_acl_list_acl_entries) | **GET** /resources/acls/{acl_id}/entries | List an ACL
[**compute_acl_list_acls**](AclsInComputeApi.md#compute_acl_list_acls) | **GET** /resources/acls | List ACLs
[**compute_acl_list_acls_s_acl_id**](AclsInComputeApi.md#compute_acl_list_acls_s_acl_id) | **GET** /resources/acls/{acl_id} | Describe an ACL
[**compute_acl_lookup_acls**](AclsInComputeApi.md#compute_acl_lookup_acls) | **GET** /resources/acls/{acl_id}/entry/{acl_ip} | Lookup an ACL
[**compute_acl_update_acls**](AclsInComputeApi.md#compute_acl_update_acls) | **PATCH** /resources/acls/{acl_id}/entries | Update an ACL


# **compute_acl_create_acls**
> ComputeAclCreateAclsResponse compute_acl_create_acls(compute_acl_create_acls_request => $compute_acl_create_acls_request)

Create a new ACL

Create a new ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $compute_acl_create_acls_request = WebService::Fastly::Object::ComputeAclCreateAclsRequest->new(); # ComputeAclCreateAclsRequest | 

eval {
    my $result = $api_instance->compute_acl_create_acls(compute_acl_create_acls_request => $compute_acl_create_acls_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_create_acls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compute_acl_create_acls_request** | [**ComputeAclCreateAclsRequest**](ComputeAclCreateAclsRequest.md)|  | [optional] 

### Return type

[**ComputeAclCreateAclsResponse**](ComputeAclCreateAclsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_delete_s_acl_id**
> compute_acl_delete_s_acl_id(acl_id => $acl_id)

Delete an ACL

Delete an ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $acl_id = "acl_id_example"; # string | 

eval {
    $api_instance->compute_acl_delete_s_acl_id(acl_id => $acl_id);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_delete_s_acl_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_list_acl_entries**
> ComputeAclListEntries compute_acl_list_acl_entries(acl_id => $acl_id, cursor => $cursor, limit => $limit)

List an ACL

List an ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $acl_id = "acl_id_example"; # string | 
my $cursor = "cursor_example"; # string | 
my $limit = 100; # int | 

eval {
    my $result = $api_instance->compute_acl_list_acl_entries(acl_id => $acl_id, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_list_acl_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_id** | **string**|  | 
 **cursor** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ComputeAclListEntries**](ComputeAclListEntries.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_list_acls**
> ARRAY[ComputeAclCreateAclsResponse] compute_acl_list_acls()

List ACLs

List all ACLs.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->compute_acl_list_acls();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_list_acls: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ComputeAclCreateAclsResponse]**](ComputeAclCreateAclsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_list_acls_s_acl_id**
> ComputeAclCreateAclsResponse compute_acl_list_acls_s_acl_id(acl_id => $acl_id)

Describe an ACL

Describe an ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $acl_id = "acl_id_example"; # string | 

eval {
    my $result = $api_instance->compute_acl_list_acls_s_acl_id(acl_id => $acl_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_list_acls_s_acl_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_id** | **string**|  | 

### Return type

[**ComputeAclCreateAclsResponse**](ComputeAclCreateAclsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_lookup_acls**
> ComputeAclLookup compute_acl_lookup_acls(acl_id => $acl_id, acl_ip => $acl_ip)

Lookup an ACL

Find a matching ACL entry for an IP address.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $acl_id = "acl_id_example"; # string | 
my $acl_ip = "acl_ip_example"; # string | 

eval {
    my $result = $api_instance->compute_acl_lookup_acls(acl_id => $acl_id, acl_ip => $acl_ip);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_lookup_acls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_id** | **string**|  | 
 **acl_ip** | **string**|  | 

### Return type

[**ComputeAclLookup**](ComputeAclLookup.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_acl_update_acls**
> compute_acl_update_acls(acl_id => $acl_id, compute_acl_update_entry => $compute_acl_update_entry)

Update an ACL

Update an ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclsInComputeApi;
my $api_instance = WebService::Fastly::AclsInComputeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $acl_id = "acl_id_example"; # string | 
my $compute_acl_update_entry = [WebService::Fastly::Object::ARRAY[ComputeAclUpdateEntry]->new()]; # ARRAY[ComputeAclUpdateEntry] | 

eval {
    $api_instance->compute_acl_update_acls(acl_id => $acl_id, compute_acl_update_entry => $compute_acl_update_entry);
};
if ($@) {
    warn "Exception when calling AclsInComputeApi->compute_acl_update_acls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_id** | **string**|  | 
 **compute_acl_update_entry** | [**ARRAY[ComputeAclUpdateEntry]**](ComputeAclUpdateEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

