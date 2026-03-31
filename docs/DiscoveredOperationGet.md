# WebService::Fastly::Object::DiscoveredOperationGet

## Load the model package
```perl
use WebService::Fastly::Object::DiscoveredOperationGet;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **string** | The HTTP method for the operation. | 
**domain** | **string** | The domain for the operation. | 
**path** | **string** | The path for the operation, which may include path parameters. | 
**id** | **string** | The unique identifier of the discovered operation. | [readonly] 
**updated_at** | **DateTime** | The timestamp when the operation was last updated. | [optional] [readonly] 
**last_seen_at** | **DateTime** | The timestamp when the operation was last seen in traffic. | [optional] [readonly] 
**rps** | **double** | Requests per second observed for this operation. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


