# WebService::Fastly::Object::PlatformDdosResponse

## Load the model package
```perl
use WebService::Fastly::Object::PlatformDdosResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Whether or not we were able to successfully execute the query. | [optional] 
**meta** | [**HistoricalDdosMeta**](HistoricalDdosMeta.md) |  | [optional] 
**msg** | **string** | If the query was not successful, this will provide a string that explains why. | [optional] 
**data** | [**ARRAY[PlatformDdosEntry]**](PlatformDdosEntry.md) | A list of timeseries. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


