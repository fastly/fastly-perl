# WebService::Fastly::LegacyWafConfigurationSetsApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafConfigurationSetsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_waf_config_sets**](LegacyWafConfigurationSetsApi.md#list_waf_config_sets) | **GET** /wafs/configuration_sets | List configuration sets
[**list_wafs_config_set**](LegacyWafConfigurationSetsApi.md#list_wafs_config_set) | **GET** /wafs/configuration_sets/{configuration_set_id}/relationships/wafs | List WAFs currently using a configuration set
[**use_waf_config_set**](LegacyWafConfigurationSetsApi.md#use_waf_config_set) | **PATCH** /wafs/configuration_sets/{configuration_set_id}/relationships/wafs | Apply a configuration set to a WAF


# **list_waf_config_sets**
> object list_waf_config_sets()

List configuration sets

List all Configuration sets.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafConfigurationSetsApi;
my $api_instance = WebService::Fastly::LegacyWafConfigurationSetsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_waf_config_sets();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafConfigurationSetsApi->list_waf_config_sets: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_wafs_config_set**
> object list_wafs_config_set(configuration_set_id => $configuration_set_id)

List WAFs currently using a configuration set

List the WAF objects currently using the specified configuration set.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafConfigurationSetsApi;
my $api_instance = WebService::Fastly::LegacyWafConfigurationSetsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $configuration_set_id = "configuration_set_id_example"; # string | Alphanumeric string identifying a WAF configuration set.

eval {
    my $result = $api_instance->list_wafs_config_set(configuration_set_id => $configuration_set_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafConfigurationSetsApi->list_wafs_config_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_set_id** | **string**| Alphanumeric string identifying a WAF configuration set. | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **use_waf_config_set**
> object use_waf_config_set(configuration_set_id => $configuration_set_id, request_body => $request_body)

Apply a configuration set to a WAF

Update one or more WAF objects to use the specified configuration set.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafConfigurationSetsApi;
my $api_instance = WebService::Fastly::LegacyWafConfigurationSetsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $configuration_set_id = "configuration_set_id_example"; # string | Alphanumeric string identifying a WAF configuration set.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->use_waf_config_set(configuration_set_id => $configuration_set_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafConfigurationSetsApi->use_waf_config_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_set_id** | **string**| Alphanumeric string identifying a WAF configuration set. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

