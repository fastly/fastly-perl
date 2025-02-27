# WebService::Fastly::Object::KvStoreBatchResponseErrors

## Load the model package
```perl
use WebService::Fastly::Object::KvStoreBatchResponseErrors;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **string** | The key that the error corresponds to. This field will be empty if the object or one of its fields was not parseable. | [optional] 
**index** | **int** | The line number of the batch request body on which the error occurred (starting from 0 for the first line). | [optional] 
**code** | **string** | The HTTP response code for the item, or a 400 if the item&#39;s operation was not completed. | [optional] 
**reason** | **string** | A descriptor of this particular item&#39;s error. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


