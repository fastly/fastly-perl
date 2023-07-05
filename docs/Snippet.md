# WebService::Fastly::Object::Snippet

## Load the model package
```perl
use WebService::Fastly::Object::Snippet;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name for the snippet. | [optional] 
**dynamic** | **string** | Sets the snippet version. | [optional] 
**type** | **string** | The location in generated VCL where the snippet should be placed. | [optional] 
**content** | **string** | The VCL code that specifies exactly what the snippet does. | [optional] 
**priority** | **string** | Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


