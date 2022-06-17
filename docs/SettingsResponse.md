# WebService::Fastly::Object::SettingsResponse

## Load the model package
```perl
use WebService::Fastly::Object::SettingsResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general/default_host** | **string** | The default host name for the version. | [optional] 
**general/default_ttl** | **int** | The default time-to-live (TTL) for the version. | [optional] 
**general/stale_if_error** | **boolean** | Enables serving a stale object if there is an error. | [optional] [default to false]
**general/stale_if_error_ttl** | **int** | The default time-to-live (TTL) for serving the stale object for the version. | [optional] [default to 43200]
**service_id** | **string** |  | [optional] [readonly] 
**version** | **int** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


