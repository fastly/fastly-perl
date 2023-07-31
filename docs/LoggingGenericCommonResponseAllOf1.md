# WebService::Fastly::Object::LoggingGenericCommonResponseAllOf1

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGenericCommonResponseAllOf1;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | **string** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to &#39;3600&#39;]
**gzip_level** | **string** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to &#39;0&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


