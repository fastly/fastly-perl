# WebService::Fastly::WafRulesApi

## Load the API package
```perl
use WebService::Fastly::Object::WafRulesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_rule**](WafRulesApi.md#get_waf_rule) | **GET** /waf/rules/{waf_rule_id} | Get a rule
[**list_waf_rules**](WafRulesApi.md#list_waf_rules) | **GET** /waf/rules | List available WAF rules


# **get_waf_rule**
> WafRuleResponse get_waf_rule(waf_rule_id => $waf_rule_id, include => $include)

Get a rule

Get a specific rule. The `id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafRulesApi;
my $api_instance = WebService::Fastly::WafRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $include = waf_tags,waf_rule_revisions; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`. 

eval {
    my $result = $api_instance->get_waf_rule(waf_rule_id => $waf_rule_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafRulesApi->get_waf_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`.  | [optional] 

### Return type

[**WafRuleResponse**](WafRuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_rules**
> WafRulesResponse list_waf_rules(filter[modsec_rule_id] => $filter[modsec_rule_id], filter[waf_tags][name] => $filter[waf_tags][name], filter[waf_rule_revisions][source] => $filter[waf_rule_revisions][source], filter[waf_firewall/id][not][match] => $filter[waf_firewall/id][not][match], page[number] => $page[number], page[size] => $page[size], include => $include)

List available WAF rules

List all available WAF rules.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafRulesApi;
my $api_instance = WebService::Fastly::WafRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[modsec_rule_id] = "filter[modsec_rule_id]_example"; # string | Limit the returned rules to a specific ModSecurity rule ID.
my $filter[waf_tags][name] = "filter[waf_tags][name]_example"; # string | Limit the returned rules to a set linked to a tag by name.
my $filter[waf_rule_revisions][source] = "filter[waf_rule_revisions][source]_example"; # string | Limit the returned rules to a set linked to a source.
my $filter[waf_firewall/id][not][match] = "filter[waf_firewall/id][not][match]_example"; # string | Limit the returned rules to a set not included in the active firewall version for a firewall.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = waf_tags,waf_rule_revisions; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`. 

eval {
    my $result = $api_instance->list_waf_rules(filter[modsec_rule_id] => $filter[modsec_rule_id], filter[waf_tags][name] => $filter[waf_tags][name], filter[waf_rule_revisions][source] => $filter[waf_rule_revisions][source], filter[waf_firewall/id][not][match] => $filter[waf_firewall/id][not][match], page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafRulesApi->list_waf_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[modsec_rule_id]** | **string**| Limit the returned rules to a specific ModSecurity rule ID. | [optional] 
 **filter[waf_tags][name]** | **string**| Limit the returned rules to a set linked to a tag by name. | [optional] 
 **filter[waf_rule_revisions][source]** | **string**| Limit the returned rules to a set linked to a source. | [optional] 
 **filter[waf_firewall/id][not][match]** | **string**| Limit the returned rules to a set not included in the active firewall version for a firewall. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`.  | [optional] 

### Return type

[**WafRulesResponse**](WafRulesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

