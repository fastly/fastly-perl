# WebService::Fastly::Object::RealtimeEntry

## Load the model package
```perl
use WebService::Fastly::Object::RealtimeEntry;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | **int** | The Unix timestamp at which this record&#39;s data was generated. | [optional] 
**aggregated** | [**RealtimeMeasurements**](RealtimeMeasurements.md) | Aggregates [measurements](#measurements-data-model) across all Fastly POPs. | [optional] 
**datacenter** | [**HASH[string,RealtimeMeasurements]**](RealtimeMeasurements.md) | Groups [measurements](#measurements-data-model) by POP. See the [POPs API](/reference/api/utils/pops/) for details of POP identifiers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


