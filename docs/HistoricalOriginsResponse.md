# WebService::Fastly::Object::HistoricalOriginsResponse

## Load the model package
```perl
use WebService::Fastly::Object::HistoricalOriginsResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Whether or not we were able to successfully execute the query. | [optional] 
**meta** | [**OriginInspectorHistoricalMeta**](OriginInspectorHistoricalMeta.md) |  | [optional] 
**msg** | **string** | If the query was not successful, this will provide a string that explains why. | [optional] 
**data** | [**ARRAY[OriginInspectorEntry]**](OriginInspectorEntry.md) | A list of timeseries. Each individual timeseries represents a unique combination of dimensions, such as origin host, region or POP. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


