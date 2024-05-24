# WebService::Fastly::LoggingHoneycombApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingHoneycombApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_honeycomb**](LoggingHoneycombApi.md#create_log_honeycomb) | **POST** /service/{service_id}/version/{version_id}/logging/honeycomb | Create a Honeycomb log endpoint
[**delete_log_honeycomb**](LoggingHoneycombApi.md#delete_log_honeycomb) | **DELETE** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Delete the Honeycomb log endpoint
[**get_log_honeycomb**](LoggingHoneycombApi.md#get_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Get a Honeycomb log endpoint
[**list_log_honeycomb**](LoggingHoneycombApi.md#list_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb | List Honeycomb log endpoints
[**update_log_honeycomb**](LoggingHoneycombApi.md#update_log_honeycomb) | **PUT** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Update a Honeycomb log endpoint


# **create_log_honeycomb**
> LoggingHoneycombResponse create_log_honeycomb(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, dataset => $dataset, token => $token)

Create a Honeycomb log endpoint

Create a Honeycomb logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHoneycombApi;
my $api_instance = WebService::Fastly::LoggingHoneycombApi->new(

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
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $dataset = "dataset_example"; # string | The Honeycomb Dataset you want to log to.
my $token = "token_example"; # string | The Write Key from the Account page of your Honeycomb account.

eval {
    my $result = $api_instance->create_log_honeycomb(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, dataset => $dataset, token => $token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHoneycombApi->create_log_honeycomb: $@\n";
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
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest. | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **dataset** | **string**| The Honeycomb Dataset you want to log to. | [optional] 
 **token** | **string**| The Write Key from the Account page of your Honeycomb account. | [optional] 

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_honeycomb**
> InlineResponse200 delete_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name)

Delete the Honeycomb log endpoint

Delete the Honeycomb logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHoneycombApi;
my $api_instance = WebService::Fastly::LoggingHoneycombApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_honeycomb_name = "logging_honeycomb_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHoneycombApi->delete_log_honeycomb: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_honeycomb_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_honeycomb**
> LoggingHoneycombResponse get_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name)

Get a Honeycomb log endpoint

Get the details of a Honeycomb logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHoneycombApi;
my $api_instance = WebService::Fastly::LoggingHoneycombApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_honeycomb_name = "logging_honeycomb_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHoneycombApi->get_log_honeycomb: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_honeycomb_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_honeycomb**
> ARRAY[LoggingHoneycombResponse] list_log_honeycomb(service_id => $service_id, version_id => $version_id)

List Honeycomb log endpoints

List all of the Honeycomb logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHoneycombApi;
my $api_instance = WebService::Fastly::LoggingHoneycombApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_honeycomb(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHoneycombApi->list_log_honeycomb: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingHoneycombResponse]**](LoggingHoneycombResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_honeycomb**
> LoggingHoneycombResponse update_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, dataset => $dataset, token => $token)

Update a Honeycomb log endpoint

Update a Honeycomb logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHoneycombApi;
my $api_instance = WebService::Fastly::LoggingHoneycombApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_honeycomb_name = "logging_honeycomb_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $dataset = "dataset_example"; # string | The Honeycomb Dataset you want to log to.
my $token = "token_example"; # string | The Write Key from the Account page of your Honeycomb account.

eval {
    my $result = $api_instance->update_log_honeycomb(service_id => $service_id, version_id => $version_id, logging_honeycomb_name => $logging_honeycomb_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, dataset => $dataset, token => $token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHoneycombApi->update_log_honeycomb: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_honeycomb_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest. | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **dataset** | **string**| The Honeycomb Dataset you want to log to. | [optional] 
 **token** | **string**| The Write Key from the Account page of your Honeycomb account. | [optional] 

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

