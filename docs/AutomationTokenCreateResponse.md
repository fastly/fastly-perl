# WebService::Fastly::Object::AutomationTokenCreateResponse

## Load the model package
```perl
use WebService::Fastly::Object::AutomationTokenCreateResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name of the token. | [optional] 
**role** | **string** | The role on the token. | [optional] 
**services** | **ARRAY[string]** | (Optional) The service IDs of the services the token will have access to. Separate service IDs with a space. If no services are specified, the token will have access to all services on the account.  | [optional] 
**scope** | **string** | A space-delimited list of authorization scope. | [optional] [default to &#39;global&#39;]
**expires_at** | **string** | A UTC time-stamp of when the token expires. | [optional] 
**created_at** | **DateTime** | A UTC time-stamp of when the token was created.  | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] 
**user_id** | [**ReadOnlyUserId**](ReadOnlyUserId.md) |  | [optional] 
**customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] 
**sudo_expires_at** | **DateTime** |  | [optional] [readonly] 
**access_token** | **string** |  | [optional] [readonly] 
**last_used_at** | **DateTime** | A UTC time-stamp of when the token was last used. | [optional] [readonly] 
**user_agent** | **string** | The User-Agent header of the client that last used the token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


