# WebService::Fastly::LoggingDigitaloceanApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingDigitaloceanApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_digocean**](LoggingDigitaloceanApi.md#create_log_digocean) | **POST** /service/{service_id}/version/{version_id}/logging/digitalocean | Create a DigitalOcean Spaces log endpoint
[**delete_log_digocean**](LoggingDigitaloceanApi.md#delete_log_digocean) | **DELETE** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Delete a DigitalOcean Spaces log endpoint
[**get_log_digocean**](LoggingDigitaloceanApi.md#get_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Get a DigitalOcean Spaces log endpoint
[**list_log_digocean**](LoggingDigitaloceanApi.md#list_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean | List DigitalOcean Spaces log endpoints
[**update_log_digocean**](LoggingDigitaloceanApi.md#update_log_digocean) | **PUT** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Update a DigitalOcean Spaces log endpoint


# **create_log_digocean**
> LoggingDigitaloceanResponse create_log_digocean(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, bucket_name => $bucket_name, access_key => $access_key, secret_key => $secret_key, domain => $domain, path => $path, public_key => $public_key)

Create a DigitalOcean Spaces log endpoint

Create a DigitalOcean Space for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDigitaloceanApi;
my $api_instance = WebService::Fastly::LoggingDigitaloceanApi->new(

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
my $bucket_name = "bucket_name_example"; # string | The name of the DigitalOcean Space.
my $access_key = "access_key_example"; # string | Your DigitalOcean Spaces account access key.
my $secret_key = "secret_key_example"; # string | Your DigitalOcean Spaces account secret key.
my $domain = 'nyc3.digitaloceanspaces.com'; # string | The domain of the DigitalOcean Spaces endpoint.
my $path = 'null'; # string | The path to upload logs to.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.

eval {
    my $result = $api_instance->create_log_digocean(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, bucket_name => $bucket_name, access_key => $access_key, secret_key => $secret_key, domain => $domain, path => $path, public_key => $public_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDigitaloceanApi->create_log_digocean: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **bucket_name** | **string**| The name of the DigitalOcean Space. | [optional] 
 **access_key** | **string**| Your DigitalOcean Spaces account access key. | [optional] 
 **secret_key** | **string**| Your DigitalOcean Spaces account secret key. | [optional] 
 **domain** | **string**| The domain of the DigitalOcean Spaces endpoint. | [optional] [default to &#39;nyc3.digitaloceanspaces.com&#39;]
 **path** | **string**| The path to upload logs to. | [optional] [default to &#39;null&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_digocean**
> InlineResponse200 delete_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name)

Delete a DigitalOcean Spaces log endpoint

Delete the DigitalOcean Space for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDigitaloceanApi;
my $api_instance = WebService::Fastly::LoggingDigitaloceanApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_digitalocean_name = "logging_digitalocean_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDigitaloceanApi->delete_log_digocean: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_digitalocean_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_digocean**
> LoggingDigitaloceanResponse get_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name)

Get a DigitalOcean Spaces log endpoint

Get the DigitalOcean Space for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDigitaloceanApi;
my $api_instance = WebService::Fastly::LoggingDigitaloceanApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_digitalocean_name = "logging_digitalocean_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDigitaloceanApi->get_log_digocean: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_digitalocean_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_digocean**
> ARRAY[LoggingDigitaloceanResponse] list_log_digocean(service_id => $service_id, version_id => $version_id)

List DigitalOcean Spaces log endpoints

List all of the DigitalOcean Spaces for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDigitaloceanApi;
my $api_instance = WebService::Fastly::LoggingDigitaloceanApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_digocean(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDigitaloceanApi->list_log_digocean: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingDigitaloceanResponse]**](LoggingDigitaloceanResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_digocean**
> LoggingDigitaloceanResponse update_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, bucket_name => $bucket_name, access_key => $access_key, secret_key => $secret_key, domain => $domain, path => $path, public_key => $public_key)

Update a DigitalOcean Spaces log endpoint

Update the DigitalOcean Space for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDigitaloceanApi;
my $api_instance = WebService::Fastly::LoggingDigitaloceanApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_digitalocean_name = "logging_digitalocean_name_example"; # string | The name for the real-time logging configuration.
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
my $bucket_name = "bucket_name_example"; # string | The name of the DigitalOcean Space.
my $access_key = "access_key_example"; # string | Your DigitalOcean Spaces account access key.
my $secret_key = "secret_key_example"; # string | Your DigitalOcean Spaces account secret key.
my $domain = 'nyc3.digitaloceanspaces.com'; # string | The domain of the DigitalOcean Spaces endpoint.
my $path = 'null'; # string | The path to upload logs to.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.

eval {
    my $result = $api_instance->update_log_digocean(service_id => $service_id, version_id => $version_id, logging_digitalocean_name => $logging_digitalocean_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, bucket_name => $bucket_name, access_key => $access_key, secret_key => $secret_key, domain => $domain, path => $path, public_key => $public_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDigitaloceanApi->update_log_digocean: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_digitalocean_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **bucket_name** | **string**| The name of the DigitalOcean Space. | [optional] 
 **access_key** | **string**| Your DigitalOcean Spaces account access key. | [optional] 
 **secret_key** | **string**| Your DigitalOcean Spaces account secret key. | [optional] 
 **domain** | **string**| The domain of the DigitalOcean Spaces endpoint. | [optional] [default to &#39;nyc3.digitaloceanspaces.com&#39;]
 **path** | **string**| The path to upload logs to. | [optional] [default to &#39;null&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

