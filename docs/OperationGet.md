# WebService::Fastly::Object::OperationGet

## Load the model package
```perl
use WebService::Fastly::Object::OperationGet;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **string** | The HTTP method for the operation. | 
**domain** | **string** | The domain for the operation. | 
**path** | **string** | The path for the operation, which may include path parameters. | 
**description** | **string** | A description of what the operation does. | [optional] 
**tag_ids** | **ARRAY[string]** | An array of operation tag IDs associated with this operation. | [optional] 
**id** | **string** | The unique identifier of the operation. | [readonly] 
**created_at** | **DateTime** | The timestamp when the operation was created. | [optional] [readonly] 
**updated_at** | **DateTime** | The timestamp when the operation was last updated. | [readonly] 
**last_seen_at** | **DateTime** | The timestamp when the operation was last seen in traffic. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


