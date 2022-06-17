# WebService::Fastly::Object::TlsConfigurationResponseAttributesAllOf

## Load the model package
```perl
use WebService::Fastly::Object::TlsConfigurationResponseAttributesAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **boolean** | Signifies whether or not Fastly will use this configuration as a default when creating a new [TLS Activation](/reference/api/tls/custom-certs/activations/). | [optional] [readonly] 
**http_protocols** | **ARRAY[string]** | HTTP protocols available on your configuration. | [optional] [readonly] 
**tls_protocols** | **ARRAY[double]** | TLS protocols available on your configuration. | [optional] [readonly] 
**bulk** | **boolean** | Signifies whether the configuration is used for Platform TLS or not. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


