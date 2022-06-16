# Fastly::Object::TlsBulkCertificateDataAttributes

## Load the model package
```perl
use Fastly::Object::TlsBulkCertificateDataAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_untrusted_root** | **boolean** | Allow certificates that chain to untrusted roots. | [optional] [default to false]
**cert_blob** | **string** | The PEM-formatted certificate blob. Required. | [optional] 
**intermediates_blob** | **string** | The PEM-formatted chain of intermediate blobs. Required. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


