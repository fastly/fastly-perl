# WebService::Fastly::Object::OriginInspectorHistoricalData

## Load the model package
```perl
use WebService::Fastly::Object::OriginInspectorHistoricalData;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dimensions** | [**OriginInspectorDimensions**](OriginInspectorDimensions.md) |  | [optional] 
**values** | [**ARRAY[OriginInspectorValues]**](OriginInspectorValues.md) | An array of values representing the metric values at each point in time. Note that this dataset is sparse: only the keys with non-zero values will be included in the record.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


