# WebService::Fastly::Object::OriginInspectorRealtimeEntry

## Load the model package
```perl
use WebService::Fastly::Object::OriginInspectorRealtimeEntry;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | **int** | The Unix timestamp at which this record&#39;s data was generated. | [optional] 
**aggregated** | [**HASH[string,OriginInspectorMeasurements]**](OriginInspectorMeasurements.md) | Groups [measurements](#measurements-data-model) by backend name. | [optional] 
**datacenter** | **HASH[string,HASH[string,OriginInspectorMeasurements]]** | Groups [measurements](#measurements-data-model) by POP, then backend name. See the [POPs API](https://www.fastly.com/documentation/reference/api/utils/pops/) for details about POP identifiers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


