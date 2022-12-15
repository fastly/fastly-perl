# WebService::Fastly::Object::WafExclusionResponseDataAttributesAllOf

## Load the model package
```perl
use WebService::Fastly::Object::WafExclusionResponseDataAttributesAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **string** | A conditional expression in VCL used to determine if the condition is met. | [optional] 
**exclusion_type** | **string** | The type of exclusion. | [optional] 
**logging** | **boolean** | Whether to generate a log upon matching. | [optional] [default to true]
**name** | **string** | Name of the exclusion. | [optional] 
**number** | **int** | A numeric ID identifying a WAF exclusion. | [optional] 
**variable** | **string** | The variable to exclude. An optional selector can be specified after the variable separated by a colon (`:`) to restrict the variable to a particular parameter. Required for `exclusion_type&#x3D;variable`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


