# WebService::Fastly::LoggingGcsApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingGcsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_gcs**](LoggingGcsApi.md#create_log_gcs) | **POST** /service/{service_id}/version/{version_id}/logging/gcs | Create a GCS log endpoint
[**delete_log_gcs**](LoggingGcsApi.md#delete_log_gcs) | **DELETE** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Delete a GCS log endpoint
[**get_log_gcs**](LoggingGcsApi.md#get_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Get a GCS log endpoint
[**list_log_gcs**](LoggingGcsApi.md#list_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs | List GCS log endpoints
[**update_log_gcs**](LoggingGcsApi.md#update_log_gcs) | **PUT** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Update a GCS log endpoint


# **create_log_gcs**
> LoggingGcsResponse create_log_gcs(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, user => $user, secret_key => $secret_key, account_name => $account_name, bucket_name => $bucket_name, path => $path, public_key => $public_key, project_id => $project_id)

Create a GCS log endpoint

Create GCS logging for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGcsApi;
my $api_instance = WebService::Fastly::LoggingGcsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $message_type = 'classic'; # string | How the message should be formatted.
my $timestamp_format = "timestamp_format_example"; # string | A timestamp format
my $period = 3600; # int | How frequently log files are finalized so they can be available for reading (in seconds).
my $gzip_level = 0; # int | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $compression_codec = "compression_codec_example"; # string | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $bucket_name = "bucket_name_example"; # string | The name of the GCS bucket.
my $path = '/'; # string | 
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->create_log_gcs(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, user => $user, secret_key => $secret_key, account_name => $account_name, bucket_name => $bucket_name, path => $path, public_key => $public_key, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGcsApi->create_log_gcs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **bucket_name** | **string**| The name of the GCS bucket. | [optional] 
 **path** | **string**|  | [optional] [default to &#39;/&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_gcs**
> InlineResponse200 delete_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name)

Delete a GCS log endpoint

Delete the GCS Logging for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGcsApi;
my $api_instance = WebService::Fastly::LoggingGcsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_gcs_name = "logging_gcs_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGcsApi->delete_log_gcs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_gcs_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_gcs**
> LoggingGcsResponse get_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name)

Get a GCS log endpoint

Get the GCS Logging for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGcsApi;
my $api_instance = WebService::Fastly::LoggingGcsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_gcs_name = "logging_gcs_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGcsApi->get_log_gcs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_gcs_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_gcs**
> ARRAY[LoggingGcsResponse] list_log_gcs(service_id => $service_id, version_id => $version_id)

List GCS log endpoints

List all of the GCS log endpoints for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGcsApi;
my $api_instance = WebService::Fastly::LoggingGcsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_gcs(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGcsApi->list_log_gcs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingGcsResponse]**](LoggingGcsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_gcs**
> LoggingGcsResponse update_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, user => $user, secret_key => $secret_key, account_name => $account_name, bucket_name => $bucket_name, path => $path, public_key => $public_key, project_id => $project_id)

Update a GCS log endpoint

Update the GCS for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGcsApi;
my $api_instance = WebService::Fastly::LoggingGcsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_gcs_name = "logging_gcs_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $message_type = 'classic'; # string | How the message should be formatted.
my $timestamp_format = "timestamp_format_example"; # string | A timestamp format
my $period = 3600; # int | How frequently log files are finalized so they can be available for reading (in seconds).
my $gzip_level = 0; # int | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $compression_codec = "compression_codec_example"; # string | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $bucket_name = "bucket_name_example"; # string | The name of the GCS bucket.
my $path = '/'; # string | 
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->update_log_gcs(service_id => $service_id, version_id => $version_id, logging_gcs_name => $logging_gcs_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, user => $user, secret_key => $secret_key, account_name => $account_name, bucket_name => $bucket_name, path => $path, public_key => $public_key, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGcsApi->update_log_gcs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_gcs_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **bucket_name** | **string**| The name of the GCS bucket. | [optional] 
 **path** | **string**|  | [optional] [default to &#39;/&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

