# Fastly::WafExclusionsApi

## Load the API package
```perl
use Fastly::Object::WafExclusionsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_waf_rule_exclusion**](WafExclusionsApi.md#create_waf_rule_exclusion) | **POST** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | Create a WAF rule exclusion
[**delete_waf_rule_exclusion**](WafExclusionsApi.md#delete_waf_rule_exclusion) | **DELETE** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Delete a WAF rule exclusion
[**get_waf_rule_exclusion**](WafExclusionsApi.md#get_waf_rule_exclusion) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Get a WAF rule exclusion
[**list_waf_rule_exclusions**](WafExclusionsApi.md#list_waf_rule_exclusions) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | List WAF rule exclusions
[**update_waf_rule_exclusion**](WafExclusionsApi.md#update_waf_rule_exclusion) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Update a WAF rule exclusion


# **create_waf_rule_exclusion**
> WafExclusionResponse create_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, waf_exclusion => $waf_exclusion)

Create a WAF rule exclusion

Create a WAF exclusion for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafExclusionsApi;
my $api_instance = Fastly::WafExclusionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $waf_exclusion = Fastly::Object::WafExclusion->new(); # WafExclusion | 

eval {
    my $result = $api_instance->create_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, waf_exclusion => $waf_exclusion);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafExclusionsApi->create_waf_rule_exclusion: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **waf_exclusion** | [**WafExclusion**](WafExclusion.md)|  | [optional] 

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_waf_rule_exclusion**
> delete_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number)

Delete a WAF rule exclusion

Delete a WAF exclusion for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafExclusionsApi;
my $api_instance = Fastly::WafExclusionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $exclusion_number = 56; # int | A numeric ID identifying a WAF exclusion.

eval {
    $api_instance->delete_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number);
};
if ($@) {
    warn "Exception when calling WafExclusionsApi->delete_waf_rule_exclusion: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **exclusion_number** | **int**| A numeric ID identifying a WAF exclusion. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_waf_rule_exclusion**
> WafExclusionResponse get_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number)

Get a WAF rule exclusion

Get a specific WAF exclusion object.

### Example
```perl
use Data::Dumper;
use Fastly::WafExclusionsApi;
my $api_instance = Fastly::WafExclusionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $exclusion_number = 56; # int | A numeric ID identifying a WAF exclusion.

eval {
    my $result = $api_instance->get_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafExclusionsApi->get_waf_rule_exclusion: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **exclusion_number** | **int**| A numeric ID identifying a WAF exclusion. | 

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_rule_exclusions**
> WafExclusionsResponse list_waf_rule_exclusions(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, filter[exclusion_type] => $filter[exclusion_type], filter[name] => $filter[name], filter[waf_rules/modsec_rule_id] => $filter[waf_rules/modsec_rule_id], page[number] => $page[number], page[size] => $page[size], include => $include)

List WAF rule exclusions

List all exclusions for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafExclusionsApi;
my $api_instance = Fastly::WafExclusionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $filter[exclusion_type] = "filter[exclusion_type]_example"; # string | Filters the results based on this exclusion type.
my $filter[name] = "filter[name]_example"; # string | Filters the results based on name.
my $filter[waf_rules/modsec_rule_id] = 56; # int | Filters the results based on this ModSecurity rule ID.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = waf_rules; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_rules` and `waf_rule_revisions`. 

eval {
    my $result = $api_instance->list_waf_rule_exclusions(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, filter[exclusion_type] => $filter[exclusion_type], filter[name] => $filter[name], filter[waf_rules/modsec_rule_id] => $filter[waf_rules/modsec_rule_id], page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafExclusionsApi->list_waf_rule_exclusions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **filter[exclusion_type]** | **string**| Filters the results based on this exclusion type. | [optional] 
 **filter[name]** | **string**| Filters the results based on name. | [optional] 
 **filter[waf_rules/modsec_rule_id]** | **int**| Filters the results based on this ModSecurity rule ID. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_rules` and `waf_rule_revisions`.  | [optional] 

### Return type

[**WafExclusionsResponse**](WafExclusionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_rule_exclusion**
> WafExclusionResponse update_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number, waf_exclusion => $waf_exclusion)

Update a WAF rule exclusion

Update a WAF exclusion for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafExclusionsApi;
my $api_instance = Fastly::WafExclusionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $firewall_version_number = 56; # int | Integer identifying a WAF firewall version.
my $exclusion_number = 56; # int | A numeric ID identifying a WAF exclusion.
my $waf_exclusion = Fastly::Object::WafExclusion->new(); # WafExclusion | 

eval {
    my $result = $api_instance->update_waf_rule_exclusion(firewall_id => $firewall_id, firewall_version_number => $firewall_version_number, exclusion_number => $exclusion_number, waf_exclusion => $waf_exclusion);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafExclusionsApi->update_waf_rule_exclusion: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **firewall_version_number** | **int**| Integer identifying a WAF firewall version. | 
 **exclusion_number** | **int**| A numeric ID identifying a WAF exclusion. | 
 **waf_exclusion** | [**WafExclusion**](WafExclusion.md)|  | [optional] 

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

