# WebService::Fastly::Object::AutomationTokenCreateRequestAttributes

## Load the model package
```perl
use WebService::Fastly::Object::AutomationTokenCreateRequestAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | name of the token | [optional] 
**role** | **string** |  | [optional] 
**services** | **ARRAY[string]** | List of service ids to limit the token | [optional] 
**scope** | **string** |  | [optional] [default to &#39;global&#39;]
**expires_at** | **DateTime** | A UTC timestamp of when the token will expire. | [optional] 
**tls_access** | **boolean** | Indicates whether TLS access is enabled for the token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


