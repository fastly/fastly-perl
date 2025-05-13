# WebService::Fastly::Object::DdosProtectionRuleAllOf

## Load the model package
```perl
use WebService::Fastly::Object::DdosProtectionRuleAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique ID of the rule. | [optional] 
**name** | **string** | A human-readable name for the rule. | [optional] 
**action** | [**DdosProtectionAction**](DdosProtectionAction.md) |  | [optional] 
**customer_id** | **string** | Alphanumeric string identifying the customer. | [optional] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**source_ip** | **string** | Source IP address attribute. | [optional] 
**country_code** | **string** | Country code attribute. | [optional] 
**host** | **string** | Host attribute. | [optional] 
**asn** | **string** | ASN attribute. | [optional] 
**source_ip_prefix** | **string** | Source IP prefix attribute. | [optional] 
**additional_attributes** | **ARRAY[string]** | Attribute category for additional, unlisted attributes used in a rule. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


