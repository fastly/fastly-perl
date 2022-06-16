# Fastly::LoggingNewrelicApi

## Load the API package
```perl
use Fastly::Object::LoggingNewrelicApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_newrelic**](LoggingNewrelicApi.md#create_log_newrelic) | **POST** /service/{service_id}/version/{version_id}/logging/newrelic | Create a New Relic log endpoint
[**delete_log_newrelic**](LoggingNewrelicApi.md#delete_log_newrelic) | **DELETE** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Delete a New Relic log endpoint
[**get_log_newrelic**](LoggingNewrelicApi.md#get_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Get a New Relic log endpoint
[**list_log_newrelic**](LoggingNewrelicApi.md#list_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic | List New Relic log endpoints
[**update_log_newrelic**](LoggingNewrelicApi.md#update_log_newrelic) | **PUT** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Update a New Relic log endpoint


# **create_log_newrelic**
> LoggingNewrelicResponse create_log_newrelic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, token => $token, region => $region)

Create a New Relic log endpoint

Create a New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingNewrelicApi;
my $api_instance = Fastly::LoggingNewrelicApi->new(

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
my $format = new Fastly.AnyType(); # AnyType | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
my $token = "token_example"; # string | The Insert API key from the Account page of your New Relic account. Required.
my $region = 'US'; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->create_log_newrelic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, token => $token, region => $region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingNewrelicApi->create_log_newrelic: $@\n";
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
 **format** | [**AnyType**](AnyType.md)| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional] 
 **token** | **string**| The Insert API key from the Account page of your New Relic account. Required. | [optional] 
 **region** | **string**| The region to which to stream logs. | [optional] [default to &#39;US&#39;]

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_newrelic**
> DeleteAcl200Response delete_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name)

Delete a New Relic log endpoint

Delete the New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingNewrelicApi;
my $api_instance = Fastly::LoggingNewrelicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_newrelic_name = "logging_newrelic_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingNewrelicApi->delete_log_newrelic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_newrelic_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_newrelic**
> LoggingNewrelicResponse get_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name)

Get a New Relic log endpoint

Get the details of a New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingNewrelicApi;
my $api_instance = Fastly::LoggingNewrelicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_newrelic_name = "logging_newrelic_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingNewrelicApi->get_log_newrelic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_newrelic_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_newrelic**
> ARRAY[LoggingNewrelicResponse] list_log_newrelic(service_id => $service_id, version_id => $version_id)

List New Relic log endpoints

List all of the New Relic Logs logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingNewrelicApi;
my $api_instance = Fastly::LoggingNewrelicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_newrelic(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingNewrelicApi->list_log_newrelic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingNewrelicResponse]**](LoggingNewrelicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_newrelic**
> LoggingNewrelicResponse update_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, token => $token, region => $region)

Update a New Relic log endpoint

Update a New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingNewrelicApi;
my $api_instance = Fastly::LoggingNewrelicApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_newrelic_name = "logging_newrelic_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = new Fastly.AnyType(); # AnyType | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
my $token = "token_example"; # string | The Insert API key from the Account page of your New Relic account. Required.
my $region = 'US'; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->update_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, token => $token, region => $region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingNewrelicApi->update_log_newrelic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_newrelic_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | [**AnyType**](AnyType.md)| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional] 
 **token** | **string**| The Insert API key from the Account page of your New Relic account. Required. | [optional] 
 **region** | **string**| The region to which to stream logs. | [optional] [default to &#39;US&#39;]

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

