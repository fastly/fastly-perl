# WebService::Fastly::ClientSideProtectionApi

## Load the API package
```perl
use WebService::Fastly::Object::ClientSideProtectionApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**csp_create_page**](ClientSideProtectionApi.md#csp_create_page) | **POST** /client-side-protection/v1/pages | Create page
[**csp_create_policy**](ClientSideProtectionApi.md#csp_create_policy) | **POST** /client-side-protection/v1/pages/{page_id}/policies | Create policy
[**csp_create_website**](ClientSideProtectionApi.md#csp_create_website) | **POST** /client-side-protection/v1/websites | Create website
[**csp_delete_page**](ClientSideProtectionApi.md#csp_delete_page) | **DELETE** /client-side-protection/v1/pages/{page_id} | Delete page
[**csp_delete_website**](ClientSideProtectionApi.md#csp_delete_website) | **DELETE** /client-side-protection/v1/websites/{website_id} | Delete website
[**csp_get_page**](ClientSideProtectionApi.md#csp_get_page) | **GET** /client-side-protection/v1/pages/{page_id} | Get page
[**csp_get_policy**](ClientSideProtectionApi.md#csp_get_policy) | **GET** /client-side-protection/v1/pages/{page_id}/policies/{policy_id} | Get policy
[**csp_get_script**](ClientSideProtectionApi.md#csp_get_script) | **GET** /client-side-protection/v1/pages/{page_id}/scripts/{script_id} | Get script
[**csp_get_website**](ClientSideProtectionApi.md#csp_get_website) | **GET** /client-side-protection/v1/websites/{website_id} | Get website
[**csp_list_header_events**](ClientSideProtectionApi.md#csp_list_header_events) | **GET** /client-side-protection/v1/pages/{page_id}/events | List header events
[**csp_list_headers**](ClientSideProtectionApi.md#csp_list_headers) | **GET** /client-side-protection/v1/pages/{page_id}/headers | List security headers
[**csp_list_pages**](ClientSideProtectionApi.md#csp_list_pages) | **GET** /client-side-protection/v1/pages | List pages
[**csp_list_policies**](ClientSideProtectionApi.md#csp_list_policies) | **GET** /client-side-protection/v1/pages/{page_id}/policies | List policies
[**csp_list_policy_reports**](ClientSideProtectionApi.md#csp_list_policy_reports) | **GET** /client-side-protection/v1/pages/{page_id}/policies/{policy_id}/reports | List policy reports
[**csp_list_scripts**](ClientSideProtectionApi.md#csp_list_scripts) | **GET** /client-side-protection/v1/pages/{page_id}/scripts | List scripts
[**csp_list_websites**](ClientSideProtectionApi.md#csp_list_websites) | **GET** /client-side-protection/v1/websites | List websites
[**csp_update_page**](ClientSideProtectionApi.md#csp_update_page) | **PATCH** /client-side-protection/v1/pages/{page_id} | Update page
[**csp_update_policy**](ClientSideProtectionApi.md#csp_update_policy) | **PATCH** /client-side-protection/v1/pages/{page_id}/policies/{policy_id} | Update policy
[**csp_update_script**](ClientSideProtectionApi.md#csp_update_script) | **PATCH** /client-side-protection/v1/pages/{page_id}/scripts/{script_id} | Update script
[**csp_update_website**](ClientSideProtectionApi.md#csp_update_website) | **PATCH** /client-side-protection/v1/websites/{website_id} | Update website


# **csp_create_page**
> Page csp_create_page(page_create => $page_create)

Create page

Create a new page for monitoring.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_create = WebService::Fastly::Object::PageCreate->new(); # PageCreate | 

eval {
    my $result = $api_instance->csp_create_page(page_create => $page_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_create_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_create** | [**PageCreate**](PageCreate.md)|  | [optional] 

### Return type

[**Page**](Page.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_create_policy**
> Policy csp_create_policy(page_id => $page_id, policy_create => $policy_create)

Create policy

Create a new Content Security Policy for a page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $policy_create = WebService::Fastly::Object::PolicyCreate->new(); # PolicyCreate | 

eval {
    my $result = $api_instance->csp_create_policy(page_id => $page_id, policy_create => $policy_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_create_policy: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **policy_create** | [**PolicyCreate**](PolicyCreate.md)|  | [optional] 

### Return type

[**Policy**](Policy.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_create_website**
> Website csp_create_website(website_create => $website_create)

Create website

Create a new website for Client-Side Protection monitoring.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $website_create = WebService::Fastly::Object::WebsiteCreate->new(); # WebsiteCreate | 

eval {
    my $result = $api_instance->csp_create_website(website_create => $website_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_create_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website_create** | [**WebsiteCreate**](WebsiteCreate.md)|  | [optional] 

### Return type

[**Website**](Website.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_delete_page**
> csp_delete_page(page_id => $page_id)

Delete page

Delete a page and all associated scripts and policies.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier

eval {
    $api_instance->csp_delete_page(page_id => $page_id);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_delete_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_delete_website**
> csp_delete_website(website_id => $website_id)

Delete website

Delete a website and all associated pages, scripts, and policies.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $website_id = 2Xk9JgPCkf1NzVsNmKrECp; # string | Website identifier

eval {
    $api_instance->csp_delete_website(website_id => $website_id);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_delete_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website_id** | **string**| Website identifier | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_get_page**
> Page csp_get_page(page_id => $page_id)

Get page

Get details for a specific page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier

eval {
    my $result = $api_instance->csp_get_page(page_id => $page_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_get_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 

### Return type

[**Page**](Page.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_get_policy**
> Policy csp_get_policy(page_id => $page_id, policy_id => $policy_id)

Get policy

Get details for a specific policy.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $policy_id = 7Cp4OlUHqj6SfAwSrQwJHu; # string | Policy identifier

eval {
    my $result = $api_instance->csp_get_policy(page_id => $page_id, policy_id => $policy_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_get_policy: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **policy_id** | **string**| Policy identifier | 

### Return type

[**Policy**](Policy.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_get_script**
> Script csp_get_script(page_id => $page_id, script_id => $script_id)

Get script

Get details for a specific script.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $script_id = 5An2MjSFoh4QcYvQpNuHFs; # string | Script identifier

eval {
    my $result = $api_instance->csp_get_script(page_id => $page_id, script_id => $script_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_get_script: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **script_id** | **string**| Script identifier | 

### Return type

[**Script**](Script.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_get_website**
> Website csp_get_website(website_id => $website_id)

Get website

Get details for a specific website.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $website_id = 2Xk9JgPCkf1NzVsNmKrECp; # string | Website identifier

eval {
    my $result = $api_instance->csp_get_website(website_id => $website_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_get_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website_id** | **string**| Website identifier | 

### Return type

[**Website**](Website.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_header_events**
> InlineResponse20011 csp_list_header_events(page_id => $page_id, limit => $limit, page => $page)

List header events

List security header change events for a page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_header_events(page_id => $page_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_header_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_headers**
> InlineResponse20010 csp_list_headers(page_id => $page_id, limit => $limit, page => $page)

List security headers

List security headers detected on a page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_headers(page_id => $page_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_headers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_pages**
> InlineResponse2006 csp_list_pages(website_id => $website_id, limit => $limit, page => $page)

List pages

List all pages. Optionally filter by website.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $website_id = "website_id_example"; # string | Filter pages by website ID
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_pages(website_id => $website_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_pages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website_id** | **string**| Filter pages by website ID | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_policies**
> InlineResponse2008 csp_list_policies(page_id => $page_id, limit => $limit, page => $page)

List policies

List all Content Security Policies for a page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_policies(page_id => $page_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_policies: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_policy_reports**
> InlineResponse2009 csp_list_policy_reports(page_id => $page_id, policy_id => $policy_id, limit => $limit, page => $page)

List policy reports

List CSP violation reports for a policy.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $policy_id = 7Cp4OlUHqj6SfAwSrQwJHu; # string | Policy identifier
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_policy_reports(page_id => $page_id, policy_id => $policy_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_policy_reports: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **policy_id** | **string**| Policy identifier | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_scripts**
> InlineResponse2007 csp_list_scripts(page_id => $page_id, limit => $limit, page => $page)

List scripts

List all scripts detected on a page.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_scripts(page_id => $page_id, limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_scripts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_list_websites**
> InlineResponse2005 csp_list_websites(limit => $limit, page => $page)

List websites

List all websites configured for Client-Side Protection.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $limit = 100; # int | Limit how many results are returned.
my $page = 1; # int | Page number of the collection to request.

eval {
    my $result = $api_instance->csp_list_websites(limit => $limit, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_list_websites: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **page** | **int**| Page number of the collection to request. | [optional] [default to 0]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_update_page**
> Page csp_update_page(page_id => $page_id, page_update => $page_update)

Update page

Update a page's configuration.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $page_update = WebService::Fastly::Object::PageUpdate->new(); # PageUpdate | 

eval {
    my $result = $api_instance->csp_update_page(page_id => $page_id, page_update => $page_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_update_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **page_update** | [**PageUpdate**](PageUpdate.md)|  | [optional] 

### Return type

[**Page**](Page.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_update_policy**
> Policy csp_update_policy(page_id => $page_id, policy_id => $policy_id, policy_update => $policy_update)

Update policy

Update a policy's configuration.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $policy_id = 7Cp4OlUHqj6SfAwSrQwJHu; # string | Policy identifier
my $policy_update = WebService::Fastly::Object::PolicyUpdate->new(); # PolicyUpdate | 

eval {
    my $result = $api_instance->csp_update_policy(page_id => $page_id, policy_id => $policy_id, policy_update => $policy_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_update_policy: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **policy_id** | **string**| Policy identifier | 
 **policy_update** | [**PolicyUpdate**](PolicyUpdate.md)|  | [optional] 

### Return type

[**Policy**](Policy.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_update_script**
> Script csp_update_script(page_id => $page_id, script_id => $script_id, script_update => $script_update)

Update script

Update a script's authorization status or justification.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page_id = 3Yl0KhQDlg2OaWtOnLsFDq; # string | Page identifier
my $script_id = 5An2MjSFoh4QcYvQpNuHFs; # string | Script identifier
my $script_update = WebService::Fastly::Object::ScriptUpdate->new(); # ScriptUpdate | 

eval {
    my $result = $api_instance->csp_update_script(page_id => $page_id, script_id => $script_id, script_update => $script_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_update_script: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **string**| Page identifier | 
 **script_id** | **string**| Script identifier | 
 **script_update** | [**ScriptUpdate**](ScriptUpdate.md)|  | [optional] 

### Return type

[**Script**](Script.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **csp_update_website**
> Website csp_update_website(website_id => $website_id, website_update => $website_update)

Update website

Update a website's configuration.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ClientSideProtectionApi;
my $api_instance = WebService::Fastly::ClientSideProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $website_id = 2Xk9JgPCkf1NzVsNmKrECp; # string | Website identifier
my $website_update = WebService::Fastly::Object::WebsiteUpdate->new(); # WebsiteUpdate | 

eval {
    my $result = $api_instance->csp_update_website(website_id => $website_id, website_update => $website_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientSideProtectionApi->csp_update_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website_id** | **string**| Website identifier | 
 **website_update** | [**WebsiteUpdate**](WebsiteUpdate.md)|  | [optional] 

### Return type

[**Website**](Website.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

