# WebService::Fastly::LegacyWafOwaspApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafOwaspApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_owasp_settings**](LegacyWafOwaspApi.md#create_owasp_settings) | **POST** /service/{service_id}/wafs/{firewall_id}/owasp | Create an OWASP settings object
[**get_owasp_settings**](LegacyWafOwaspApi.md#get_owasp_settings) | **GET** /service/{service_id}/wafs/{firewall_id}/owasp | Get the OWASP settings object
[**update_owasp_settings**](LegacyWafOwaspApi.md#update_owasp_settings) | **PATCH** /service/{service_id}/wafs/{firewall_id}/owasp | Update the OWASP settings object


# **create_owasp_settings**
> object create_owasp_settings(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body)

Create an OWASP settings object

Create an OWASP settings object for a particular service and firewall.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafOwaspApi;
my $api_instance = WebService::Fastly::LegacyWafOwaspApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_owasp_settings(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafOwaspApi->create_owasp_settings: $@\n";
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

# **get_owasp_settings**
> object get_owasp_settings(service_id => $service_id, firewall_id => $firewall_id)

Get the OWASP settings object

Get the OWASP settings object for a particular service and firewall.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafOwaspApi;
my $api_instance = WebService::Fastly::LegacyWafOwaspApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.

eval {
    my $result = $api_instance->get_owasp_settings(service_id => $service_id, firewall_id => $firewall_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafOwaspApi->get_owasp_settings: $@\n";
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

# **update_owasp_settings**
> object update_owasp_settings(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body)

Update the OWASP settings object

Update the OWASP settings object for a particular service and firewall.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafOwaspApi;
my $api_instance = WebService::Fastly::LegacyWafOwaspApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $firewall_id = "firewall_id_example"; # string | Alphanumeric string identifying a Firewall.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->update_owasp_settings(service_id => $service_id, firewall_id => $firewall_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafOwaspApi->update_owasp_settings: $@\n";
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

