# WebService::Fastly::Object::TlsCommonResponse

## Load the model package
```perl
use WebService::Fastly::Object::TlsCommonResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tls_ca_cert** | **string** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
**tls_client_cert** | **string** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
**tls_client_key** | **string** | The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
**tls_cert_hostname** | **string** | The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional] [default to &#39;null&#39;]
**use_tls** | **string** | Whether to use TLS. | [optional] [default to &#39;0&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


