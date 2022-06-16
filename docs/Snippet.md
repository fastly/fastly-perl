# Fastly::Object::Snippet

## Load the model package
```perl
use Fastly::Object::Snippet;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name for the snippet. | [optional] 
**dynamic** | **int** | Sets the snippet version. | [optional] 
**type** | **string** | The location in generated VCL where the snippet should be placed. | [optional] 
**content** | **string** | The VCL code that specifies exactly what the snippet does. | [optional] 
**priority** | **int** | Priority determines execution order. Lower numbers execute first. | [optional] [default to 100]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


