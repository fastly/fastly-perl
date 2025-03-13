# WebService::Fastly::Object::AutomationTokenResponseAllOf

## Load the model package
```perl
use WebService::Fastly::Object::AutomationTokenResponseAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] 
**customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] 
**role** | **string** |  | [optional] 
**ip** | **string** | The IP address of the client that last used the token. | [optional] 
**user_agent** | **string** | The User-Agent header of the client that last used the token. | [optional] 
**tls_access** | **boolean** | Indicates whether TLS access is enabled for the token. | [optional] 
**last_used_at** | **DateTime** | A UTC timestamp of when the token was last used. | [optional] [readonly] 
**created_at** | **string** | A UTC timestamp of when the token was created. | [optional] 
**expires_at** | **string** | (optional) A UTC timestamp of when the token will expire. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


