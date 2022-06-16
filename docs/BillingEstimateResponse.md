# Fastly::Object::BillingEstimateResponse

## Load the model package
```perl
use Fastly::Object::BillingEstimateResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_time** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**start_time** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**invoice_id** | **string** |  | [optional] [readonly] 
**customer_id** | **string** |  | [optional] [readonly] 
**status** | [**BillingStatus**](BillingStatus.md) |  | [optional] 
**total** | [**BillingTotal**](BillingTotal.md) |  | [optional] 
**regions** | [**HASH[string,BillingRegionsValue]**](BillingRegionsValue.md) |  | [optional] 
**lines** | [**ARRAY[BillingEstimateResponseAllOfLines]**](BillingEstimateResponseAllOfLines.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


