# WebService::Fastly::Object::MutualAuthenticationDataAttributes

## Load the model package
```perl
use WebService::Fastly::Object::MutualAuthenticationDataAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cert_bundle** | **string** | One or more certificates. Enter each individual certificate blob on a new line. Must be PEM-formatted. Required. | [optional] 
**enforced** | **boolean** | Determines whether Mutual TLS will fail closed (enforced) or fail open. A true value will require a successful Mutual TLS handshake for the connection to continue and will fail closed if unsuccessful. A false value will fail open and allow the connection to proceed. Optional. Defaults to true. | [optional] 
**name** | **string** | A custom name for your mutual authentication. Required. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


