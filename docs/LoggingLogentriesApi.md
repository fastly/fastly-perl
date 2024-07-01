# WebService::Fastly::LoggingLogentriesApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingLogentriesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_logentries**](LoggingLogentriesApi.md#create_log_logentries) | **POST** /service/{service_id}/version/{version_id}/logging/logentries | Create a Logentries log endpoint
[**delete_log_logentries**](LoggingLogentriesApi.md#delete_log_logentries) | **DELETE** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Delete a Logentries log endpoint
[**get_log_logentries**](LoggingLogentriesApi.md#get_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Get a Logentries log endpoint
[**list_log_logentries**](LoggingLogentriesApi.md#list_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries | List Logentries log endpoints
[**update_log_logentries**](LoggingLogentriesApi.md#update_log_logentries) | **PUT** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Update a Logentries log endpoint


# **create_log_logentries**
> LoggingLogentriesResponse create_log_logentries(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, port => $port, token => $token, use_tls => $use_tls, region => $region)

Create a Logentries log endpoint

Create a Logentry for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogentriesApi;
my $api_instance = WebService::Fastly::LoggingLogentriesApi->new(

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
my $port = 20000; # int | The port number.
my $token = "token_example"; # string | Use token based authentication.
my $use_tls = new WebService::Fastly.LoggingUseTlsString(); # LoggingUseTlsString | 
my $region = "region_example"; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->create_log_logentries(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, port => $port, token => $token, use_tls => $use_tls, region => $region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogentriesApi->create_log_logentries: $@\n";
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
 **port** | **int**| The port number. | [optional] [default to 20000]
 **token** | **string**| Use token based authentication. | [optional] 
 **use_tls** | [**LoggingUseTlsString**](LoggingUseTlsString.md)|  | [optional] 
 **region** | **string**| The region to which to stream logs. | [optional] 

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_logentries**
> InlineResponse200 delete_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name)

Delete a Logentries log endpoint

Delete the Logentry for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogentriesApi;
my $api_instance = WebService::Fastly::LoggingLogentriesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logentries_name = "logging_logentries_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogentriesApi->delete_log_logentries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logentries_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_logentries**
> LoggingLogentriesResponse get_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name)

Get a Logentries log endpoint

Get the Logentry for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogentriesApi;
my $api_instance = WebService::Fastly::LoggingLogentriesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logentries_name = "logging_logentries_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogentriesApi->get_log_logentries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logentries_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_logentries**
> ARRAY[LoggingLogentriesResponse] list_log_logentries(service_id => $service_id, version_id => $version_id)

List Logentries log endpoints

List all of the Logentries for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogentriesApi;
my $api_instance = WebService::Fastly::LoggingLogentriesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_logentries(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogentriesApi->list_log_logentries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingLogentriesResponse]**](LoggingLogentriesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_logentries**
> LoggingLogentriesResponse update_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, port => $port, token => $token, use_tls => $use_tls, region => $region)

Update a Logentries log endpoint

Update the Logentry for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogentriesApi;
my $api_instance = WebService::Fastly::LoggingLogentriesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logentries_name = "logging_logentries_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $port = 20000; # int | The port number.
my $token = "token_example"; # string | Use token based authentication.
my $use_tls = new WebService::Fastly.LoggingUseTlsString(); # LoggingUseTlsString | 
my $region = "region_example"; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->update_log_logentries(service_id => $service_id, version_id => $version_id, logging_logentries_name => $logging_logentries_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, port => $port, token => $token, use_tls => $use_tls, region => $region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogentriesApi->update_log_logentries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logentries_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **port** | **int**| The port number. | [optional] [default to 20000]
 **token** | **string**| Use token based authentication. | [optional] 
 **use_tls** | [**LoggingUseTlsString**](LoggingUseTlsString.md)|  | [optional] 
 **region** | **string**| The region to which to stream logs. | [optional] 

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

