# WebService::Fastly::Object::AutomationTokenResponse

## Load the model package
```perl
use WebService::Fastly::Object::AutomationTokenResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name of the token. | [optional] 
**role** | **string** |  | [optional] 
**services** | **ARRAY[string]** | (Optional) The service IDs of the services the token will have access to. Separate service IDs with a space. If no services are specified, the token will have access to all services on the account.  | [optional] 
**scope** | **string** | A space-delimited list of authorization scope. | [optional] [default to &#39;global&#39;]
**expires_at** | **string** | (optional) A UTC timestamp of when the token will expire. | [optional] 
**id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] 
**customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] 
**ip** | **string** | The IP address of the client that last used the token. | [optional] 
**user_agent** | **string** | The User-Agent header of the client that last used the token. | [optional] 
**tls_access** | **boolean** | Indicates whether TLS access is enabled for the token. | [optional] 
**last_used_at** | **DateTime** | A UTC timestamp of when the token was last used. | [optional] [readonly] 
**created_at** | **string** | A UTC timestamp of when the token was created. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


