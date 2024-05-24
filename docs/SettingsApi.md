# WebService::Fastly::SettingsApi

## Load the API package
```perl
use WebService::Fastly::Object::SettingsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_service_settings**](SettingsApi.md#get_service_settings) | **GET** /service/{service_id}/version/{version_id}/settings | Get service settings
[**update_service_settings**](SettingsApi.md#update_service_settings) | **PUT** /service/{service_id}/version/{version_id}/settings | Update service settings


# **get_service_settings**
> SettingsResponse get_service_settings(service_id => $service_id, version_id => $version_id)

Get service settings

Get the settings for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SettingsApi;
my $api_instance = WebService::Fastly::SettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->get_service_settings(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SettingsApi->get_service_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**SettingsResponse**](SettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_settings**
> SettingsResponse update_service_settings(service_id => $service_id, version_id => $version_id, general/default_host => $general/default_host, general/default_ttl => $general/default_ttl, general/stale_if_error => $general/stale_if_error, general/stale_if_error_ttl => $general/stale_if_error_ttl)

Update service settings

Update the settings for a particular service and version. NOTE: If you override TTLs with custom VCL, any general.default_ttl value will not be honored and the expected behavior may change. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::SettingsApi;
my $api_instance = WebService::Fastly::SettingsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $general/default_host = "general/default_host_example"; # string | The default host name for the version.
my $general/default_ttl = 56; # int | The default time-to-live (TTL) for the version.
my $general/stale_if_error = false; # boolean | Enables serving a stale object if there is an error.
my $general/stale_if_error_ttl = 43200; # int | The default time-to-live (TTL) for serving the stale object for the version.

eval {
    my $result = $api_instance->update_service_settings(service_id => $service_id, version_id => $version_id, general/default_host => $general/default_host, general/default_ttl => $general/default_ttl, general/stale_if_error => $general/stale_if_error, general/stale_if_error_ttl => $general/stale_if_error_ttl);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SettingsApi->update_service_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **general/default_host** | **string**| The default host name for the version. | [optional] 
 **general/default_ttl** | **int**| The default time-to-live (TTL) for the version. | [optional] 
 **general/stale_if_error** | **boolean**| Enables serving a stale object if there is an error. | [optional] [default to false]
 **general/stale_if_error_ttl** | **int**| The default time-to-live (TTL) for serving the stale object for the version. | [optional] [default to 43200]

### Return type

[**SettingsResponse**](SettingsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

