# WebService::Fastly::TlsConfigurationsApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsConfigurationsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_tls_config**](TlsConfigurationsApi.md#get_tls_config) | **GET** /tls/configurations/{tls_configuration_id} | Get a TLS configuration
[**list_tls_configs**](TlsConfigurationsApi.md#list_tls_configs) | **GET** /tls/configurations | List TLS configurations
[**update_tls_config**](TlsConfigurationsApi.md#update_tls_config) | **PATCH** /tls/configurations/{tls_configuration_id} | Update a TLS configuration


# **get_tls_config**
> TlsConfigurationResponse get_tls_config(tls_configuration_id => $tls_configuration_id, include => $include)

Get a TLS configuration

Show a TLS configuration.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsConfigurationsApi;
my $api_instance = WebService::Fastly::TlsConfigurationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_configuration_id = "tls_configuration_id_example"; # string | Alphanumeric string identifying a TLS configuration.
my $include = dns_records; # string | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`. 

eval {
    my $result = $api_instance->get_tls_config(tls_configuration_id => $tls_configuration_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsConfigurationsApi->get_tls_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_configuration_id** | **string**| Alphanumeric string identifying a TLS configuration. | 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `dns_records`.  | [optional] 

### Return type

[**TlsConfigurationResponse**](TlsConfigurationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_configs**
> TlsConfigurationsResponse list_tls_configs(filter[bulk] => $filter[bulk], include => $include, page[number] => $page[number], page[size] => $page[size])

List TLS configurations

List all TLS configurations.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsConfigurationsApi;
my $api_instance = WebService::Fastly::TlsConfigurationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[bulk] = "filter[bulk]_example"; # string | Optionally filters by the bulk attribute.
my $include = dns_records; # string | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_tls_configs(filter[bulk] => $filter[bulk], include => $include, page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsConfigurationsApi->list_tls_configs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[bulk]** | **string**| Optionally filters by the bulk attribute. | [optional] 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `dns_records`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**TlsConfigurationsResponse**](TlsConfigurationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tls_config**
> TlsConfigurationResponse update_tls_config(tls_configuration_id => $tls_configuration_id, tls_configuration => $tls_configuration)

Update a TLS configuration

Update a TLS configuration.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsConfigurationsApi;
my $api_instance = WebService::Fastly::TlsConfigurationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_configuration_id = "tls_configuration_id_example"; # string | Alphanumeric string identifying a TLS configuration.
my $tls_configuration = WebService::Fastly::Object::TlsConfiguration->new(); # TlsConfiguration | 

eval {
    my $result = $api_instance->update_tls_config(tls_configuration_id => $tls_configuration_id, tls_configuration => $tls_configuration);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsConfigurationsApi->update_tls_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_configuration_id** | **string**| Alphanumeric string identifying a TLS configuration. | 
 **tls_configuration** | [**TlsConfiguration**](TlsConfiguration.md)|  | [optional] 

### Return type

[**TlsConfigurationResponse**](TlsConfigurationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

