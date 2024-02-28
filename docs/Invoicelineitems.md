# WebService::Fastly::Object::Invoicelineitems

## Load the model package
```perl
use WebService::Fastly::Object::Invoicelineitems;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | Invoice line item transaction name. | [optional] 
**amount** | **double** | Billed amount for line item. | [optional] 
**credit_coupon_code** | **string** | Discount coupon associated with the invoice for any account or service credits. | [optional] 
**rate** | **double** | Price per unit. | [optional] 
**units** | **double** | Total number of units of usage. | [optional] 
**product_name** | **string** | The name of the product. | [optional] 
**product_group** | **string** | The broader classification of the product (e.g., `Compute` or `Full-Site Delivery`). | [optional] 
**region** | **string** | The geographical area applicable for regionally based products. | [optional] 
**usage_type** | **string** | The unit of measure (e.g., `requests` or `bandwidth`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


