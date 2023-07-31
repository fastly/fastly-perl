# WebService::Fastly::Object::LoggingSftpResponseAllOf

## Load the model package
```perl
use WebService::Fastly::Object::LoggingSftpResponseAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **string** | A hostname or IPv4 address. | [optional] 
**port** | **string** | The port number. | [optional] [default to &#39;22&#39;]
**period** | **string** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to &#39;3600&#39;]
**gzip_level** | **int** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


