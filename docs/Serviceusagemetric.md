# WebService::Fastly::Object::Serviceusagemetric

## Load the model package
```perl
use WebService::Fastly::Object::Serviceusagemetric;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **string** |  | [optional] [readonly] 
**service_id** | **string** | Service ID associated with the usage. | [optional] 
**service_name** | **string** | Name of the service associated with the usage. | [optional] 
**usage_units** | **double** | The quantity of the usage for the billing period. Amount will be in the units provided in the parent object (e.g., a quantity of `1.3` with a unit of `gb` would have a usage amount of 1.3 gigabytes). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


