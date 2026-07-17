# WebService::Fastly::Object::RuleResponseAllOf

## Load the model package
```perl
use WebService::Fastly::Object::RuleResponseAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Alphanumeric string identifying the rule. Stable across versions of the routing config. | [optional] [readonly] 
**is_default** | **boolean** | Whether this is the default (catch-all) rule for the path. | [optional] [readonly] 
**action** | [**Action**](Action.md) |  | [optional] 
**conditions** | [**ARRAY[RoutingConfigCondition]**](RoutingConfigCondition.md) | The conditions a request must satisfy for this rule to match. Empty for the default rule. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


