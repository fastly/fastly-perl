# WebService::Fastly::LegacyWafRuleApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafRuleApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_legacy_waf_firewall_rule_vcl**](LegacyWafRuleApi.md#get_legacy_waf_firewall_rule_vcl) | **GET** /wafs/{firewall_id}/rules/{waf_rule_id}/vcl | Get VCL for a rule associated with a firewall
[**get_legacy_waf_rule**](LegacyWafRuleApi.md#get_legacy_waf_rule) | **GET** /wafs/rules/{waf_rule_id} | Get a rule
[**get_legacy_waf_rule_vcl**](LegacyWafRuleApi.md#get_legacy_waf_rule_vcl) | **GET** /wafs/rules/{waf_rule_id}/vcl | Get VCL for a rule
[**list_legacy_waf_rules**](LegacyWafRuleApi.md#list_legacy_waf_rules) | **GET** /wafs/rules | List rules in the latest configuration set


# **get_legacy_waf_firewall_rule_vcl**
> object get_legacy_waf_firewall_rule_vcl(firewall_id => $firewall_id, waf_rule_id => $waf_rule_id)

Get VCL for a rule associated with a firewall

Get associated VCL for a specific rule associated with a specific firewall.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleApi;
my $api_instance = WebService::Fastly::LegacyWafRuleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.

eval {
    my $result = $api_instance->get_legacy_waf_firewall_rule_vcl(firewall_id => $firewall_id, waf_rule_id => $waf_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleApi->get_legacy_waf_firewall_rule_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_legacy_waf_rule**
> object get_legacy_waf_rule(waf_rule_id => $waf_rule_id, filter[configuration_set_id] => $filter[configuration_set_id], include => $include)

Get a rule

Get a specific rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleApi;
my $api_instance = WebService::Fastly::LegacyWafRuleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $filter[configuration_set_id] = "filter[configuration_set_id]_example"; # string | Optional. Limit rule to a specific configuration set or pass \"all\" to search all configuration sets, including stale ones.
my $include = tags; # string | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, `source`, and `vcl`. 

eval {
    my $result = $api_instance->get_legacy_waf_rule(waf_rule_id => $waf_rule_id, filter[configuration_set_id] => $filter[configuration_set_id], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleApi->get_legacy_waf_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **filter[configuration_set_id]** | **string**| Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. | [optional] 
 **include** | **string**| Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, `source`, and `vcl`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_legacy_waf_rule_vcl**
> object get_legacy_waf_rule_vcl(waf_rule_id => $waf_rule_id)

Get VCL for a rule

Get associated VCL for a specific rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleApi;
my $api_instance = WebService::Fastly::LegacyWafRuleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.

eval {
    my $result = $api_instance->get_legacy_waf_rule_vcl(waf_rule_id => $waf_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleApi->get_legacy_waf_rule_vcl: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_legacy_waf_rules**
> ARRAY[object] list_legacy_waf_rules(filter[rule_id] => $filter[rule_id], filter[severity] => $filter[severity], filter[tags][name] => $filter[tags][name], filter[configuration_set_id] => $filter[configuration_set_id], page[number] => $page[number], page[size] => $page[size], include => $include)

List rules in the latest configuration set

List all rules in the latest configuration set.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleApi;
my $api_instance = WebService::Fastly::LegacyWafRuleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[rule_id] = "filter[rule_id]_example"; # string | Limit the returned rules to a specific rule ID.
my $filter[severity] = "filter[severity]_example"; # string | Limit the returned rules to a specific severity.
my $filter[tags][name] = "filter[tags][name]_example"; # string | Limit the returned rules to a set linked to a tag by name.
my $filter[configuration_set_id] = "filter[configuration_set_id]_example"; # string | Optional. Limit rules to specific configuration set or pass \"all\" to search all configuration sets, including stale ones.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = "include_example"; # string | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, and `source`. 

eval {
    my $result = $api_instance->list_legacy_waf_rules(filter[rule_id] => $filter[rule_id], filter[severity] => $filter[severity], filter[tags][name] => $filter[tags][name], filter[configuration_set_id] => $filter[configuration_set_id], page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleApi->list_legacy_waf_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[rule_id]** | **string**| Limit the returned rules to a specific rule ID. | [optional] 
 **filter[severity]** | **string**| Limit the returned rules to a specific severity. | [optional] 
 **filter[tags][name]** | **string**| Limit the returned rules to a set linked to a tag by name. | [optional] 
 **filter[configuration_set_id]** | **string**| Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, and `source`.  | [optional] 

### Return type

**ARRAY[object]**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

