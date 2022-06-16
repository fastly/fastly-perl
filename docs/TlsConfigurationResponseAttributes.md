# Fastly::Object::TlsConfigurationResponseAttributes

## Load the model package
```perl
use Fastly::Object::TlsConfigurationResponseAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**default** | **boolean** | Signifies whether or not Fastly will use this configuration as a default when creating a new [TLS Activation](/reference/api/tls/custom-certs/activations/). | [optional] [readonly] 
**http_protocols** | **ARRAY[string]** | HTTP protocols available on your configuration. | [optional] [readonly] 
**tls_protocols** | **ARRAY[double]** | TLS protocols available on your configuration. | [optional] [readonly] 
**bulk** | **boolean** | Signifies whether the configuration is used for Platform TLS or not. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


