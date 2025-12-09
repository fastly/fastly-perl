# WebService::Fastly::Object::PlatformMetadata

## Load the model package
```perl
use WebService::Fastly::Object::PlatformMetadata;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **DateTime** | An RFC-8339-formatted date and time indicating the inclusive start of the query time range. | [optional] 
**to** | **DateTime** | An RFC-8339-formatted date and time indicating the exclusive end of the query time range. | [optional] 
**next_cursor** | **string** | A string that can be used to request the next page of results, if any. | [optional] 
**group_by** | **string** | A comma-separated list of fields used to group and order the results. | [optional] 
**limit** | **int** | The maximum number of results to return. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


