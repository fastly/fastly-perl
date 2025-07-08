# WebService::Fastly::Object::LoggingGooglePubsubAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGooglePubsubAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **string** | The Google Cloud Pub/Sub topic to which logs will be published. Required. | [optional] 
**format** | **string** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
**project_id** | **string** | Your Google Cloud Platform project ID. Required | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


