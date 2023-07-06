# WebService::Fastly::Object::LegacyWafFirewall

## Load the model package
```perl
use WebService::Fastly::Object::LegacyWafFirewall;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_push** | **string** | Date and time that VCL was last pushed to cache nodes. | [optional] 
**prefetch_condition** | **string** | Name of the corresponding condition object. | [optional] 
**response** | **string** | Name of the corresponding response object. | [optional] 
**version** | [**ReadOnlyVersion**](ReadOnlyVersion.md) |  | [optional] 
**service_id** | [**ReadOnlyServiceId**](ReadOnlyServiceId.md) |  | [optional] 
**disabled** | **boolean** | The status of the firewall. | [optional] [default to false]
**rule_statuses_log_count** | **int** | The number of rule statuses set to log. | [optional] 
**rule_statuses_block_count** | **int** | The number of rule statuses set to block. | [optional] 
**rule_statuses_disabled_count** | **int** | The number of rule statuses set to disabled. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


