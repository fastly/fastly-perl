# WebService::Fastly::Object::TlsSubscriptionDataAttributes

## Load the model package
```perl
use WebService::Fastly::Object::TlsSubscriptionDataAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate_authority** | **string** | The entity that issues and certifies the TLS certificates for your subscription, either `certainly`, `lets-encrypt`, or `globalsign`. To migrate the subscription from one certificate authority to another, such as to migrate from &#39;lets-encrypt&#39; to &#39;certainly&#39;,  pass `certificate_authority` to the PATCH endpoint. To migrate from &#39;globalsign&#39; to &#39;certainly&#39;, contact Fastly Support. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


