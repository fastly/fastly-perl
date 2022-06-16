# Fastly::Object::Realtime

## Load the model package
```perl
use Fastly::Object::Realtime;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **int** | Value to use for subsequent requests. | [optional] 
**aggregate_delay** | **int** | How long the system will wait before aggregating messages for each second. The most recent data returned will have happened at the moment of the request, minus the aggregation delay. | [optional] 
**data** | [**ARRAY[RealtimeEntry]**](RealtimeEntry.md) | A list of [records](#record-data-model), each representing one second of time. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


