# Fastly::Object::VclResponse

## Load the model package
```perl
use Fastly::Object::VclResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **string** | The VCL code to be included. | [optional] 
**main** | **boolean** | Set to `true` when this is the main VCL, otherwise `false`. | [optional] 
**name** | **string** | The name of this VCL. | [optional] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


