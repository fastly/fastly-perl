# WebService::Fastly::Object::Batch

## Load the model package
```perl
use WebService::Fastly::Object::Batch;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | A descriptor for the response of the entire batch | [optional] 
**type** | **string** | If an error is present in any of the requests, this field will describe that error | [optional] 
**errors** | [**ARRAY[BatchErrors]**](BatchErrors.md) | Per-key errors which failed to parse, validate, or otherwise transmit | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


