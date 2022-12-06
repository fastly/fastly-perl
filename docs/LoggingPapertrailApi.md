# WebService::Fastly::LoggingPapertrailApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingPapertrailApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_papertrail**](LoggingPapertrailApi.md#create_log_papertrail) | **POST** /service/{service_id}/version/{version_id}/logging/papertrail | Create a Papertrail log endpoint
[**delete_log_papertrail**](LoggingPapertrailApi.md#delete_log_papertrail) | **DELETE** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Delete a Papertrail log endpoint
[**get_log_papertrail**](LoggingPapertrailApi.md#get_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Get a Papertrail log endpoint
[**list_log_papertrail**](LoggingPapertrailApi.md#list_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail | List Papertrail log endpoints
[**update_log_papertrail**](LoggingPapertrailApi.md#update_log_papertrail) | **PUT** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Update a Papertrail log endpoint


# **create_log_papertrail**
> LoggingPapertrailResponse create_log_papertrail(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, address => $address, port => $port)

Create a Papertrail log endpoint

Create a Papertrail for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPapertrailApi;
my $api_instance = WebService::Fastly::LoggingPapertrailApi->new(

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
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = 514; # int | The port number.

eval {
    my $result = $api_instance->create_log_papertrail(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, address => $address, port => $port);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPapertrailApi->create_log_papertrail: $@\n";
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
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 514]

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_papertrail**
> InlineResponse200 delete_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name)

Delete a Papertrail log endpoint

Delete the Papertrail for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPapertrailApi;
my $api_instance = WebService::Fastly::LoggingPapertrailApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_papertrail_name = "logging_papertrail_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPapertrailApi->delete_log_papertrail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_papertrail_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_papertrail**
> LoggingPapertrailResponse get_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name)

Get a Papertrail log endpoint

Get the Papertrail for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPapertrailApi;
my $api_instance = WebService::Fastly::LoggingPapertrailApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_papertrail_name = "logging_papertrail_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPapertrailApi->get_log_papertrail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_papertrail_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_papertrail**
> ARRAY[LoggingPapertrailResponse] list_log_papertrail(service_id => $service_id, version_id => $version_id)

List Papertrail log endpoints

List all of the Papertrails for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPapertrailApi;
my $api_instance = WebService::Fastly::LoggingPapertrailApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_papertrail(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPapertrailApi->list_log_papertrail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingPapertrailResponse]**](LoggingPapertrailResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_papertrail**
> LoggingPapertrailResponse update_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, address => $address, port => $port)

Update a Papertrail log endpoint

Update the Papertrail for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPapertrailApi;
my $api_instance = WebService::Fastly::LoggingPapertrailApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_papertrail_name = "logging_papertrail_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $address = "address_example"; # string | A hostname or IPv4 address.
my $port = 514; # int | The port number.

eval {
    my $result = $api_instance->update_log_papertrail(service_id => $service_id, version_id => $version_id, logging_papertrail_name => $logging_papertrail_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, address => $address, port => $port);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPapertrailApi->update_log_papertrail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_papertrail_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **address** | **string**| A hostname or IPv4 address. | [optional] 
 **port** | **int**| The port number. | [optional] [default to 514]

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

