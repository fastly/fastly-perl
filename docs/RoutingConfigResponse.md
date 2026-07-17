# WebService::Fastly::Object::RoutingConfigResponse

## Load the model package
```perl
use WebService::Fastly::Object::RoutingConfigResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** | Alphanumeric string identifying the routing config. | [optional] [readonly] 
**name** | **string** | The user-defined name for the routing config. | [optional] 
**state** | [**RoutingConfigState**](RoutingConfigState.md) |  | [optional] 
**activated_at** | **DateTime** | Timestamp of when the version was most recently activated. `null` if the version has never been activated. | [optional] [readonly] 
**links** | **HASH[string,string]** | HATEOAS links to related resources. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


