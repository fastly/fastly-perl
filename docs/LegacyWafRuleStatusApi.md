# WebService::Fastly::LegacyWafRuleStatusApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafRuleStatusApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_firewall_rule_status**](LegacyWafRuleStatusApi.md#get_waf_firewall_rule_status) | **GET** /service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status | Get the status of a rule on a firewall
[**list_waf_firewall_rule_statuses**](LegacyWafRuleStatusApi.md#list_waf_firewall_rule_statuses) | **GET** /service/{service_id}/wafs/{firewall_id}/rule_statuses | List rule statuses
[**update_waf_firewall_rule_status**](LegacyWafRuleStatusApi.md#update_waf_firewall_rule_status) | **PATCH** /service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status | Update the status of a rule
[**update_waf_firewall_rule_statuses_tag**](LegacyWafRuleStatusApi.md#update_waf_firewall_rule_statuses_tag) | **POST** /service/{service_id}/wafs/{firewall_id}/rule_statuses | Create or update status of a tagged group of rules


# **get_waf_firewall_rule_status**
> object get_waf_firewall_rule_status(service_id => $service_id, firewall_id => $firewall_id, waf_rule_id => $waf_rule_id)

Get the status of a rule on a firewall

Get a specific rule status object for a particular service, firewall, and rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleStatusApi;
my $api_instance = WebService::Fastly::LegacyWafRuleStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.

eval {
    my $result = $api_instance->get_waf_firewall_rule_status(service_id => $service_id, firewall_id => $firewall_id, waf_rule_id => $waf_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleStatusApi->get_waf_firewall_rule_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
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

# **list_waf_firewall_rule_statuses**
> object list_waf_firewall_rule_statuses(service_id => $service_id, firewall_id => $firewall_id, filter[status] => $filter[status], filter[rule][message] => $filter[rule][message], filter[rule][rule_id] => $filter[rule][rule_id], filter[rule][tags] => $filter[rule][tags], filter[rule][tags][name] => $filter[rule][tags][name], include => $include, page[number] => $page[number], page[size] => $page[size])

List rule statuses

List all rule statuses for a particular service and firewall.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleStatusApi;
my $api_instance = WebService::Fastly::LegacyWafRuleStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $filter[status] = "filter[status]_example"; # string | Limit results to rule statuses with the specified status.
my $filter[rule][message] = "filter[rule][message]_example"; # string | Limit results to rule statuses whose rules have the specified message.
my $filter[rule][rule_id] = "filter[rule][rule_id]_example"; # string | Limit results to rule statuses whose rules represent the specified ModSecurity rule_id.
my $filter[rule][tags] = "filter[rule][tags]_example"; # string | Limit results to rule statuses whose rules relate to the specified tag IDs.
my $filter[rule][tags][name] = application-FBC Market; # string | Limit results to rule statuses whose rules related to the named tags.
my $include = "include_example"; # string | Include relationships. Optional, comma separated values. Permitted values: `tags`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_waf_firewall_rule_statuses(service_id => $service_id, firewall_id => $firewall_id, filter[status] => $filter[status], filter[rule][message] => $filter[rule][message], filter[rule][rule_id] => $filter[rule][rule_id], filter[rule][tags] => $filter[rule][tags], filter[rule][tags][name] => $filter[rule][tags][name], include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleStatusApi->list_waf_firewall_rule_statuses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **filter[status]** | **string**| Limit results to rule statuses with the specified status. | [optional] 
 **filter[rule][message]** | **string**| Limit results to rule statuses whose rules have the specified message. | [optional] 
 **filter[rule][rule_id]** | **string**| Limit results to rule statuses whose rules represent the specified ModSecurity rule_id. | [optional] 
 **filter[rule][tags]** | **string**| Limit results to rule statuses whose rules relate to the specified tag IDs. | [optional] 
 **filter[rule][tags][name]** | **string**| Limit results to rule statuses whose rules related to the named tags. | [optional] 
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `tags`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_firewall_rule_status**
> object update_waf_firewall_rule_status(service_id => $service_id, firewall_id => $firewall_id, waf_rule_id => $waf_rule_id, request_body => $request_body)

Update the status of a rule

Update a rule status for a particular service, firewall, and rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleStatusApi;
my $api_instance = WebService::Fastly::LegacyWafRuleStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $waf_rule_id = "waf_rule_id_example"; # string | Alphanumeric string identifying a WAF rule.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_waf_firewall_rule_status(service_id => $service_id, firewall_id => $firewall_id, waf_rule_id => $waf_rule_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleStatusApi->update_waf_firewall_rule_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **waf_rule_id** | **string**| Alphanumeric string identifying a WAF rule. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_waf_firewall_rule_statuses_tag**
> object update_waf_firewall_rule_statuses_tag(service_id => $service_id, firewall_id => $firewall_id, name => $name, force => $force, request_body => $request_body)

Create or update status of a tagged group of rules

Create or update all rule statuses for a particular service and firewall, based on tag name. By default, only rule status for enabled rules (with status log or block) will be updated. To update rule statuses for disabled rules under the specified tag, use the force attribute.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafRuleStatusApi;
my $api_instance = WebService::Fastly::LegacyWafRuleStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $name = "name_example"; # string | The tag name to use to determine the set of rules to update. For example, OWASP or language-php.
my $force = "force_example"; # string | Whether or not to update rule statuses for disabled rules. Optional.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_waf_firewall_rule_statuses_tag(service_id => $service_id, firewall_id => $firewall_id, name => $name, force => $force, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafRuleStatusApi->update_waf_firewall_rule_statuses_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **name** | **string**| The tag name to use to determine the set of rules to update. For example, OWASP or language-php. | [optional] 
 **force** | **string**| Whether or not to update rule statuses for disabled rules. Optional. | [optional] 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

