# WebService::Fastly::Object::TokenResponseAllOf

## Load the model package
```perl
use WebService::Fastly::Object::TokenResponseAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [readonly] 
**user_id** | **string** |  | [optional] [readonly] 
**created_at** | **string** | Time-stamp (UTC) of when the token was created. | [optional] 
**last_used_at** | **string** | Time-stamp (UTC) of when the token was last used. | [optional] [readonly] 
**expires_at** | **string** | Time-stamp (UTC) of when the token will expire (optional). | [optional] 
**ip** | **string** | IP Address of the client that last used the token. | [optional] 
**user_agent** | **string** | User-Agent header of the client that last used the token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

