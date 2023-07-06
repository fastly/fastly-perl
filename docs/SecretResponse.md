# WebService::Fastly::Object::SecretResponse

## Load the model package
```perl
use WebService::Fastly::Object::SecretResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the secret. | [optional] 
**digest** | **string** | An opaque identifier of the plaintext secret value. This can be used to determine if a secret value has changed. | [optional] [readonly] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**recreated** | **boolean** | True if the secret replaced a secret with the same name. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


