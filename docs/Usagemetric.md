# WebService::Fastly::Object::Usagemetric

## Load the model package
```perl
use WebService::Fastly::Object::Usagemetric;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **string** | The year and month of the usage element. | [optional] 
**usage_type** | **string** | The usage type identifier for the usage. This is a single, billable metric for the product. | [optional] 
**name** | **string** | Full name of the product usage type as it might appear on a customer&#39;s invoice. | [optional] 
**region** | **string** | The geographical area applicable for regionally based products. | [optional] 
**unit** | **string** | The unit for the usage as shown on an invoice. If there is no explicit unit, this field will be \&quot;unit\&quot; (e.g., a request with `product_id` of &#39;cdn_usage&#39; and `usage_type` of &#39;North America Requests&#39; has no unit, and will return \&quot;unit\&quot;). | [optional] 
**quantity** | **double** | The quantity of the usage for the product. | [optional] 
**raw_quantity** | **double** | The raw units measured for the product. | [optional] 
**product_id** | **string** | The product identifier associated with the usage type. This corresponds to a Fastly product offering. | [optional] 
**last_updated_at** | **string** | The date when the usage metric was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


