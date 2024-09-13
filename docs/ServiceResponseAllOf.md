# WebService::Fastly::Object::ServiceResponseAllOf

## Load the model package
```perl
use WebService::Fastly::Object::ServiceResponseAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [readonly] 
**publish_key** | **string** | Unused at this time. | [optional] 
**paused** | **boolean** | Whether the service is paused. Services are paused due to a lack of traffic for an extended period of time. Services are resumed either when a draft version is activated or a locked version is cloned and reactivated. | [optional] 
**versions** | [**ARRAY[SchemasVersionResponse]**](SchemasVersionResponse.md) | A list of [versions](https://www.fastly.com/documentation/reference/api/services/version/) associated with the service. | [optional] 
**environments** | [**ARRAY[Environment]**](Environment.md) | A list of environments where the service has been deployed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


