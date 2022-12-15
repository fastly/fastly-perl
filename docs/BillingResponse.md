# WebService::Fastly::Object::BillingResponse

## Load the model package
```perl
use WebService::Fastly::Object::BillingResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_time** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**start_time** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**invoice_id** | **string** |  | [optional] [readonly] 
**customer_id** | **string** |  | [optional] [readonly] 
**vendor_state** | **string** | The current state of our third-party billing vendor. One of `up` or `down`. | [optional] [readonly] 
**status** | [**BillingStatus**](BillingStatus.md) |  | [optional] 
**total** | [**BillingTotal**](BillingTotal.md) |  | [optional] 
**regions** | **HASH[string,HASH[string,object]]** | Breakdown of regional data for products that are region based. | [optional] 
**line_items** | [**ARRAY[BillingResponseLineItem]**](BillingResponseLineItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


