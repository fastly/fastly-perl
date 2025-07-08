# WebService::Fastly::Object::LoggingHttpsAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingHttpsAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | The URL to send logs to. Must use HTTPS. Required. | [optional] 
**request_max_entries** | **int** | The maximum number of logs sent in one request. Defaults `0` (10k). | [optional] [default to 0]
**request_max_bytes** | **int** | The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional] [default to 0]
**content_type** | **string** | Content type of the header sent with the request. | [optional] [default to &#39;null&#39;]
**header_name** | **string** | Name of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
**message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional] 
**header_value** | **string** | Value of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
**method** | **string** | HTTP method used for request. | [optional] [default to &#39;POST&#39;]
**json_format** | **string** | Enforces valid JSON formatting for log entries. | [optional] 
**format** | **string** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


