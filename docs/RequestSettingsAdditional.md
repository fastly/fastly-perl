# WebService::Fastly::Object::RequestSettingsAdditional

## Load the model package
```perl
use WebService::Fastly::Object::RequestSettingsAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** | Allows you to terminate request handling and immediately perform an action. | [optional] 
**default_host** | **string** | Sets the host header. | [optional] 
**hash_keys** | **string** | Comma separated list of varnish request object fields that should be in the hash key. | [optional] 
**name** | **string** | Name for the request settings. | [optional] 
**request_condition** | **string** | Condition which, if met, will select this configuration during a request. Optional. | [optional] 
**xff** | **string** | Short for X-Forwarded-For. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


