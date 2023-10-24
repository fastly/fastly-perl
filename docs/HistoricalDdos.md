# WebService::Fastly::Object::HistoricalDdos

## Load the model package
```perl
use WebService::Fastly::Object::HistoricalDdos;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Whether or not we were able to successfully execute the query. | [optional] 
**meta** | [**HistoricalDdosMeta**](HistoricalDdosMeta.md) |  | [optional] 
**msg** | **string** | If the query was not successful, this will provide a string that explains why. | [optional] 
**data** | [**ARRAY[PlatformDdosDataItems]**](PlatformDdosDataItems.md) | A list of [entries](#entry-data-model). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


