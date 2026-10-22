# WebService::Fastly::Object::AutomationTokenWorkspacesResponse

## Load the model package
```perl
use WebService::Fastly::Object::AutomationTokenWorkspacesResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ARRAY[AutomationTokenWorkspace]**](AutomationTokenWorkspace.md) | Workspaces the token can access. Empty if the token has no workspace-specific permissions or if `limit_workspaces` is `false` (unrestricted access). | 
**meta** | [**AutomationTokenWorkspacesMeta**](AutomationTokenWorkspacesMeta.md) |  | 
**limit_workspaces** | **boolean** | Indicates whether workspace access is restricted: - `true`: Token can only access workspaces listed in `data` - `false`: Token has unrestricted access to all workspaces  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


