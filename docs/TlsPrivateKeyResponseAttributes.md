# Fastly::Object::TlsPrivateKeyResponseAttributes

## Load the model package
```perl
use Fastly::Object::TlsPrivateKeyResponseAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**name** | **string** | A customizable name for your private key. | [optional] 
**key_length** | **int** | The key length used to generate the private key. | [optional] [readonly] 
**key_type** | **string** | The algorithm used to generate the private key. Must be `RSA`. | [optional] [readonly] 
**replace** | **boolean** | A recommendation from Fastly to replace this private key and all associated certificates. | [optional] [readonly] 
**public_key_sha1** | **string** | Useful for safely identifying the key. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


