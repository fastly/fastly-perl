# Fastly::WafFirewallVersionsApi

## Load the API package
```perl
use Fastly::Object::WafFirewallVersionsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clone_waf_firewall_version**](WafFirewallVersionsApi.md#clone_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/clone | Clone a firewall version
[**create_waf_firewall_version**](WafFirewallVersionsApi.md#create_waf_firewall_version) | **POST** /waf/firewalls/{firewall_id}/versions | Create a firewall version
[**deploy_activate_waf_firewall_version**](WafFirewallVersionsApi.md#deploy_activate_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/activate | Deploy or activate a firewall version
[**get_waf_firewall_version**](WafFirewallVersionsApi.md#get_waf_firewall_version) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Get a firewall version
[**list_waf_firewall_versions**](WafFirewallVersionsApi.md#list_waf_firewall_versions) | **GET** /waf/firewalls/{firewall_id}/versions | List firewall versions
[**update_waf_firewall_version**](WafFirewallVersionsApi.md#update_waf_firewall_version) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Update a firewall version


# **clone_waf_firewall_version**
> WafFirewallVersionResponse clone_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number)

Clone a firewall version

Clone a specific, existing firewall version into a new, draft firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.

eval {
    my $result = $api_instance->clone_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->clone_waf_firewall_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_waf_firewall_version**
> WafFirewallVersionResponse create_waf_firewall_version(firewall_id => $firewall_id, waf_firewall_version => $waf_firewall_version)

Create a firewall version

Create a new, draft firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $waf_firewall_version = Fastly::Object::WafFirewallVersion->new(); # WafFirewallVersion | 

eval {
    my $result = $api_instance->create_waf_firewall_version(firewall_id => $firewall_id, waf_firewall_version => $waf_firewall_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->create_waf_firewall_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **waf_firewall_version** | [**WafFirewallVersion**](WafFirewallVersion.md)|  | [optional] 

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deploy_activate_waf_firewall_version**
> object deploy_activate_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number)

Deploy or activate a firewall version

Deploy or activate a specific firewall version. If a firewall has been disabled, deploying a firewall version will automatically enable the firewall again.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.

eval {
    my $result = $api_instance->deploy_activate_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->deploy_activate_waf_firewall_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_waf_firewall_version**
> WafFirewallVersionResponse get_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, include => $include)

Get a firewall version

Get details about a specific firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $include = waf_firewall,waf_active_rules; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_firewall` and `waf_active_rules`. 

eval {
    my $result = $api_instance->get_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->get_waf_firewall_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_firewall` and `waf_active_rules`.  | [optional] 

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_firewall_versions**
> WafFirewallVersionsResponse list_waf_firewall_versions(firewall_id => $firewall_id, include => $include, page[number] => $page[number], page[size] => $page[size])

List firewall versions

Get a list of firewall versions associated with a specific firewall.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $include = waf_firewall; # string | Include relationships. Optional.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_waf_firewall_versions(firewall_id => $firewall_id, include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->list_waf_firewall_versions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **include** | **string**| Include relationships. Optional. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**WafFirewallVersionsResponse**](WafFirewallVersionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_firewall_version**
> WafFirewallVersionResponse update_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, waf_firewall_version => $waf_firewall_version)

Update a firewall version

Update a specific firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafFirewallVersionsApi;
my $api_instance = Fastly::WafFirewallVersionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $waf_firewall_version = Fastly::Object::WafFirewallVersion->new(); # WafFirewallVersion | 

eval {
    my $result = $api_instance->update_waf_firewall_version(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, waf_firewall_version => $waf_firewall_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafFirewallVersionsApi->update_waf_firewall_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **waf_firewall_version** | [**WafFirewallVersion**](WafFirewallVersion.md)|  | [optional] 

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

