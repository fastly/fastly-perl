# WebService::Fastly::Object::DdosProtectionAttributeStats

## Load the model package
```perl
use WebService::Fastly::Object::DdosProtectionAttributeStats;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of an attribute type used in traffic stats. Currently, supported values are source_ip, country_code, host, asn, source_ip_prefix, user_agent, method_path. | [optional] 
**values** | [**ARRAY[DdosProtectionAttributeValue]**](DdosProtectionAttributeValue.md) | Values for traffic attribute. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


