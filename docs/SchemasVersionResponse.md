# WebService::Fastly::Object::SchemasVersionResponse

## Load the model package
```perl
use WebService::Fastly::Object::SchemasVersionResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether this is the active version or not. | [optional] [default to false]
**comment** | **string** | A freeform descriptive note. | [optional] 
**deployed** | **boolean** | Unused at this time. | [optional] 
**locked** | **boolean** | Whether this version is locked or not. Objects can not be added or edited on locked versions. | [optional] [default to false]
**number** | **int** | The number of this version. | [optional] [readonly] 
**staging** | **boolean** | Unused at this time. | [optional] [default to false]
**testing** | **boolean** | Unused at this time. | [optional] [default to false]
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**service_id** | **string** |  | [optional] [readonly] 
**environments** | [**ARRAY[Environment]**](Environment.md) | A list of environments where the service has been deployed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


