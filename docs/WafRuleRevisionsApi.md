# WebService::Fastly::WafRuleRevisionsApi

## Load the API package
```perl
use WebService::Fastly::Object::WafRuleRevisionsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_waf_rule_revision**](WafRuleRevisionsApi.md#get_waf_rule_revision) | **GET** /waf/rules/{waf_rule_id}/revisions/{waf_rule_revision_number} | Get a revision of a rule
[**list_waf_rule_revisions**](WafRuleRevisionsApi.md#list_waf_rule_revisions) | **GET** /waf/rules/{waf_rule_id}/revisions | List revisions for a rule


# **get_waf_rule_revision**
> WafRuleRevisionResponse get_waf_rule_revision(waf_rule_id => $waf_rule_id, waf_rule_revision_number => $waf_rule_revision_number, include => $include)

Get a revision of a rule

Get a specific rule revision.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafRuleRevisionsApi;
my $api_instance = WebService::Fastly::WafRuleRevisionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $waf_rule_revision_number = 56; # int | Revision number.
my $include = source,vcl,waf_rule; # string | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule`, `vcl`, and `source`. The `vcl` and `source` relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included. 

eval {
    my $result = $api_instance->get_waf_rule_revision(waf_rule_id => $waf_rule_id, waf_rule_revision_number => $waf_rule_revision_number, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafRuleRevisionsApi->get_waf_rule_revision: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **waf_rule_revision_number** | **int**| Revision number. | 
 **include** | **string**| Include relationships. Optional, comma-separated values. Permitted values: `waf_rule`, `vcl`, and `source`. The `vcl` and `source` relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included.  | [optional] 

### Return type

[**WafRuleRevisionResponse**](WafRuleRevisionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_rule_revisions**
> WafRuleRevisionsResponse list_waf_rule_revisions(waf_rule_id => $waf_rule_id, page[number] => $page[number], page[size] => $page[size], include => $include)

List revisions for a rule

List all revisions for a specific rule. The `rule_id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::WafRuleRevisionsApi;
my $api_instance = WebService::Fastly::WafRuleRevisionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = waf_rule; # string | Include relationships. Optional.

eval {
    my $result = $api_instance->list_waf_rule_revisions(waf_rule_id => $waf_rule_id, page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WafRuleRevisionsApi->list_waf_rule_revisions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional. | [optional] [default to &#39;waf_rule&#39;]

### Return type

[**WafRuleRevisionsResponse**](WafRuleRevisionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

