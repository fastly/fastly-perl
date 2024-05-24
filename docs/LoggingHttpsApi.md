# WebService::Fastly::LoggingHttpsApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingHttpsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_https**](LoggingHttpsApi.md#create_log_https) | **POST** /service/{service_id}/version/{version_id}/logging/https | Create an HTTPS log endpoint
[**delete_log_https**](LoggingHttpsApi.md#delete_log_https) | **DELETE** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Delete an HTTPS log endpoint
[**get_log_https**](LoggingHttpsApi.md#get_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Get an HTTPS log endpoint
[**list_log_https**](LoggingHttpsApi.md#list_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https | List HTTPS log endpoints
[**update_log_https**](LoggingHttpsApi.md#update_log_https) | **PUT** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Update an HTTPS log endpoint


# **create_log_https**
> LoggingHttpsResponse create_log_https(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, content_type => $content_type, header_name => $header_name, message_type => $message_type, header_value => $header_value, method => $method, json_format => $json_format)

Create an HTTPS log endpoint

Create an HTTPS object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHttpsApi;
my $api_instance = WebService::Fastly::LoggingHttpsApi->new(

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
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` (10k).
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` (100MB).
my $url = "url_example"; # string | The URL to send logs to. Must use HTTPS. Required.
my $content_type = 'null'; # string | Content type of the header sent with the request.
my $header_name = 'null'; # string | Name of the custom header sent with the request.
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $header_value = 'null'; # string | Value of the custom header sent with the request.
my $method = 'POST'; # string | HTTP method used for request.
my $json_format = "json_format_example"; # string | Enforces valid JSON formatting for log entries.

eval {
    my $result = $api_instance->create_log_https(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, content_type => $content_type, header_name => $header_name, message_type => $message_type, header_value => $header_value, method => $method, json_format => $json_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHttpsApi->create_log_https: $@\n";
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
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` (10k). | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional] [default to 0]
 **url** | **string**| The URL to send logs to. Must use HTTPS. Required. | [optional] 
 **content_type** | **string**| Content type of the header sent with the request. | [optional] [default to &#39;null&#39;]
 **header_name** | **string**| Name of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **header_value** | **string**| Value of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
 **method** | **string**| HTTP method used for request. | [optional] [default to &#39;POST&#39;]
 **json_format** | **string**| Enforces valid JSON formatting for log entries. | [optional] 

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_https**
> InlineResponse200 delete_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name)

Delete an HTTPS log endpoint

Delete the HTTPS object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHttpsApi;
my $api_instance = WebService::Fastly::LoggingHttpsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_https_name = "logging_https_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHttpsApi->delete_log_https: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_https_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_https**
> LoggingHttpsResponse get_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name)

Get an HTTPS log endpoint

Get the HTTPS object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHttpsApi;
my $api_instance = WebService::Fastly::LoggingHttpsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_https_name = "logging_https_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHttpsApi->get_log_https: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_https_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_https**
> ARRAY[LoggingHttpsResponse] list_log_https(service_id => $service_id, version_id => $version_id)

List HTTPS log endpoints

List all of the HTTPS objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHttpsApi;
my $api_instance = WebService::Fastly::LoggingHttpsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_https(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHttpsApi->list_log_https: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingHttpsResponse]**](LoggingHttpsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_https**
> LoggingHttpsResponse update_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, content_type => $content_type, header_name => $header_name, message_type => $message_type, header_value => $header_value, method => $method, json_format => $json_format)

Update an HTTPS log endpoint

Update the HTTPS object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHttpsApi;
my $api_instance = WebService::Fastly::LoggingHttpsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_https_name = "logging_https_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` (10k).
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` (100MB).
my $url = "url_example"; # string | The URL to send logs to. Must use HTTPS. Required.
my $content_type = 'null'; # string | Content type of the header sent with the request.
my $header_name = 'null'; # string | Name of the custom header sent with the request.
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $header_value = 'null'; # string | Value of the custom header sent with the request.
my $method = 'POST'; # string | HTTP method used for request.
my $json_format = "json_format_example"; # string | Enforces valid JSON formatting for log entries.

eval {
    my $result = $api_instance->update_log_https(service_id => $service_id, version_id => $version_id, logging_https_name => $logging_https_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, content_type => $content_type, header_name => $header_name, message_type => $message_type, header_value => $header_value, method => $method, json_format => $json_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHttpsApi->update_log_https: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_https_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` (10k). | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional] [default to 0]
 **url** | **string**| The URL to send logs to. Must use HTTPS. Required. | [optional] 
 **content_type** | **string**| Content type of the header sent with the request. | [optional] [default to &#39;null&#39;]
 **header_name** | **string**| Name of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **header_value** | **string**| Value of the custom header sent with the request. | [optional] [default to &#39;null&#39;]
 **method** | **string**| HTTP method used for request. | [optional] [default to &#39;POST&#39;]
 **json_format** | **string**| Enforces valid JSON formatting for log entries. | [optional] 

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

