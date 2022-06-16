# Fastly::Object::BillingTotal

## Load the model package
```perl
use Fastly::Object::BillingTotal;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | **double** | The total amount of bandwidth used this month (See bandwidth_units for measurement). | [optional] 
**bandwidth_cost** | **double** | The cost of the bandwidth used this month in USD. | [optional] 
**bandwidth_units** | **string** | Bandwidth measurement units based on billing plan. | [optional] 
**cost** | **double** | The final amount to be paid. | [optional] 
**cost_before_discount** | **double** | Total incurred cost plus extras cost. | [optional] 
**discount** | **double** | Calculated discount rate. | [optional] 
**extras** | [**ARRAY[BillingTotalExtrasInner]**](BillingTotalExtrasInner.md) | A list of any extras for this invoice. | [optional] 
**extras_cost** | **double** | Total cost of all extras. | [optional] 
**incurred_cost** | **double** | The total cost of bandwidth and requests used this month. | [optional] 
**overage** | **double** | How much over the plan minimum has been incurred. | [optional] 
**plan_code** | **string** | The short code the plan this invoice was generated under. | [optional] 
**plan_minimum** | **double** | The minimum cost of this plan. | [optional] 
**plan_name** | **string** | The name of the plan this invoice was generated under. | [optional] 
**requests** | **double** | The total number of requests used this month. | [optional] 
**requests_cost** | **double** | The cost of the requests used this month. | [optional] 
**terms** | **string** | Payment terms. Almost always Net15. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


