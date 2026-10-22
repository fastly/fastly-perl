# WebService::Fastly::Object::NetworkProtectPrefixListCreate

## Load the model package
```perl
use WebService::Fastly::Object::NetworkProtectPrefixListCreate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | A human-readable name, unique within the customer. | 
**family** | [**NetworkProtectPrefixListFamily**](NetworkProtectPrefixListFamily.md) |  | 
**addresses** | **ARRAY[string]** | Complete request contents. At most 1000 entries may be submitted; bare addresses are canonicalized and CIDRs are masked by the backend. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


