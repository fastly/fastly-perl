# WebService::Fastly::Object::BotManagementWorkspaceResponse

## Load the model package
```perl
use WebService::Fastly::Object::BotManagementWorkspaceResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The display name of the workspace. | 
**description** | **string** | A description of the workspace. | [optional] 
**protection_mode** | [**BotManagementProtectionMode**](BotManagementProtectionMode.md) |  | 
**id** | **string** | A UUID used to uniquely identify the workspace. | [readonly] 
**services** | **ARRAY[string]** | The IDs of the services attached to this workspace. | [optional] [readonly] 
**created_at** | **DateTime** | The date and time the workspace was created, in RFC 3339 format. | [readonly] 
**updated_at** | **DateTime** | The date and time the workspace was last updated, in RFC 3339 format. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


