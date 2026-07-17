# WebService::Fastly::Object::PathResponse

## Load the model package
```perl
use WebService::Fastly::Object::PathResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** | Alphanumeric string identifying the path. Stable across versions of the routing config. | [optional] [readonly] 
**path** | **string** | The URL path pattern, beginning with `/`. Maximum 2048 characters. | [optional] 
**links** | **HASH[string,string]** | HATEOAS links to related resources. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


