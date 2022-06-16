# Fastly::WafActiveRulesApi

## Load the API package
```perl
use Fastly::Object::WafActiveRulesApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_waf_active_rules**](WafActiveRulesApi.md#bulk_update_waf_active_rules) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/bulk | Update multiple active rules
[**create_waf_active_rule**](WafActiveRulesApi.md#create_waf_active_rule) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | Add a rule to a WAF as an active rule
[**create_waf_active_rules_tag**](WafActiveRulesApi.md#create_waf_active_rules_tag) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/tags/{waf_tag_name}/active-rules | Create active rules by tag
[**delete_waf_active_rule**](WafActiveRulesApi.md#delete_waf_active_rule) | **DELETE** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Delete an active rule
[**get_waf_active_rule**](WafActiveRulesApi.md#get_waf_active_rule) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Get an active WAF rule object
[**list_waf_active_rules**](WafActiveRulesApi.md#list_waf_active_rules) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | List active rules on a WAF
[**update_waf_active_rule**](WafActiveRulesApi.md#update_waf_active_rule) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Update an active rule


# **bulk_update_waf_active_rules**
> bulk_update_waf_active_rules(firewall_id => $firewall_id, version_id => $version_id, body => $body)

Update multiple active rules

Bulk update all active rules on a [firewall version](https://developer.fastly.com/reference/api/waf/firewall-version/). This endpoint will not add new active rules, only update existing active rules.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $body = Fastly::Object::WafActiveRuleData->new(); # WafActiveRuleData | 

eval {
    $api_instance->bulk_update_waf_active_rules(firewall_id => $firewall_id, version_id => $version_id, body => $body);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->bulk_update_waf_active_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **body** | **WafActiveRuleData**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_waf_active_rule**
> WafActiveRuleCreationResponse create_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_active_rule => $waf_active_rule)

Add a rule to a WAF as an active rule

Create an active rule for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $waf_active_rule = Fastly::Object::WafActiveRule->new(); # WafActiveRule | 

eval {
    my $result = $api_instance->create_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_active_rule => $waf_active_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->create_waf_active_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md)|  | [optional] 

### Return type

[**WafActiveRuleCreationResponse**](WafActiveRuleCreationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json, application/vnd.api+json; ext=bulk
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_waf_active_rules_tag**
> create_waf_active_rules_tag(firewall_id => $firewall_id, version_id => $version_id, waf_tag_name => $waf_tag_name, waf_active_rule => $waf_active_rule)

Create active rules by tag

Create active rules by tag. This endpoint will create active rules using the latest revision available for each rule.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $waf_tag_name = "waf_tag_name_example"; # string | Name of the tag.
my $waf_active_rule = Fastly::Object::WafActiveRule->new(); # WafActiveRule | 

eval {
    $api_instance->create_waf_active_rules_tag(firewall_id => $firewall_id, version_id => $version_id, waf_tag_name => $waf_tag_name, waf_active_rule => $waf_active_rule);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->create_waf_active_rules_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **waf_tag_name** | **string**| Name of the tag. | 
 **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_waf_active_rule**
> delete_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id)

Delete an active rule

Delete an active rule for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.

eval {
    $api_instance->delete_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->delete_waf_active_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_waf_active_rule**
> WafActiveRuleResponse get_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id, include => $include)

Get an active WAF rule object

Get a specific active rule object. Includes details of the rule revision associated with the active rule object by default.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $include = waf_rule_revision,waf_firewall_version; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`. 

eval {
    my $result = $api_instance->get_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->get_waf_active_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`.  | [optional] 

### Return type

[**WafActiveRuleResponse**](WafActiveRuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_active_rules**
> WafActiveRulesResponse list_waf_active_rules(firewall_id => $firewall_id, version_id => $version_id, filter[status] => $filter[status], filter[waf_rule_revision][message] => $filter[waf_rule_revision][message], filter[waf_rule_revision][modsec_rule_id] => $filter[waf_rule_revision][modsec_rule_id], filter[outdated] => $filter[outdated], include => $include, page[number] => $page[number], page[size] => $page[size])

List active rules on a WAF

List all active rules for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $filter[status] = "filter[status]_example"; # string | Limit results to active rules with the specified status.
my $filter[waf_rule_revision][message] = "filter[waf_rule_revision][message]_example"; # string | Limit results to active rules with the specified message.
my $filter[waf_rule_revision][modsec_rule_id] = "filter[waf_rule_revision][modsec_rule_id]_example"; # string | Limit results to active rules that represent the specified ModSecurity modsec_rule_id.
my $filter[outdated] = "filter[outdated]_example"; # string | Limit results to active rules referencing an outdated rule revision.
my $include = waf_rule_revision,waf_firewall_version; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_waf_active_rules(firewall_id => $firewall_id, version_id => $version_id, filter[status] => $filter[status], filter[waf_rule_revision][message] => $filter[waf_rule_revision][message], filter[waf_rule_revision][modsec_rule_id] => $filter[waf_rule_revision][modsec_rule_id], filter[outdated] => $filter[outdated], include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->list_waf_active_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **filter[status]** | **string**| Limit results to active rules with the specified status. | [optional] 
 **filter[waf_rule_revision][message]** | **string**| Limit results to active rules with the specified message. | [optional] 
 **filter[waf_rule_revision][modsec_rule_id]** | **string**| Limit results to active rules that represent the specified ModSecurity modsec_rule_id. | [optional] 
 **filter[outdated]** | **string**| Limit results to active rules referencing an outdated rule revision. | [optional] 
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**WafActiveRulesResponse**](WafActiveRulesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_active_rule**
> WafActiveRuleResponse update_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id, waf_active_rule => $waf_active_rule)

Update an active rule

Update an active rule's status for a particular firewall version.

### Example
```perl
use Data::Dumper;
use Fastly::WafActiveRulesApi;
my $api_instance = Fastly::WafActiveRulesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a WAF Firewall.
my $version_id = 56; # int | Integer identifying a service version.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $waf_active_rule = Fastly::Object::WafActiveRule->new(); # WafActiveRule | 

eval {
    my $result = $api_instance->update_waf_active_rule(firewall_id => $firewall_id, version_id => $version_id, waf_rule_id => $waf_rule_id, waf_active_rule => $waf_active_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafActiveRulesApi->update_waf_active_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firewall_id** | **string**| Alphanumeric string identifying a WAF Firewall. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md)|  | [optional] 

### Return type

[**WafActiveRuleResponse**](WafActiveRuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

