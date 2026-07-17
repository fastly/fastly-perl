# WebService::Fastly::Object::RuleCreate

## Load the model package
```perl
use WebService::Fastly::Object::RuleCreate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | [**Action**](Action.md) |  | 
**conditions** | [**ARRAY[RoutingConfigCondition]**](RoutingConfigCondition.md) | The conditions a request must satisfy for this rule to match. An empty array indicates the default rule for the path. | 
**position** | [**Position**](Position.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


