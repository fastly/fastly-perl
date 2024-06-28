# WebService::Fastly::LoggingS3Api

## Load the API package
```perl
use WebService::Fastly::Object::LoggingS3Api;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_aws_s3**](LoggingS3Api.md#create_log_aws_s3) | **POST** /service/{service_id}/version/{version_id}/logging/s3 | Create an AWS S3 log endpoint
[**delete_log_aws_s3**](LoggingS3Api.md#delete_log_aws_s3) | **DELETE** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Delete an AWS S3 log endpoint
[**get_log_aws_s3**](LoggingS3Api.md#get_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Get an AWS S3 log endpoint
[**list_log_aws_s3**](LoggingS3Api.md#list_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3 | List AWS S3 log endpoints
[**update_log_aws_s3**](LoggingS3Api.md#update_log_aws_s3) | **PUT** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Update an AWS S3 log endpoint


# **create_log_aws_s3**
> LoggingS3Response create_log_aws_s3(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, access_key => $access_key, acl => $acl, bucket_name => $bucket_name, domain => $domain, iam_role => $iam_role, path => $path, public_key => $public_key, redundancy => $redundancy, secret_key => $secret_key, server_side_encryption_kms_key_id => $server_side_encryption_kms_key_id, server_side_encryption => $server_side_encryption, file_max_bytes => $file_max_bytes)

Create an AWS S3 log endpoint

Create a S3 for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingS3Api;
my $api_instance = WebService::Fastly::LoggingS3Api->new(

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
my $access_key = "access_key_example"; # string | The access key for your S3 account. Not required if `iam_role` is provided.
my $acl = "acl_example"; # string | The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.
my $bucket_name = "bucket_name_example"; # string | The bucket name for S3 account.
my $domain = "domain_example"; # string | The domain of the Amazon S3 endpoint.
my $iam_role = "iam_role_example"; # string | The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided.
my $path = 'null'; # string | The path to upload logs to.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $redundancy = 'null'; # string | The S3 redundancy level.
my $secret_key = "secret_key_example"; # string | The secret key for your S3 account. Not required if `iam_role` is provided.
my $server_side_encryption_kms_key_id = 'null'; # string | Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`.
my $server_side_encryption = 'null'; # string | Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption.
my $file_max_bytes = 56; # int | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB.)

eval {
    my $result = $api_instance->create_log_aws_s3(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, access_key => $access_key, acl => $acl, bucket_name => $bucket_name, domain => $domain, iam_role => $iam_role, path => $path, public_key => $public_key, redundancy => $redundancy, secret_key => $secret_key, server_side_encryption_kms_key_id => $server_side_encryption_kms_key_id, server_side_encryption => $server_side_encryption, file_max_bytes => $file_max_bytes);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingS3Api->create_log_aws_s3: $@\n";
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
 **access_key** | **string**| The access key for your S3 account. Not required if `iam_role` is provided. | [optional] 
 **acl** | **string**| The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information. | [optional] 
 **bucket_name** | **string**| The bucket name for S3 account. | [optional] 
 **domain** | **string**| The domain of the Amazon S3 endpoint. | [optional] 
 **iam_role** | **string**| The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided. | [optional] 
 **path** | **string**| The path to upload logs to. | [optional] [default to &#39;null&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **redundancy** | **string**| The S3 redundancy level. | [optional] [default to &#39;null&#39;]
 **secret_key** | **string**| The secret key for your S3 account. Not required if `iam_role` is provided. | [optional] 
 **server_side_encryption_kms_key_id** | **string**| Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`. | [optional] [default to &#39;null&#39;]
 **server_side_encryption** | **string**| Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption. | [optional] [default to &#39;null&#39;]
 **file_max_bytes** | **int**| The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB.) | [optional] 

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_aws_s3**
> InlineResponse200 delete_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name)

Delete an AWS S3 log endpoint

Delete the S3 for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingS3Api;
my $api_instance = WebService::Fastly::LoggingS3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_s3_name = "logging_s3_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingS3Api->delete_log_aws_s3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_s3_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_aws_s3**
> LoggingS3Response get_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name)

Get an AWS S3 log endpoint

Get the S3 for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingS3Api;
my $api_instance = WebService::Fastly::LoggingS3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_s3_name = "logging_s3_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingS3Api->get_log_aws_s3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_s3_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_aws_s3**
> ARRAY[LoggingS3Response] list_log_aws_s3(service_id => $service_id, version_id => $version_id)

List AWS S3 log endpoints

List all of the S3s for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingS3Api;
my $api_instance = WebService::Fastly::LoggingS3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_aws_s3(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingS3Api->list_log_aws_s3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingS3Response]**](LoggingS3Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_aws_s3**
> LoggingS3Response update_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, access_key => $access_key, acl => $acl, bucket_name => $bucket_name, domain => $domain, iam_role => $iam_role, path => $path, public_key => $public_key, redundancy => $redundancy, secret_key => $secret_key, server_side_encryption_kms_key_id => $server_side_encryption_kms_key_id, server_side_encryption => $server_side_encryption, file_max_bytes => $file_max_bytes)

Update an AWS S3 log endpoint

Update the S3 for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingS3Api;
my $api_instance = WebService::Fastly::LoggingS3Api->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_s3_name = "logging_s3_name_example"; # string | The name for the real-time logging configuration.
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
my $access_key = "access_key_example"; # string | The access key for your S3 account. Not required if `iam_role` is provided.
my $acl = "acl_example"; # string | The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.
my $bucket_name = "bucket_name_example"; # string | The bucket name for S3 account.
my $domain = "domain_example"; # string | The domain of the Amazon S3 endpoint.
my $iam_role = "iam_role_example"; # string | The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided.
my $path = 'null'; # string | The path to upload logs to.
my $public_key = 'null'; # string | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
my $redundancy = 'null'; # string | The S3 redundancy level.
my $secret_key = "secret_key_example"; # string | The secret key for your S3 account. Not required if `iam_role` is provided.
my $server_side_encryption_kms_key_id = 'null'; # string | Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`.
my $server_side_encryption = 'null'; # string | Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption.
my $file_max_bytes = 56; # int | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB.)

eval {
    my $result = $api_instance->update_log_aws_s3(service_id => $service_id, version_id => $version_id, logging_s3_name => $logging_s3_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, timestamp_format => $timestamp_format, compression_codec => $compression_codec, period => $period, gzip_level => $gzip_level, access_key => $access_key, acl => $acl, bucket_name => $bucket_name, domain => $domain, iam_role => $iam_role, path => $path, public_key => $public_key, redundancy => $redundancy, secret_key => $secret_key, server_side_encryption_kms_key_id => $server_side_encryption_kms_key_id, server_side_encryption => $server_side_encryption, file_max_bytes => $file_max_bytes);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingS3Api->update_log_aws_s3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_s3_name** | **string**| The name for the real-time logging configuration. | 
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
 **access_key** | **string**| The access key for your S3 account. Not required if `iam_role` is provided. | [optional] 
 **acl** | **string**| The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information. | [optional] 
 **bucket_name** | **string**| The bucket name for S3 account. | [optional] 
 **domain** | **string**| The domain of the Amazon S3 endpoint. | [optional] 
 **iam_role** | **string**| The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided. | [optional] 
 **path** | **string**| The path to upload logs to. | [optional] [default to &#39;null&#39;]
 **public_key** | **string**| A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
 **redundancy** | **string**| The S3 redundancy level. | [optional] [default to &#39;null&#39;]
 **secret_key** | **string**| The secret key for your S3 account. Not required if `iam_role` is provided. | [optional] 
 **server_side_encryption_kms_key_id** | **string**| Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`. | [optional] [default to &#39;null&#39;]
 **server_side_encryption** | **string**| Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption. | [optional] [default to &#39;null&#39;]
 **file_max_bytes** | **int**| The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB.) | [optional] 

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

