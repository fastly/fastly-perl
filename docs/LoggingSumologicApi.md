# WebService::Fastly::LoggingSumologicApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingSumologicApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_sumologic**](LoggingSumologicApi.md#create_log_sumologic) | **POST** /service/{service_id}/version/{version_id}/logging/sumologic | Create a Sumologic log endpoint
[**delete_log_sumologic**](LoggingSumologicApi.md#delete_log_sumologic) | **DELETE** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Delete a Sumologic log endpoint
[**get_log_sumologic**](LoggingSumologicApi.md#get_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Get a Sumologic log endpoint
[**list_log_sumologic**](LoggingSumologicApi.md#list_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic | List Sumologic log endpoints
[**update_log_sumologic**](LoggingSumologicApi.md#update_log_sumologic) | **PUT** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Update a Sumologic log endpoint


# **create_log_sumologic**
> LoggingSumologicResponse create_log_sumologic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, url => $url)

Create a Sumologic log endpoint

Create a Sumologic for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSumologicApi;
my $api_instance = WebService::Fastly::LoggingSumologicApi->new(

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
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $url = "url_example"; # string | The URL to post logs to.

eval {
    my $result = $api_instance->create_log_sumologic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSumologicApi->create_log_sumologic: $@\n";
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
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **url** | **string**| The URL to post logs to. | [optional] 

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_sumologic**
> InlineResponse200 delete_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name)

Delete a Sumologic log endpoint

Delete the Sumologic for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSumologicApi;
my $api_instance = WebService::Fastly::LoggingSumologicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sumologic_name = "logging_sumologic_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSumologicApi->delete_log_sumologic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sumologic_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_sumologic**
> LoggingSumologicResponse get_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name)

Get a Sumologic log endpoint

Get the Sumologic for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSumologicApi;
my $api_instance = WebService::Fastly::LoggingSumologicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sumologic_name = "logging_sumologic_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSumologicApi->get_log_sumologic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sumologic_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_sumologic**
> ARRAY[LoggingSumologicResponse] list_log_sumologic(service_id => $service_id, version_id => $version_id)

List Sumologic log endpoints

List all of the Sumologics for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSumologicApi;
my $api_instance = WebService::Fastly::LoggingSumologicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_sumologic(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSumologicApi->list_log_sumologic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingSumologicResponse]**](LoggingSumologicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_sumologic**
> LoggingSumologicResponse update_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, url => $url)

Update a Sumologic log endpoint

Update the Sumologic for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingSumologicApi;
my $api_instance = WebService::Fastly::LoggingSumologicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_sumologic_name = "logging_sumologic_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $message_type = new WebService::Fastly.LoggingMessageType(); # LoggingMessageType | 
my $url = "url_example"; # string | The URL to post logs to.

eval {
    my $result = $api_instance->update_log_sumologic(service_id => $service_id, version_id => $version_id, logging_sumologic_name => $logging_sumologic_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, message_type => $message_type, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingSumologicApi->update_log_sumologic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_sumologic_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **message_type** | [**LoggingMessageType**](LoggingMessageType.md)|  | [optional] 
 **url** | **string**| The URL to post logs to. | [optional] 

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

