# WebService::Fastly::Object::EventAttributes

## Load the model package
```perl
use WebService::Fastly::Object::EventAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin** | **boolean** | Indicates if event was performed by Fastly. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**customer_id** | **string** |  | [optional] [readonly] 
**description** | **string** | Description of the event. | [optional] 
**event_type** | **string** | Type of event. Can be used with `filter[event_type]` | [optional] 
**ip** | **string** | IP addresses that the event was requested from. | [optional] 
**metadata** | **object** | Hash of key value pairs of additional information. | [optional] 
**service_id** | **string** |  | [optional] [readonly] 
**user_id** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


