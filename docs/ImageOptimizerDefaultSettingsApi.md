# WebService::Fastly::ImageOptimizerDefaultSettingsApi

## Load the API package
```perl
use WebService::Fastly::Object::ImageOptimizerDefaultSettingsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_default_settings**](ImageOptimizerDefaultSettingsApi.md#get_default_settings) | **GET** /service/{service_id}/version/{version_id}/image_optimizer_default_settings | Get current Image Optimizer Default Settings
[**update_default_settings**](ImageOptimizerDefaultSettingsApi.md#update_default_settings) | **PATCH** /service/{service_id}/version/{version_id}/image_optimizer_default_settings | Update Image Optimizer Default Settings


# **get_default_settings**
> DefaultSettingsResponse get_default_settings(service_id => $service_id, version_id => $version_id)

Get current Image Optimizer Default Settings

Retrieve the current Image Optimizer default settings. All properties in the response will be populated. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ImageOptimizerDefaultSettingsApi;
my $api_instance = WebService::Fastly::ImageOptimizerDefaultSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_default_settings(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImageOptimizerDefaultSettingsApi->get_default_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**DefaultSettingsResponse**](DefaultSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_default_settings**
> DefaultSettingsResponse update_default_settings(service_id => $service_id, version_id => $version_id, default_settings => $default_settings)

Update Image Optimizer Default Settings

Update one or more default settings. A minimum of one property is required. The endpoint will respond with the new Image Optimizer default settings, with all properties populated. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ImageOptimizerDefaultSettingsApi;
my $api_instance = WebService::Fastly::ImageOptimizerDefaultSettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $default_settings = WebService::Fastly::Object::DefaultSettings->new(); # DefaultSettings | 

eval {
    my $result = $api_instance->update_default_settings(service_id => $service_id, version_id => $version_id, default_settings => $default_settings);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImageOptimizerDefaultSettingsApi->update_default_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **default_settings** | [**DefaultSettings**](DefaultSettings.md)|  | [optional] 

### Return type

[**DefaultSettingsResponse**](DefaultSettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

