# WebService::Fastly::Object::NetworkProtectRuleSetResponse

## Load the model package
```perl
use WebService::Fastly::Object::NetworkProtectRuleSetResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_action** | [**NetworkProtectRuleSetDefaultAction**](NetworkProtectRuleSetDefaultAction.md) |  | 
**rules** | [**ARRAY[NetworkProtectRuleResponse]**](NetworkProtectRuleResponse.md) | Rules in evaluation order with read-only timestamps. | 
**id** | **string** | A read-only unique identifier for a Network Protect resource. | [readonly] 
**created_at** | **DateTime** | An ISO 8601 timestamp in UTC. | [readonly] 
**updated_at** | **DateTime** | An ISO 8601 timestamp in UTC. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


