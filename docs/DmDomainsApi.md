# WebService::Fastly::DmDomainsApi

## Load the API package
```perl
use WebService::Fastly::Object::DmDomainsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_dm_domain**](DmDomainsApi.md#create_dm_domain) | **POST** /domain-management/v1/domains | Create a domain
[**delete_dm_domain**](DmDomainsApi.md#delete_dm_domain) | **DELETE** /domain-management/v1/domains/{domain_id} | Delete a domain
[**get_dm_domain**](DmDomainsApi.md#get_dm_domain) | **GET** /domain-management/v1/domains/{domain_id} | Get a domain
[**list_dm_domains**](DmDomainsApi.md#list_dm_domains) | **GET** /domain-management/v1/domains | List domains
[**update_dm_domain**](DmDomainsApi.md#update_dm_domain) | **PATCH** /domain-management/v1/domains/{domain_id} | Update a domain


# **create_dm_domain**
> SuccessfulResponseAsObject create_dm_domain(request_body_for_create => $request_body_for_create)

Create a domain

Create a domain

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmDomainsApi;
my $api_instance = WebService::Fastly::DmDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $request_body_for_create = WebService::Fastly::Object::RequestBodyForCreate->new(); # RequestBodyForCreate | 

eval {
    my $result = $api_instance->create_dm_domain(request_body_for_create => $request_body_for_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmDomainsApi->create_dm_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body_for_create** | [**RequestBodyForCreate**](RequestBodyForCreate.md)|  | [optional] 

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dm_domain**
> delete_dm_domain(domain_id => $domain_id)

Delete a domain

Delete a domain

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmDomainsApi;
my $api_instance = WebService::Fastly::DmDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $domain_id = "domain_id_example"; # string | 

eval {
    $api_instance->delete_dm_domain(domain_id => $domain_id);
};
if ($@) {
    warn "Exception when calling DmDomainsApi->delete_dm_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dm_domain**
> SuccessfulResponseAsObject get_dm_domain(domain_id => $domain_id)

Get a domain

Show a domain

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmDomainsApi;
my $api_instance = WebService::Fastly::DmDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $domain_id = "domain_id_example"; # string | 

eval {
    my $result = $api_instance->get_dm_domain(domain_id => $domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmDomainsApi->get_dm_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_id** | **string**|  | 

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dm_domains**
> InlineResponse2007 list_dm_domains(fqdn => $fqdn, service_id => $service_id, sort => $sort, activated => $activated, verified => $verified, cursor => $cursor, limit => $limit)

List domains

List all domains

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmDomainsApi;
my $api_instance = WebService::Fastly::DmDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $fqdn = "fqdn_example"; # string | 
my $service_id = "service_id_example"; # string | Filter results based on a service_id.
my $sort = 'fqdn'; # string | The order in which to list the results.
my $activated = null; # boolean | 
my $verified = null; # boolean | 
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.

eval {
    my $result = $api_instance->list_dm_domains(fqdn => $fqdn, service_id => $service_id, sort => $sort, activated => $activated, verified => $verified, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmDomainsApi->list_dm_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fqdn** | **string**|  | [optional] 
 **service_id** | **string**| Filter results based on a service_id. | [optional] 
 **sort** | **string**| The order in which to list the results. | [optional] [default to &#39;fqdn&#39;]
 **activated** | **boolean**|  | [optional] 
 **verified** | **boolean**|  | [optional] 
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dm_domain**
> SuccessfulResponseAsObject update_dm_domain(domain_id => $domain_id, request_body_for_update => $request_body_for_update)

Update a domain

Update a domain

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmDomainsApi;
my $api_instance = WebService::Fastly::DmDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $domain_id = "domain_id_example"; # string | 
my $request_body_for_update = WebService::Fastly::Object::RequestBodyForUpdate->new(); # RequestBodyForUpdate | 

eval {
    my $result = $api_instance->update_dm_domain(domain_id => $domain_id, request_body_for_update => $request_body_for_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmDomainsApi->update_dm_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_id** | **string**|  | 
 **request_body_for_update** | [**RequestBodyForUpdate**](RequestBodyForUpdate.md)|  | [optional] 

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

