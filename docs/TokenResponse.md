# WebService::Fastly::Object::TokenResponse

## Load the model package
```perl
use WebService::Fastly::Object::TokenResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services** | **ARRAY[string]** | List of alphanumeric strings identifying services (optional). If no services are specified, the token will have access to all services on the account.  | [optional] [readonly] 
**name** | **string** | Name of the token. | [optional] 
**scope** | **string** | Space-delimited list of authorization scope. | [optional] [default to &#39;global&#39;]
**created_at** | **string** | Time-stamp (UTC) of when the token was created. | [optional] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** |  | [optional] [readonly] 
**user_id** | **string** |  | [optional] [readonly] 
**last_used_at** | **string** | Time-stamp (UTC) of when the token was last used. | [optional] [readonly] 
**expires_at** | **string** | Time-stamp (UTC) of when the token will expire (optional). | [optional] 
**ip** | **string** | IP Address of the client that last used the token. | [optional] 
**user_agent** | **string** | User-Agent header of the client that last used the token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


