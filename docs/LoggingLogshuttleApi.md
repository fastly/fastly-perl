# WebService::Fastly::LoggingLogshuttleApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingLogshuttleApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_logshuttle**](LoggingLogshuttleApi.md#create_log_logshuttle) | **POST** /service/{service_id}/version/{version_id}/logging/logshuttle | Create a Log Shuttle log endpoint
[**delete_log_logshuttle**](LoggingLogshuttleApi.md#delete_log_logshuttle) | **DELETE** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Delete a Log Shuttle log endpoint
[**get_log_logshuttle**](LoggingLogshuttleApi.md#get_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Get a Log Shuttle log endpoint
[**list_log_logshuttle**](LoggingLogshuttleApi.md#list_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle | List Log Shuttle log endpoints
[**update_log_logshuttle**](LoggingLogshuttleApi.md#update_log_logshuttle) | **PUT** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Update a Log Shuttle log endpoint


# **create_log_logshuttle**
> LoggingLogshuttleResponse create_log_logshuttle(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url)

Create a Log Shuttle log endpoint

Create a Log Shuttle logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogshuttleApi;
my $api_instance = WebService::Fastly::LoggingLogshuttleApi->new(

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
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
my $log_processing_region = 'none'; # string | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $token = "token_example"; # string | The data authentication token associated with this endpoint.
my $url = "url_example"; # string | The URL to stream logs to.

eval {
    my $result = $api_instance->create_log_logshuttle(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogshuttleApi->create_log_logshuttle: $@\n";
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
 **format** | **string**| A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **log_processing_region** | **string**| The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **token** | **string**| The data authentication token associated with this endpoint. | [optional] 
 **url** | **string**| The URL to stream logs to. | [optional] 

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_logshuttle**
> InlineResponse200 delete_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name)

Delete a Log Shuttle log endpoint

Delete the Log Shuttle logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogshuttleApi;
my $api_instance = WebService::Fastly::LoggingLogshuttleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logshuttle_name = "logging_logshuttle_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogshuttleApi->delete_log_logshuttle: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logshuttle_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_logshuttle**
> LoggingLogshuttleResponse get_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name)

Get a Log Shuttle log endpoint

Get the Log Shuttle logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogshuttleApi;
my $api_instance = WebService::Fastly::LoggingLogshuttleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logshuttle_name = "logging_logshuttle_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogshuttleApi->get_log_logshuttle: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logshuttle_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_logshuttle**
> ARRAY[LoggingLogshuttleResponse] list_log_logshuttle(service_id => $service_id, version_id => $version_id)

List Log Shuttle log endpoints

List all of the Log Shuttle logging endpoints for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogshuttleApi;
my $api_instance = WebService::Fastly::LoggingLogshuttleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_logshuttle(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogshuttleApi->list_log_logshuttle: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingLogshuttleResponse]**](LoggingLogshuttleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_logshuttle**
> LoggingLogshuttleResponse update_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url)

Update a Log Shuttle log endpoint

Update the Log Shuttle logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingLogshuttleApi;
my $api_instance = WebService::Fastly::LoggingLogshuttleApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_logshuttle_name = "logging_logshuttle_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
my $log_processing_region = 'none'; # string | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $token = "token_example"; # string | The data authentication token associated with this endpoint.
my $url = "url_example"; # string | The URL to stream logs to.

eval {
    my $result = $api_instance->update_log_logshuttle(service_id => $service_id, version_id => $version_id, logging_logshuttle_name => $logging_logshuttle_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingLogshuttleApi->update_log_logshuttle: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_logshuttle_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **log_processing_region** | **string**| The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **token** | **string**| The data authentication token associated with this endpoint. | [optional] 
 **url** | **string**| The URL to stream logs to. | [optional] 

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

