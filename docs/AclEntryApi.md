# WebService::Fastly::AclEntryApi

## Load the API package
```perl
use WebService::Fastly::Object::AclEntryApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_acl_entries**](AclEntryApi.md#bulk_update_acl_entries) | **PATCH** /service/{service_id}/acl/{acl_id}/entries | Update multiple ACL entries
[**create_acl_entry**](AclEntryApi.md#create_acl_entry) | **POST** /service/{service_id}/acl/{acl_id}/entry | Create an ACL entry
[**delete_acl_entry**](AclEntryApi.md#delete_acl_entry) | **DELETE** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Delete an ACL entry
[**get_acl_entry**](AclEntryApi.md#get_acl_entry) | **GET** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Describe an ACL entry
[**list_acl_entries**](AclEntryApi.md#list_acl_entries) | **GET** /service/{service_id}/acl/{acl_id}/entries | List ACL entries
[**update_acl_entry**](AclEntryApi.md#update_acl_entry) | **PATCH** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Update an ACL entry


# **bulk_update_acl_entries**
> InlineResponse200 bulk_update_acl_entries(service_id => $service_id, acl_id => $acl_id, bulk_update_acl_entries_request => $bulk_update_acl_entries_request)

Update multiple ACL entries

Update multiple ACL entries on the same ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $bulk_update_acl_entries_request = WebService::Fastly::Object::BulkUpdateAclEntriesRequest->new(); # BulkUpdateAclEntriesRequest | 

eval {
    my $result = $api_instance->bulk_update_acl_entries(service_id => $service_id, acl_id => $acl_id, bulk_update_acl_entries_request => $bulk_update_acl_entries_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->bulk_update_acl_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **bulk_update_acl_entries_request** | [**BulkUpdateAclEntriesRequest**](BulkUpdateAclEntriesRequest.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_acl_entry**
> AclEntryResponse create_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry => $acl_entry)

Create an ACL entry

Add an ACL entry to an ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $acl_entry = WebService::Fastly::Object::AclEntry->new(); # AclEntry | 

eval {
    my $result = $api_instance->create_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry => $acl_entry);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->create_acl_entry: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **acl_entry** | [**AclEntry**](AclEntry.md)|  | [optional] 

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_acl_entry**
> InlineResponse200 delete_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id)

Delete an ACL entry

Delete an ACL entry from a specified ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $acl_entry_id = "acl_entry_id_example"; # string | Alphanumeric string identifying an ACL Entry.

eval {
    my $result = $api_instance->delete_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->delete_acl_entry: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **acl_entry_id** | **string**| Alphanumeric string identifying an ACL Entry. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_acl_entry**
> AclEntryResponse get_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id)

Describe an ACL entry

Retrieve a single ACL entry.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $acl_entry_id = "acl_entry_id_example"; # string | Alphanumeric string identifying an ACL Entry.

eval {
    my $result = $api_instance->get_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->get_acl_entry: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **acl_entry_id** | **string**| Alphanumeric string identifying an ACL Entry. | 

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_acl_entries**
> ARRAY[AclEntryResponse] list_acl_entries(service_id => $service_id, acl_id => $acl_id, page => $page, per_page => $per_page, sort => $sort, direction => $direction)

List ACL entries

List ACL entries for a specified ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $page = 1; # int | Current page.
my $per_page = 20; # int | Number of records per page.
my $sort = created; # string | Field on which to sort.
my $direction = ascend; # string | Direction in which to sort results.

eval {
    my $result = $api_instance->list_acl_entries(service_id => $service_id, acl_id => $acl_id, page => $page, per_page => $per_page, sort => $sort, direction => $direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->list_acl_entries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **page** | **int**| Current page. | [optional] 
 **per_page** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| Field on which to sort. | [optional] [default to &#39;created&#39;]
 **direction** | **string**| Direction in which to sort results. | [optional] [default to &#39;ascend&#39;]

### Return type

[**ARRAY[AclEntryResponse]**](AclEntryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_acl_entry**
> AclEntryResponse update_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id, acl_entry => $acl_entry)

Update an ACL entry

Update an ACL entry for a specified ACL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::AclEntryApi;
my $api_instance = WebService::Fastly::AclEntryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $acl_id = "acl_id_example"; # string | Alphanumeric string identifying a ACL.
my $acl_entry_id = "acl_entry_id_example"; # string | Alphanumeric string identifying an ACL Entry.
my $acl_entry = WebService::Fastly::Object::AclEntry->new(); # AclEntry | 

eval {
    my $result = $api_instance->update_acl_entry(service_id => $service_id, acl_id => $acl_id, acl_entry_id => $acl_entry_id, acl_entry => $acl_entry);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclEntryApi->update_acl_entry: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **acl_id** | **string**| Alphanumeric string identifying a ACL. | 
 **acl_entry_id** | **string**| Alphanumeric string identifying an ACL Entry. | 
 **acl_entry** | [**AclEntry**](AclEntry.md)|  | [optional] 

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

