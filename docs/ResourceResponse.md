# WebService::Fastly::Object::ResourceResponse

## Load the model package
```perl
use WebService::Fastly::Object::ResourceResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_id** | **string** | The ID of the underlying linked resource. | [optional] 
**name** | **string** | The name of the resource link. Note this is separate from the resource store name and might not match the store name. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** | An alphanumeric string identifying the resource link. | [optional] 
**href** | **string** | The path to the resource. | [optional] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**resource_type** | [**TypeResource**](TypeResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


