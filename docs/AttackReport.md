# WebService::Fastly::Object::AttackReport

## Load the model package
```perl
use WebService::Fastly::Object::AttackReport;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of the workspace. | 
**name** | **string** | Name of the workspace. | 
**total_count** | **int** | Total request count | 
**blocked_count** | **int** | Blocked request count | 
**flagged_count** | **int** | Flagged request count | 
**attack_count** | **int** | Attack request count | 
**all_flagged_ip_count** | **int** | Count of IPs that have been flagged | 
**flagged_ip_count** | **int** | Count of currently flagged IPs | 
**top_attack_signals** | [**ARRAY[AttackSignal]**](AttackSignal.md) |  | 
**top_attack_sources** | [**ARRAY[AttackSource]**](AttackSource.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


