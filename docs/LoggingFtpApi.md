# WebService::Fastly::LoggingFtpApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingFtpApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_ftp**](LoggingFtpApi.md#create_log_ftp) | **POST** /service/{service_id}/version/{version_id}/logging/ftp | Create an FTP log endpoint
[**delete_log_ftp**](LoggingFtpApi.md#delete_log_ftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Delete an FTP log endpoint
[**get_log_ftp**](LoggingFtpApi.md#get_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Get an FTP log endpoint
[**list_log_ftp**](LoggingFtpApi.md#list_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp | List FTP log endpoints
[**update_log_ftp**](LoggingFtpApi.md#update_log_ftp) | **PUT** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Update an FTP log endpoint


# **create_log_ftp**
> LoggingFtpResponse create_log_ftp(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, address => $address, hostname => $hostname, ipv4 => $ipv4, password => $password, path => $path, public_key => $public_key, user => $user, port => $port)

Create an FTP log endpoint

Create a FTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingFtpApi;
my $api_instance = WebService::Fastly::LoggingFtpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $message_type = 'classic'; # string | How the message should be formatted.
my $timestamp_format = "timestamp_format_example"; # string | A timestamp format
my $compression_codec = "compression_codec_example"; # string | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $period = 3600; # int | How frequently log files are finalized so they can be available for reading (in seconds).
my $gzip_level = 0; # int | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $address = "address_example"; # string | An hostname or IPv4 address.
my $hostname = "hostname_example"; # string | Hostname used.
my $ipv4 = "ipv4_example"; # string | IPv4 address of the host.
my $password = "password_example"; # string | The password for the server. For anonymous use an email address.
my $path = "path_example"; # string | The path to upload log files to. If the path ends in `/` then it is treated as a directory.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $user = "user_example"; # string | The username for the server. Can be anonymous.
my $port = 21; # int | The port number.

eval {
    my $result = $api_instance->create_log_ftp(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, address => $address, hostname => $hostname, ipv4 => $ipv4, password => $password, path => $path, public_key => $public_key, user => $user, port => $port);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingFtpApi->create_log_ftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **address** | **string**| An hostname or IPv4 address. | [optional] 
 **hostname** | **string**| Hostname used. | [optional] 
 **ipv4** | **string**| IPv4 address of the host. | [optional] 
 **password** | **string**| The password for the server. For anonymous use an email address. | [optional] 
 **path** | **string**| The path to upload log files to. If the path ends in `/` then it is treated as a directory. | [optional] 
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **user** | **string**| The username for the server. Can be anonymous. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 21]

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_ftp**
> InlineResponse200 delete_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name)

Delete an FTP log endpoint

Delete the FTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingFtpApi;
my $api_instance = WebService::Fastly::LoggingFtpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_ftp_name = "logging_ftp_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingFtpApi->delete_log_ftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_ftp_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_ftp**
> LoggingFtpResponse get_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name)

Get an FTP log endpoint

Get the FTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingFtpApi;
my $api_instance = WebService::Fastly::LoggingFtpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_ftp_name = "logging_ftp_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingFtpApi->get_log_ftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_ftp_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_ftp**
> ARRAY[LoggingFtpResponse] list_log_ftp(service_id => $service_id, version_id => $version_id)

List FTP log endpoints

List all of the FTPs for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingFtpApi;
my $api_instance = WebService::Fastly::LoggingFtpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_ftp(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingFtpApi->list_log_ftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingFtpResponse]**](LoggingFtpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_ftp**
> LoggingFtpResponse update_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, address => $address, hostname => $hostname, ipv4 => $ipv4, password => $password, path => $path, public_key => $public_key, user => $user, port => $port)

Update an FTP log endpoint

Update the FTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingFtpApi;
my $api_instance = WebService::Fastly::LoggingFtpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_ftp_name = "logging_ftp_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $message_type = 'classic'; # string | How the message should be formatted.
my $timestamp_format = "timestamp_format_example"; # string | A timestamp format
my $compression_codec = "compression_codec_example"; # string | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $period = 3600; # int | How frequently log files are finalized so they can be available for reading (in seconds).
my $gzip_level = 0; # int | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
my $address = "address_example"; # string | An hostname or IPv4 address.
my $hostname = "hostname_example"; # string | Hostname used.
my $ipv4 = "ipv4_example"; # string | IPv4 address of the host.
my $password = "password_example"; # string | The password for the server. For anonymous use an email address.
my $path = "path_example"; # string | The path to upload log files to. If the path ends in `/` then it is treated as a directory.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $user = "user_example"; # string | The username for the server. Can be anonymous.
my $port = 21; # int | The port number.

eval {
    my $result = $api_instance->update_log_ftp(service_id => $service_id, version_id => $version_id, logging_ftp_name => $logging_ftp_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, address => $address, hostname => $hostname, ipv4 => $ipv4, password => $password, path => $path, public_key => $public_key, user => $user, port => $port);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingFtpApi->update_log_ftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_ftp_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **message_type** | **string**| How the message should be formatted. | [optional] [default to &#39;classic&#39;]
 **timestamp_format** | **string**| A timestamp format | [optional] 
 **compression_codec** | **string**| The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] 
 **period** | **int**| How frequently log files are finalized so they can be available for reading (in seconds). | [optional] [default to 3600]
 **gzip_level** | **int**| The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] [default to 0]
 **address** | **string**| An hostname or IPv4 address. | [optional] 
 **hostname** | **string**| Hostname used. | [optional] 
 **ipv4** | **string**| IPv4 address of the host. | [optional] 
 **password** | **string**| The password for the server. For anonymous use an email address. | [optional] 
 **path** | **string**| The path to upload log files to. If the path ends in `/` then it is treated as a directory. | [optional] 
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **user** | **string**| The username for the server. Can be anonymous. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 21]

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

