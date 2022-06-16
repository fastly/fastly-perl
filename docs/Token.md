# Fastly::Object::Token

## Load the model package
```perl
use Fastly::Object::Token;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services** | **ARRAY[string]** | List of alphanumeric strings identifying services (optional). If no services are specified, the token will have access to all services on the account.  | [optional] [readonly] 
**name** | **string** | Name of the token. | [optional] 
**scope** | **string** | Space-delimited list of authorization scope. | [optional] [default to &#39;global&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


