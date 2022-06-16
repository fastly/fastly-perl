# Fastly::Object::DictionaryResponse

## Load the model package
```perl
use Fastly::Object::DictionaryResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | [optional] 
**write_only** | **boolean** | Determines if items in the dictionary are readable or not. | [optional] [default to false]
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**id** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


