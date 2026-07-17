# WebService::Fastly::Object::PathChange

## Load the model package
```perl
use WebService::Fastly::Object::PathChange;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path_id** | **string** | Alphanumeric string identifying the path. Stable across versions of the routing config. | [optional] [readonly] 
**path** | **string** | The current path pattern. | [optional] 
**old_path** | **string** | The previous path pattern, if it changed. | [optional] 
**rules_added** | [**ARRAY[RuleResponse]**](RuleResponse.md) | Rules that were added to this path. | [optional] 
**rules_changed** | [**ARRAY[RuleChange]**](RuleChange.md) | Rules that were modified on this path. | [optional] 
**rules_deleted** | [**ARRAY[RuleResponse]**](RuleResponse.md) | Rules that were removed from this path. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


