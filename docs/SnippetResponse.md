# WebService::Fastly::Object::SnippetResponse

## Load the model package
```perl
use WebService::Fastly::Object::SnippetResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name for the snippet. | [optional] 
**type** | **string** | The location in generated VCL where the snippet should be placed. | [optional] 
**content** | **string** | The VCL code that specifies exactly what the snippet does. | [optional] 
**priority** | **string** | Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
**dynamic** | **string** | Sets the snippet version. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**service_id** | **string** |  | [optional] [readonly] 
**version** | **string** | String representing the number identifying a version of the service. | [optional] [readonly] 
**id** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


