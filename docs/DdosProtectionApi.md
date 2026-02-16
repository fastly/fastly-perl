# WebService::Fastly::DdosProtectionApi

## Load the API package
```perl
use WebService::Fastly::Object::DdosProtectionApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ddos_protection_event_get**](DdosProtectionApi.md#ddos_protection_event_get) | **GET** /ddos-protection/v1/events/{event_id} | Get event by ID
[**ddos_protection_event_list**](DdosProtectionApi.md#ddos_protection_event_list) | **GET** /ddos-protection/v1/events | Get events
[**ddos_protection_event_rule_list**](DdosProtectionApi.md#ddos_protection_event_rule_list) | **GET** /ddos-protection/v1/events/{event_id}/rules | Get all rules for an event
[**ddos_protection_rule_get**](DdosProtectionApi.md#ddos_protection_rule_get) | **GET** /ddos-protection/v1/rules/{rule_id} | Get a rule by ID
[**ddos_protection_rule_patch**](DdosProtectionApi.md#ddos_protection_rule_patch) | **PATCH** /ddos-protection/v1/rules/{rule_id} | Update rule
[**ddos_protection_traffic_stats_rule_get**](DdosProtectionApi.md#ddos_protection_traffic_stats_rule_get) | **GET** /ddos-protection/v1/events/{event_id}/rules/{rule_id}/traffic-stats | Get traffic stats for a rule


# **ddos_protection_event_get**
> DdosProtectionEvent ddos_protection_event_get(event_id => $event_id)

Get event by ID

Get event by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $event_id = "event_id_example"; # string | Unique ID of the event.

eval {
    my $result = $api_instance->ddos_protection_event_get(event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_event_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**| Unique ID of the event. | 

### Return type

[**DdosProtectionEvent**](DdosProtectionEvent.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ddos_protection_event_list**
> InlineResponse2005 ddos_protection_event_list(cursor => $cursor, limit => $limit, service_id => $service_id, from => $from, to => $to, name => $name)

Get events

Get events.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.
my $service_id = "service_id_example"; # string | Filter results based on a service_id.
my $from = 2023-01-01T02:30Z; # DateTime | Represents the start of a date-time range expressed in RFC 3339 format.
my $to = 2023-01-01T02:30Z; # DateTime | Represents the end of a date-time range expressed in RFC 3339 format.
my $name = "name_example"; # string | 

eval {
    my $result = $api_instance->ddos_protection_event_list(cursor => $cursor, limit => $limit, service_id => $service_id, from => $from, to => $to, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_event_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]
 **service_id** | **string**| Filter results based on a service_id. | [optional] 
 **from** | **DateTime**| Represents the start of a date-time range expressed in RFC 3339 format. | [optional] 
 **to** | **DateTime**| Represents the end of a date-time range expressed in RFC 3339 format. | [optional] 
 **name** | **string**|  | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ddos_protection_event_rule_list**
> InlineResponse2006 ddos_protection_event_rule_list(event_id => $event_id, cursor => $cursor, limit => $limit, include => $include)

Get all rules for an event

Get all rules for an event.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $event_id = "event_id_example"; # string | Unique ID of the event.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.
my $include = "include_example"; # string | Include relationships. Optional. Comma-separated values.

eval {
    my $result = $api_instance->ddos_protection_event_rule_list(event_id => $event_id, cursor => $cursor, limit => $limit, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_event_rule_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**| Unique ID of the event. | 
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional. Comma-separated values. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ddos_protection_rule_get**
> DdosProtectionRule ddos_protection_rule_get(rule_id => $rule_id)

Get a rule by ID

Get a rule by ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rule_id = "rule_id_example"; # string | Unique ID of the rule.

eval {
    my $result = $api_instance->ddos_protection_rule_get(rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_rule_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **string**| Unique ID of the rule. | 

### Return type

[**DdosProtectionRule**](DdosProtectionRule.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ddos_protection_rule_patch**
> DdosProtectionRule ddos_protection_rule_patch(rule_id => $rule_id, ddos_protection_rule_patch => $ddos_protection_rule_patch)

Update rule

Update rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rule_id = "rule_id_example"; # string | Unique ID of the rule.
my $ddos_protection_rule_patch = WebService::Fastly::Object::DdosProtectionRulePatch->new(); # DdosProtectionRulePatch | 

eval {
    my $result = $api_instance->ddos_protection_rule_patch(rule_id => $rule_id, ddos_protection_rule_patch => $ddos_protection_rule_patch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_rule_patch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **string**| Unique ID of the rule. | 
 **ddos_protection_rule_patch** | [**DdosProtectionRulePatch**](DdosProtectionRulePatch.md)|  | [optional] 

### Return type

[**DdosProtectionRule**](DdosProtectionRule.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ddos_protection_traffic_stats_rule_get**
> DdosProtectionTrafficStats ddos_protection_traffic_stats_rule_get(event_id => $event_id, rule_id => $rule_id)

Get traffic stats for a rule

Get traffic stats for a rule.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DdosProtectionApi;
my $api_instance = WebService::Fastly::DdosProtectionApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $event_id = "event_id_example"; # string | Unique ID of the event.
my $rule_id = "rule_id_example"; # string | Unique ID of the rule.

eval {
    my $result = $api_instance->ddos_protection_traffic_stats_rule_get(event_id => $event_id, rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DdosProtectionApi->ddos_protection_traffic_stats_rule_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**| Unique ID of the event. | 
 **rule_id** | **string**| Unique ID of the rule. | 

### Return type

[**DdosProtectionTrafficStats**](DdosProtectionTrafficStats.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

