# WebService::Fastly::Object::OriginInspector

## Load the model package
```perl
use WebService::Fastly::Object::OriginInspector;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | [**OriginInspectorSubsequentRequestTimestamp**](OriginInspectorSubsequentRequestTimestamp.md) |  | [optional] 
**aggregate_delay** | **int** | Offset of entry timestamps from the current time due to processing time. | [optional] 
**data** | [**ARRAY[OriginInspectorRealtimeEntry]**](OriginInspectorRealtimeEntry.md) | A list of report [entries](#entry-data-model), each representing one second of time. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


