# WebService::Fastly::Object::KvStoreBatchResponse

## Load the model package
```perl
use WebService::Fastly::Object::KvStoreBatchResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | A descriptor for the response of the entire batch | [optional] 
**type** | **string** | If an error is present in any of the requests, this field will describe that error | [optional] 
**errors** | [**ARRAY[KvStoreBatchResponseErrors]**](KvStoreBatchResponseErrors.md) | Errors which occurred while handling the items in the request | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


