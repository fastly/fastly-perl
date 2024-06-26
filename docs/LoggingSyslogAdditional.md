# WebService::Fastly::Object::LoggingSyslogAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingSyslogAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional] 
**hostname** | **string** | The hostname used for the syslog endpoint. | [optional] 
**ipv4** | **string** | The IPv4 address used for the syslog endpoint. | [optional] 
**token** | **string** | Whether to prepend each message with a specific token. | [optional] [default to &#39;null&#39;]
**use_tls** | [**LoggingUseTlsString**](LoggingUseTlsString.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


