# WebService::Fastly::LegacyWafFirewallApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafFirewallApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#create_legacy_waf_firewall_service) | **POST** /service/{service_id}/version/{version_id}/wafs | Create a firewall
[**disable_legacy_waf_firewall**](LegacyWafFirewallApi.md#disable_legacy_waf_firewall) | **PATCH** /wafs/{firewall_id}/disable | Disable a firewall
[**enable_legacy_waf_firewall**](LegacyWafFirewallApi.md#enable_legacy_waf_firewall) | **PATCH** /wafs/{firewall_id}/enable | Enable a firewall
[**get_legacy_waf_firewall**](LegacyWafFirewallApi.md#get_legacy_waf_firewall) | **GET** /wafs/{firewall_id} | Get a firewall object
[**get_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#get_legacy_waf_firewall_service) | **GET** /service/{service_id}/version/{version_id}/wafs/{firewall_id} | Get a firewall
[**list_legacy_waf_firewalls**](LegacyWafFirewallApi.md#list_legacy_waf_firewalls) | **GET** /wafs | List active firewalls
[**list_legacy_waf_firewalls_service**](LegacyWafFirewallApi.md#list_legacy_waf_firewalls_service) | **GET** /service/{service_id}/version/{version_id}/wafs | List firewalls
[**update_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#update_legacy_waf_firewall_service) | **PATCH** /service/{service_id}/version/{version_id}/wafs/{firewall_id} | Update a firewall


# **create_legacy_waf_firewall_service**
> object create_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, request_body => $request_body)

Create a firewall

Create a firewall object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->create_legacy_waf_firewall_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_legacy_waf_firewall**
> object disable_legacy_waf_firewall(firewall_id => $firewall_id, request_body => $request_body)

Disable a firewall

Disable a firewall for a particular service and version. This endpoint is intended to be used in an emergency. Disabling a firewall object for a specific service and version replaces your existing WAF ruleset with an empty ruleset. While disabled, your WAF ruleset will not be applied to your origin traffic. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->disable_legacy_waf_firewall(firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->disable_legacy_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_legacy_waf_firewall**
> object enable_legacy_waf_firewall(firewall_id => $firewall_id, request_body => $request_body)

Enable a firewall

Re-enable a firewall object for a particular service and version after it has been disabled. This endpoint is intended to be used in an emergency. When a firewall object is re-enabled, a newly generated WAF ruleset VCL based on the current WAF configuration is used to replace the empty ruleset. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->enable_legacy_waf_firewall(firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->enable_legacy_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_legacy_waf_firewall**
> object get_legacy_waf_firewall(firewall_id => $firewall_id, include => $include)

Get a firewall object

Get a specific firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $include = configuration_set; # string | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`, `rules`, `rule_statuses`. 

eval {
    my $result = $api_instance->get_legacy_waf_firewall(firewall_id => $firewall_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->get_legacy_waf_firewall: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`, `rules`, `rule_statuses`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_legacy_waf_firewall_service**
> object get_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, firewall_id => $firewall_id)

Get a firewall

Get a specific firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.

eval {
    my $result = $api_instance->get_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, firewall_id => $firewall_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->get_legacy_waf_firewall_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_legacy_waf_firewalls**
> object list_legacy_waf_firewalls(filter[rules][rule_id] => $filter[rules][rule_id], page[number] => $page[number], page[size] => $page[size], include => $include)

List active firewalls

List all active firewall objects.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[rules][rule_id] = "filter[rules][rule_id]_example"; # string | Limit the returned firewalls to a specific rule ID.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = configuration_set; # string | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`. 

eval {
    my $result = $api_instance->list_legacy_waf_firewalls(filter[rules][rule_id] => $filter[rules][rule_id], page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->list_legacy_waf_firewalls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[rules][rule_id]** | **string**| Limit the returned firewalls to a specific rule ID. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_legacy_waf_firewalls_service**
> object list_legacy_waf_firewalls_service(service_id => $service_id, version_id => $version_id, page[number] => $page[number], page[size] => $page[size], include => $include)

List firewalls

List all firewall objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = configuration_set; # string | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`. 

eval {
    my $result = $api_instance->list_legacy_waf_firewalls_service(service_id => $service_id, version_id => $version_id, page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->list_legacy_waf_firewalls_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_legacy_waf_firewall_service**
> object update_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, firewall_id => $firewall_id, request_body => $request_body)

Update a firewall

Update a firewall object for a particular service and version. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafFirewallApi;
my $api_instance = WebService::Fastly::LegacyWafFirewallApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_legacy_waf_firewall_service(service_id => $service_id, version_id => $version_id, firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafFirewallApi->update_legacy_waf_firewall_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

