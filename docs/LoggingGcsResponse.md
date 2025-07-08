# WebService::Fastly::Object::LoggingGcsResponse

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGcsResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name for the real-time logging configuration. | [optional] 
**placement** | **string** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
**response_condition** | **string** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
**format** | **string** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
**log_processing_region** | **string** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
**format_version** | **string** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to &#39;2&#39;]
**message_type** | **string** | How the message should be formatted. | [optional] [default to &#39;classic&#39;]
**timestamp_format** | **string** | A timestamp format | [optional] [readonly] 
**compression_codec** | **string** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
**period** | **string** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to &#39;3600&#39;]
**gzip_level** | **string** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to &#39;0&#39;]
**user** | **string** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
**secret_key** | **string** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
**account_name** | **string** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**service_id** | **string** |  | [optional] [readonly] 
**version** | **string** |  | [optional] [readonly] 
**bucket_name** | **string** | The name of the GCS bucket. | [optional] 
**path** | **string** |  | [optional] [default to &#39;/&#39;]
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
**project_id** | **string** | Your Google Cloud Platform project ID. Required | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


