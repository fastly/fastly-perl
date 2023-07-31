# WebService::Fastly::Object::LoggingGenericCommonResponse

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGenericCommonResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_type** | **string** | How the message should be formatted. | [optional] [default to &#39;classic&#39;]
**timestamp_format** | **string** | A timestamp format | [optional] [readonly] 
**compression_codec** | **string** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
**period** | **string** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to &#39;3600&#39;]
**gzip_level** | **string** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to &#39;0&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


