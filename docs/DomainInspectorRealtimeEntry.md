# WebService::Fastly::Object::DomainInspectorRealtimeEntry

## Load the model package
```perl
use WebService::Fastly::Object::DomainInspectorRealtimeEntry;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | [**RecordedTimestamp**](RecordedTimestamp.md) |  | [optional] 
**aggregated** | [**HASH[string,DomainInspectorMeasurements]**](DomainInspectorMeasurements.md) | Groups [measurements](#measurements-data-model) by backend name and then by IP address. | [optional] 
**datacenter** | **HASH[string,HASH[string,DomainInspectorMeasurements]]** | Groups [measurements](#measurements-data-model) by POP, then backend name, and then IP address. See the [POPs API](https://www.fastly.com/documentation/reference/api/utils/pops/) for details about POP identifiers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


