# WebService::Fastly::Object::LoggingGrafanacloudlogsAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGrafanacloudlogsAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**format** | **string** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] 
**user** | **string** | The Grafana Cloud Logs Dataset you want to log to. | [optional] 
**url** | **string** | The URL of the Loki instance in your Grafana stack. | [optional] 
**token** | **string** | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] 
**index** | **string** | The Stream Labels, a JSON string used to identify the stream. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


