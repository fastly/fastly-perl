# WebService::Fastly::Object::RoutingConfigCondition

## Load the model package
```perl
use WebService::Fastly::Object::RoutingConfigCondition;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**ConditionType**](ConditionType.md) |  | 
**operator** | [**ConditionOperator**](ConditionOperator.md) |  | 
**key** | **string** | The key to evaluate. For `header` conditions this is the header name. Required for `header` conditions. | [optional] 
**value** | **string** | The value to compare against using the operator. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


