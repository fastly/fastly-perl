# WebService::Fastly::WafFirewallsApi

## Load the API package
```perl
use WebService::Fastly::Object::WafFirewallsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_waf_firewall**](WafFirewallsApi.md#create_waf_firewall) | **POST** /waf/firewalls | Create a firewall
[**delete_waf_firewall**](WafFirewallsApi.md#delete_waf_firewall) | **DELETE** /waf/firewalls/{firewall_id} | Delete a firewall
[**get_waf_firewall**](WafFirewallsApi.md#get_waf_firewall) | **GET** /waf/firewalls/{firewall_id} | Get a firewall
[**list_waf_firewalls**](WafFirewallsApi.md#list_waf_firewalls) | **GET** /waf/firewalls | List firewalls
[**update_waf_firewall**](WafFirewallsApi.md#update_waf_firewall) | **PATCH** /waf/firewalls/{firewall_id} | Update a firewall


# **create_waf_firewall**
> WafFirewallResponse create_waf_firewall(waf_firewall => $waf_firewall)

Create a firewall

Create a firewall object for a particular service and service version using a defined `prefetch_condition` and `response`. If the `prefetch_condition` or the `response` is missing from the request body, Fastly will generate a default object on your service. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafFirewallsApi;
my $api_instance = WebService::Fastly::WafFirewallsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_firewall = WebService::Fastly::Object::WafFirewall->new(); # WafFirewall | 

eval {
    my $result = $api_instance->create_waf_firewall(waf_firewall => $waf_firewall);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallsApi->create_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_firewall** | [**WafFirewall**](WafFirewall.md)|  | [optional] 

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_waf_firewall**
> delete_waf_firewall(firewall_id => $firewall_id, waf_firewall => $waf_firewall)

Delete a firewall

Delete the firewall object for a particular service and service version. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafFirewallsApi;
my $api_instance = WebService::Fastly::WafFirewallsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $waf_firewall = WebService::Fastly::Object::WafFirewall->new(); # WafFirewall | 

eval {
    $api_instance->delete_waf_firewall(firewall_id => $firewall_id, waf_firewall => $waf_firewall);
};
if ($@) {
    warn "Exception when calling WafFirewallsApi->delete_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **waf_firewall** | [**WafFirewall**](WafFirewall.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_waf_firewall**
> WafFirewallResponse get_waf_firewall(firewall_id => $firewall_id, filter[service_version_number] => $filter[service_version_number], include => $include)

Get a firewall

Get a specific firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafFirewallsApi;
my $api_instance = WebService::Fastly::WafFirewallsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $filter[service_version_number] = "filter[service_version_number]_example"; # string | Limit the results returned to a specific service version.
my $include = 'waf_firewall_versions'; # string | Include related objects. Optional.

eval {
    my $result = $api_instance->get_waf_firewall(firewall_id => $firewall_id, filter[service_version_number] => $filter[service_version_number], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallsApi->get_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **filter[service_version_number]** | **string**| Limit the results returned to a specific service version. | [optional] 
 **include** | **string**| Include related objects. Optional. | [optional] [default to &#39;waf_firewall_versions&#39;]

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_firewalls**
> WafFirewallsResponse list_waf_firewalls(page[number] => $page[number], page[size] => $page[size], filter[service_id] => $filter[service_id], filter[service_version_number] => $filter[service_version_number], include => $include)

List firewalls

List all firewall objects.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafFirewallsApi;
my $api_instance = WebService::Fastly::WafFirewallsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $filter[service_id] = "filter[service_id]_example"; # string | Limit the results returned to a specific service.
my $filter[service_version_number] = "filter[service_version_number]_example"; # string | Limit the results returned to a specific service version.
my $include = 'waf_firewall_versions'; # string | Include related objects. Optional.

eval {
    my $result = $api_instance->list_waf_firewalls(page[number] => $page[number], page[size] => $page[size], filter[service_id] => $filter[service_id], filter[service_version_number] => $filter[service_version_number], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallsApi->list_waf_firewalls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **filter[service_id]** | **string**| Limit the results returned to a specific service. | [optional] 
 **filter[service_version_number]** | **string**| Limit the results returned to a specific service version. | [optional] 
 **include** | **string**| Include related objects. Optional. | [optional] [default to &#39;waf_firewall_versions&#39;]

### Return type

[**WafFirewallsResponse**](WafFirewallsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_firewall**
> WafFirewallResponse update_waf_firewall(firewall_id => $firewall_id, waf_firewall => $waf_firewall)

Update a firewall

Update a firewall object for a particular service and service version. Specifying a `service_version_number` is required. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafFirewallsApi;
my $api_instance = WebService::Fastly::WafFirewallsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $waf_firewall = WebService::Fastly::Object::WafFirewall->new(); # WafFirewall | 

eval {
    my $result = $api_instance->update_waf_firewall(firewall_id => $firewall_id, waf_firewall => $waf_firewall);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallsApi->update_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **waf_firewall** | [**WafFirewall**](WafFirewall.md)|  | [optional] 

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

