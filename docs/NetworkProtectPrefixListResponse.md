# WebService::Fastly::Object::NetworkProtectPrefixListResponse

## Load the model package
```perl
use WebService::Fastly::Object::NetworkProtectPrefixListResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | A human-readable name, unique within the customer. | 
**family** | [**NetworkProtectPrefixListFamily**](NetworkProtectPrefixListFamily.md) |  | 
**addresses** | **ARRAY[string]** | Complete canonical list contents. Bare addresses are canonicalized, CIDRs are masked, equivalent entries are deduplicated, and overlaps are retained. | 
**id** | **string** | A read-only unique identifier for a Network Protect resource. | [readonly] 
**created_at** | **DateTime** | An ISO 8601 timestamp in UTC. | [readonly] 
**updated_at** | **DateTime** | An ISO 8601 timestamp in UTC. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


