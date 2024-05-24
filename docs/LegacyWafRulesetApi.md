# WebService::Fastly::LegacyWafRulesetApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafRulesetApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_ruleset**](LegacyWafRulesetApi.md#get_waf_ruleset) | **GET** /service/{service_id}/wafs/{firewall_id}/ruleset | Get a WAF ruleset
[**get_waf_ruleset_vcl**](LegacyWafRulesetApi.md#get_waf_ruleset_vcl) | **GET** /service/{service_id}/wafs/{firewall_id}/ruleset/preview | Generate WAF ruleset VCL
[**update_waf_ruleset**](LegacyWafRulesetApi.md#update_waf_ruleset) | **PATCH** /service/{service_id}/wafs/{firewall_id}/ruleset | Update a WAF ruleset


# **get_waf_ruleset**
> object get_waf_ruleset(service_id => $service_id, firewall_id => $firewall_id)

Get a WAF ruleset

Get a WAF ruleset for a particular service and firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRulesetApi;
my $api_instance = WebService::Fastly::LegacyWafRulesetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.

eval {
    my $result = $api_instance->get_waf_ruleset(service_id => $service_id, firewall_id => $firewall_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRulesetApi->get_waf_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_waf_ruleset_vcl**
> object get_waf_ruleset_vcl(service_id => $service_id, firewall_id => $firewall_id)

Generate WAF ruleset VCL

Get a preview of the WAF ruleset VCL for a particular service and firewall object based on changes to WAF configuration before deploying the ruleset. The response will include a link to status of the background VCL generation job. Once the background job is completed, the preview WAF ruleset VCL can be retrieved from the status response.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRulesetApi;
my $api_instance = WebService::Fastly::LegacyWafRulesetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.

eval {
    my $result = $api_instance->get_waf_ruleset_vcl(service_id => $service_id, firewall_id => $firewall_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRulesetApi->get_waf_ruleset_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_ruleset**
> object update_waf_ruleset(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body)

Update a WAF ruleset

Update the WAF ruleset for a particular service and firewall object. Use the URL in the response to view the WAF ruleset deploy status.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRulesetApi;
my $api_instance = WebService::Fastly::LegacyWafRulesetApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_waf_ruleset(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRulesetApi->update_waf_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
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

