# WebService::Fastly::LoggingSplunkApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingSplunkApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_splunk**](LoggingSplunkApi.md#create_log_splunk) | **POST** /service/{service_id}/version/{version_id}/logging/splunk | Create a Splunk log endpoint
[**delete_log_splunk**](LoggingSplunkApi.md#delete_log_splunk) | **DELETE** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Delete a Splunk log endpoint
[**get_log_splunk**](LoggingSplunkApi.md#get_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Get a Splunk log endpoint
[**list_log_splunk**](LoggingSplunkApi.md#list_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk | List Splunk log endpoints
[**update_log_splunk**](LoggingSplunkApi.md#update_log_splunk) | **PUT** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Update a Splunk log endpoint


# **create_log_splunk**
> LoggingSplunkResponse create_log_splunk(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, token => $token, use_tls => $use_tls)

Create a Splunk log endpoint

Create a Splunk logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSplunkApi;
my $api_instance = WebService::Fastly::LoggingSplunkApi->new(

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
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` for unbounded.
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
my $url = "url_example"; # string | The URL to post logs to.
my $token = "token_example"; # string | A Splunk token for use in posting logs over HTTP to your collector.
my $use_tls = new WebService::Fastly.LoggingUseTls(); # LoggingUseTls | 

eval {
    my $result = $api_instance->create_log_splunk(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, token => $token, use_tls => $use_tls);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSplunkApi->create_log_splunk: $@\n";
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
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **url** | **string**| The URL to post logs to. | [optional] 
 **token** | **string**| A Splunk token for use in posting logs over HTTP to your collector. | [optional] 
 **use_tls** | [**LoggingUseTls**](LoggingUseTls.md)|  | [optional] 

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_splunk**
> InlineResponse200 delete_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name)

Delete a Splunk log endpoint

Delete the Splunk logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSplunkApi;
my $api_instance = WebService::Fastly::LoggingSplunkApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_splunk_name = "logging_splunk_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSplunkApi->delete_log_splunk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_splunk_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_splunk**
> LoggingSplunkResponse get_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name)

Get a Splunk log endpoint

Get the details for a Splunk logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSplunkApi;
my $api_instance = WebService::Fastly::LoggingSplunkApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_splunk_name = "logging_splunk_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSplunkApi->get_log_splunk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_splunk_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_splunk**
> ARRAY[LoggingSplunkResponse] list_log_splunk(service_id => $service_id, version_id => $version_id)

List Splunk log endpoints

List all of the Splunk logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSplunkApi;
my $api_instance = WebService::Fastly::LoggingSplunkApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_splunk(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSplunkApi->list_log_splunk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingSplunkResponse]**](LoggingSplunkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_splunk**
> LoggingSplunkResponse update_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, token => $token, use_tls => $use_tls)

Update a Splunk log endpoint

Update the Splunk logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSplunkApi;
my $api_instance = WebService::Fastly::LoggingSplunkApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_splunk_name = "logging_splunk_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` for unbounded.
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
my $url = "url_example"; # string | The URL to post logs to.
my $token = "token_example"; # string | A Splunk token for use in posting logs over HTTP to your collector.
my $use_tls = new WebService::Fastly.LoggingUseTls(); # LoggingUseTls | 

eval {
    my $result = $api_instance->update_log_splunk(service_id => $service_id, version_id => $version_id, logging_splunk_name => $logging_splunk_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, url => $url, token => $token, use_tls => $use_tls);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSplunkApi->update_log_splunk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_splunk_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **url** | **string**| The URL to post logs to. | [optional] 
 **token** | **string**| A Splunk token for use in posting logs over HTTP to your collector. | [optional] 
 **use_tls** | [**LoggingUseTls**](LoggingUseTls.md)|  | [optional] 

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

