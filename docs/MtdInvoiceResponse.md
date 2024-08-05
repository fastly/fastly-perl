# WebService::Fastly::Object::MtdInvoiceResponse

## Load the model package
```perl
use WebService::Fastly::Object::MtdInvoiceResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **string** | The Customer ID associated with the invoice. | [optional] 
**invoice_id** | **string** | An alphanumeric string identifying the invoice. | [optional] 
**billing_start_date** | **DateTime** | The date and time (in ISO 8601 format) for the initiation point of a billing cycle, signifying the start of charges for a service or subscription. | [optional] 
**billing_end_date** | **DateTime** | The date and time (in ISO 8601 format) for the termination point of a billing cycle, signifying the end of charges for a service or subscription. | [optional] 
**monthly_transaction_amount** | **string** | The total billable amount for invoiced services charged within a single month. | [optional] 
**transaction_line_items** | [**ARRAY[Mtdlineitems]**](Mtdlineitems.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


