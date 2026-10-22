# WebService::Fastly::Object::AutomationToken

## Load the model package
```perl
use WebService::Fastly::Object::AutomationToken;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name of the token. | [optional] 
**role** | **string** | The primary role on the token. For tokens with multiple roles, this returns the highest-priority role for backwards compatibility. | [optional] 
**roles** | [**ARRAY[AutomationTokenRole]**](AutomationTokenRole.md) | All roles assigned to the token. Each role includes an `id` and `name`. | [optional] 
**services** | **ARRAY[string]** | The service IDs of the services the token has access to. Empty when `limit_services` is `false` (full access) or when the token has no service access. | [optional] 
**limit_services** | **boolean** | When `true`, the token is restricted to only the services in the `services` array. When `false`, the token has access to all services. | [optional] 
**limit_workspaces** | **boolean** | When `true`, the token is restricted to only the workspaces in the `workspaces` array. When `false`, the token has access to all workspaces. Only applies to roles that support workspace access. | [optional] 
**workspaces** | **ARRAY[string]** | The workspace IDs of the workspaces the token has access to. Returns an empty array for tokens without workspace access. | [optional] 
**scope** | **string** | A space-delimited list of authorization scope. | [optional] [default to &#39;global&#39;]
**expires_at** | **string** | A UTC timestamp of when the token expires. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


