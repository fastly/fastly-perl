# WebService::Fastly::LoggingSyslogApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingSyslogApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_syslog**](LoggingSyslogApi.md#create_log_syslog) | **POST** /service/{service_id}/version/{version_id}/logging/syslog | Create a syslog log endpoint
[**delete_log_syslog**](LoggingSyslogApi.md#delete_log_syslog) | **DELETE** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Delete a syslog log endpoint
[**get_log_syslog**](LoggingSyslogApi.md#get_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Get a syslog log endpoint
[**list_log_syslog**](LoggingSyslogApi.md#list_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog | List Syslog log endpoints
[**update_log_syslog**](LoggingSyslogApi.md#update_log_syslog) | **PUT** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Update a syslog log endpoint


# **create_log_syslog**
> LoggingSyslogResponse create_log_syslog(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, address => $address, port => $port, message_type => $message_type, hostname => $hostname, ipv4 => $ipv4, token => $token, use_tls => $use_tls)

Create a syslog log endpoint

Create a Syslog for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSyslogApi;
my $api_instance = WebService::Fastly::LoggingSyslogApi->new(

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
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = 514; # int | The port number.
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $hostname = "hostname_example"; # string | The hostname used for the syslog endpoint.
my $ipv4 = "ipv4_example"; # string | The IPv4 address used for the syslog endpoint.
my $token = 'null'; # string | Whether to prepend each message with a specific token.
my $use_tls = new WebService::Fastly.LoggingUseTls(); # LoggingUseTls | 

eval {
    my $result = $api_instance->create_log_syslog(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, address => $address, port => $port, message_type => $message_type, hostname => $hostname, ipv4 => $ipv4, token => $token, use_tls => $use_tls);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSyslogApi->create_log_syslog: $@\n";
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
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 514]
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **hostname** | **string**| The hostname used for the syslog endpoint. | [optional] 
 **ipv4** | **string**| The IPv4 address used for the syslog endpoint. | [optional] 
 **token** | **string**| Whether to prepend each message with a specific token. | [optional] [default to &#39;null&#39;]
 **use_tls** | [**LoggingUseTls**](LoggingUseTls.md)|  | [optional] 

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_syslog**
> InlineResponse200 delete_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name)

Delete a syslog log endpoint

Delete the Syslog for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSyslogApi;
my $api_instance = WebService::Fastly::LoggingSyslogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_syslog_name = "logging_syslog_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSyslogApi->delete_log_syslog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_syslog_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_syslog**
> LoggingSyslogResponse get_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name)

Get a syslog log endpoint

Get the Syslog for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSyslogApi;
my $api_instance = WebService::Fastly::LoggingSyslogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_syslog_name = "logging_syslog_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSyslogApi->get_log_syslog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_syslog_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_syslog**
> ARRAY[LoggingSyslogResponse] list_log_syslog(service_id => $service_id, version_id => $version_id)

List Syslog log endpoints

List all of the Syslogs for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSyslogApi;
my $api_instance = WebService::Fastly::LoggingSyslogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_syslog(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSyslogApi->list_log_syslog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingSyslogResponse]**](LoggingSyslogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_syslog**
> LoggingSyslogResponse update_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, address => $address, port => $port, message_type => $message_type, hostname => $hostname, ipv4 => $ipv4, token => $token, use_tls => $use_tls)

Update a syslog log endpoint

Update the Syslog for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSyslogApi;
my $api_instance = WebService::Fastly::LoggingSyslogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_syslog_name = "logging_syslog_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = 514; # int | The port number.
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $hostname = "hostname_example"; # string | The hostname used for the syslog endpoint.
my $ipv4 = "ipv4_example"; # string | The IPv4 address used for the syslog endpoint.
my $token = 'null'; # string | Whether to prepend each message with a specific token.
my $use_tls = new WebService::Fastly.LoggingUseTls(); # LoggingUseTls | 

eval {
    my $result = $api_instance->update_log_syslog(service_id => $service_id, version_id => $version_id, logging_syslog_name => $logging_syslog_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, address => $address, port => $port, message_type => $message_type, hostname => $hostname, ipv4 => $ipv4, token => $token, use_tls => $use_tls);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSyslogApi->update_log_syslog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_syslog_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 514]
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **hostname** | **string**| The hostname used for the syslog endpoint. | [optional] 
 **ipv4** | **string**| The IPv4 address used for the syslog endpoint. | [optional] 
 **token** | **string**| Whether to prepend each message with a specific token. | [optional] [default to &#39;null&#39;]
 **use_tls** | [**LoggingUseTls**](LoggingUseTls.md)|  | [optional] 

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

