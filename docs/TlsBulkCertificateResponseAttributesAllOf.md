# Fastly::Object::TlsBulkCertificateResponseAttributesAllOf

## Load the model package
```perl
use Fastly::Object::TlsBulkCertificateResponseAttributesAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**not_after** | **DateTime** | Time-stamp (GMT) when the certificate will expire. Must be in the future to be used to terminate TLS traffic. | [optional] [readonly] 
**not_before** | **DateTime** | Time-stamp (GMT) when the certificate will become valid. Must be in the past to be used to terminate TLS traffic. | [optional] [readonly] 
**replace** | **boolean** | A recommendation from Fastly indicating the key associated with this certificate is in need of rotation. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


