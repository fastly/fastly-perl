# WebService::Fastly::Object::NetworkProtectPrefixList

## Load the model package
```perl
use WebService::Fastly::Object::NetworkProtectPrefixList;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | A human-readable name, unique within the customer. | 
**family** | [**NetworkProtectPrefixListFamily**](NetworkProtectPrefixListFamily.md) |  | 
**addresses** | **ARRAY[string]** | Complete canonical list contents. Bare addresses are canonicalized, CIDRs are masked, equivalent entries are deduplicated, and overlaps are retained. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


