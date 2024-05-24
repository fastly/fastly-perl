# WebService::Fastly::LegacyWafUpdateStatusApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafUpdateStatusApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_update_status**](LegacyWafUpdateStatusApi.md#get_waf_update_status) | **GET** /service/{service_id}/wafs/{firewall_id}/update_statuses/{update_status_id} | Get the status of a WAF update
[**list_waf_update_statuses**](LegacyWafUpdateStatusApi.md#list_waf_update_statuses) | **GET** /service/{service_id}/wafs/{firewall_id}/update_statuses | List update statuses


# **get_waf_update_status**
> object get_waf_update_status(service_id => $service_id, firewall_id => $firewall_id, update_status_id => $update_status_id)

Get the status of a WAF update

Get a specific update status object for a particular service and firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafUpdateStatusApi;
my $api_instance = WebService::Fastly::LegacyWafUpdateStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $update_status_id = "update_status_id_example"; # string | Alphanumeric string identifying a WAF update status.

eval {
    my $result = $api_instance->get_waf_update_status(service_id => $service_id, firewall_id => $firewall_id, update_status_id => $update_status_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafUpdateStatusApi->get_waf_update_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **update_status_id** | **string**| Alphanumeric string identifying a WAF update status. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_waf_update_statuses**
> object list_waf_update_statuses(service_id => $service_id, firewall_id => $firewall_id, page[number] => $page[number], page[size] => $page[size], include => $include)

List update statuses

List all update statuses for a particular service and firewall object.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafUpdateStatusApi;
my $api_instance = WebService::Fastly::LegacyWafUpdateStatusApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = waf; # string | Include relationships. Optional, comma separated values. Permitted values: `waf`. 

eval {
    my $result = $api_instance->list_waf_update_statuses(service_id => $service_id, firewall_id => $firewall_id, page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafUpdateStatusApi->list_waf_update_statuses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **firewall_id** | **string**| Alphanumeric string identifying a Firewall. | 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `waf`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

