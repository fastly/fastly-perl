# WebService::Fastly::Object::NetworkProtectNetworkUpdate

## Load the model package
```perl
use WebService::Fastly::Object::NetworkProtectNetworkUpdate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | Optional descriptive text for the network. This metadata does not change traffic handling. Null clears it on update. | [optional] 
**name** | **string** | A human-readable name, unique within the customer. | [optional] 
**rule_set_id** | **string** | Custom rule-set attachment is unavailable. Omission, null, and an empty string preserve the current backend-assigned rule set. | [optional] 
**endpoint_policies** | [**ARRAY[NetworkProtectEndpointPolicy]**](NetworkProtectEndpointPolicy.md) | Complete endpoint policy configuration. A network has at most one policy per region and may have no policies. | [optional] 
**advertise** | **boolean** | Desired advertisement state, which is not the same as observed route state. Enabling it requires approved LOA, valid ROA, and a ready default-region delivery policy. A later ROA failure does not turn an existing advertisement off; losing LOA approval or the last ready default endpoint does. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


