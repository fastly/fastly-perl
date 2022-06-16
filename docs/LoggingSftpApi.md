# Fastly::LoggingSftpApi

## Load the API package
```perl
use Fastly::Object::LoggingSftpApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_sftp**](LoggingSftpApi.md#create_log_sftp) | **POST** /service/{service_id}/version/{version_id}/logging/sftp | Create an SFTP log endpoint
[**delete_log_sftp**](LoggingSftpApi.md#delete_log_sftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Delete an SFTP log endpoint
[**get_log_sftp**](LoggingSftpApi.md#get_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Get an SFTP log endpoint
[**list_log_sftp**](LoggingSftpApi.md#list_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp | List SFTP log endpoints
[**update_log_sftp**](LoggingSftpApi.md#update_log_sftp) | **PUT** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Update an SFTP log endpoint


# **create_log_sftp**
> LoggingSftpResponse create_log_sftp(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, address => $address, port => $port, password => $password, path => $path, public_key => $public_key, secret_key => $secret_key, ssh_known_hosts => $ssh_known_hosts, user => $user)

Create an SFTP log endpoint

Create a SFTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingSftpApi;
my $api_instance = Fastly::LoggingSftpApi->new(

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
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = new Fastly.AnyType(); # AnyType | The port number.
my $password = "password_example"; # string | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
my $path = "path_example"; # string | The path to upload logs to.
my $public_key = "public_key_example"; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $secret_key = "secret_key_example"; # string | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
my $ssh_known_hosts = "ssh_known_hosts_example"; # string | A list of host keys for all hosts we can connect to over SFTP.
my $user = "user_example"; # string | The username for the server.

eval {
    my $result = $api_instance->create_log_sftp(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, address => $address, port => $port, password => $password, path => $path, public_key => $public_key, secret_key => $secret_key, ssh_known_hosts => $ssh_known_hosts, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSftpApi->create_log_sftp: $@\n";
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
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | [**AnyType**](AnyType.md)| The port number. | [optional] 
 **password** | **string**| The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
 **path** | **string**| The path to upload logs to. | [optional] 
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] 
 **secret_key** | **string**| The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
 **ssh_known_hosts** | **string**| A list of host keys for all hosts we can connect to over SFTP. | [optional] 
 **user** | **string**| The username for the server. | [optional] 

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_sftp**
> DeleteAcl200Response delete_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name)

Delete an SFTP log endpoint

Delete the SFTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingSftpApi;
my $api_instance = Fastly::LoggingSftpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sftp_name = "logging_sftp_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSftpApi->delete_log_sftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sftp_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_sftp**
> LoggingSftpResponse get_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name)

Get an SFTP log endpoint

Get the SFTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingSftpApi;
my $api_instance = Fastly::LoggingSftpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sftp_name = "logging_sftp_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSftpApi->get_log_sftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sftp_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_sftp**
> ARRAY[LoggingSftpResponse] list_log_sftp(service_id => $service_id, version_id => $version_id)

List SFTP log endpoints

List all of the SFTPs for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingSftpApi;
my $api_instance = Fastly::LoggingSftpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_sftp(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSftpApi->list_log_sftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingSftpResponse]**](LoggingSftpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_sftp**
> LoggingSftpResponse update_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, address => $address, port => $port, password => $password, path => $path, public_key => $public_key, secret_key => $secret_key, ssh_known_hosts => $ssh_known_hosts, user => $user)

Update an SFTP log endpoint

Update the SFTP for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingSftpApi;
my $api_instance = Fastly::LoggingSftpApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sftp_name = "logging_sftp_name_example"; # string | The name for the real-time logging configuration.
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
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = new Fastly.AnyType(); # AnyType | The port number.
my $password = "password_example"; # string | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
my $path = "path_example"; # string | The path to upload logs to.
my $public_key = "public_key_example"; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $secret_key = "secret_key_example"; # string | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
my $ssh_known_hosts = "ssh_known_hosts_example"; # string | A list of host keys for all hosts we can connect to over SFTP.
my $user = "user_example"; # string | The username for the server.

eval {
    my $result = $api_instance->update_log_sftp(service_id => $service_id, version_id => $version_id, logging_sftp_name => $logging_sftp_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, message_type => $message_type, timestamp_format => $timestamp_format, period => $period, gzip_level => $gzip_level, compression_codec => $compression_codec, address => $address, port => $port, password => $password, path => $path, public_key => $public_key, secret_key => $secret_key, ssh_known_hosts => $ssh_known_hosts, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSftpApi->update_log_sftp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sftp_name** | **string**| The name for the real-time logging configuration. | 
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
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | [**AnyType**](AnyType.md)| The port number. | [optional] 
 **password** | **string**| The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
 **path** | **string**| The path to upload logs to. | [optional] 
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] 
 **secret_key** | **string**| The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
 **ssh_known_hosts** | **string**| A list of host keys for all hosts we can connect to over SFTP. | [optional] 
 **user** | **string**| The username for the server. | [optional] 

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

