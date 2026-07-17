# WebService::Fastly::Object::DraftDiff

## Load the model package
```perl
use WebService::Fastly::Object::DraftDiff;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**added** | [**ARRAY[PathWithRules]**](PathWithRules.md) | Paths that exist in the draft but not in the active version. | [optional] 
**deleted** | [**ARRAY[PathWithRules]**](PathWithRules.md) | Paths that exist in the active version but not in the draft. | [optional] 
**modified** | [**ARRAY[PathChange]**](PathChange.md) | Paths that exist in both versions but have changed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


