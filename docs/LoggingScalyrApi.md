# Fastly::LoggingScalyrApi

## Load the API package
```perl
use Fastly::Object::LoggingScalyrApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_scalyr**](LoggingScalyrApi.md#create_log_scalyr) | **POST** /service/{service_id}/version/{version_id}/logging/scalyr | Create a Scalyr log endpoint
[**delete_log_scalyr**](LoggingScalyrApi.md#delete_log_scalyr) | **DELETE** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Delete the Scalyr log endpoint
[**get_log_scalyr**](LoggingScalyrApi.md#get_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Get a Scalyr log endpoint
[**list_log_scalyr**](LoggingScalyrApi.md#list_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr | List Scalyr log endpoints
[**update_log_scalyr**](LoggingScalyrApi.md#update_log_scalyr) | **PUT** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Update the Scalyr log endpoint


# **create_log_scalyr**
> LoggingScalyrResponse create_log_scalyr(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, region => $region, token => $token, project_id => $project_id)

Create a Scalyr log endpoint

Create a Scalyr for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingScalyrApi;
my $api_instance = Fastly::LoggingScalyrApi->new(

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
my $region = 'US'; # string | The region that log data will be sent to.
my $token = "token_example"; # string | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)).
my $project_id = 'logplex'; # string | The name of the logfile within Scalyr.

eval {
    my $result = $api_instance->create_log_scalyr(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, region => $region, token => $token, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingScalyrApi->create_log_scalyr: $@\n";
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
 **region** | **string**| The region that log data will be sent to. | [optional] [default to &#39;US&#39;]
 **token** | **string**| The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)). | [optional] 
 **project_id** | **string**| The name of the logfile within Scalyr. | [optional] [default to &#39;logplex&#39;]

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_scalyr**
> DeleteAcl200Response delete_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name)

Delete the Scalyr log endpoint

Delete the Scalyr for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingScalyrApi;
my $api_instance = Fastly::LoggingScalyrApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_scalyr_name = "logging_scalyr_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingScalyrApi->delete_log_scalyr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_scalyr_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_scalyr**
> LoggingScalyrResponse get_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name)

Get a Scalyr log endpoint

Get the Scalyr for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingScalyrApi;
my $api_instance = Fastly::LoggingScalyrApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_scalyr_name = "logging_scalyr_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingScalyrApi->get_log_scalyr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_scalyr_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_scalyr**
> ARRAY[LoggingScalyrResponse] list_log_scalyr(service_id => $service_id, version_id => $version_id)

List Scalyr log endpoints

List all of the Scalyrs for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingScalyrApi;
my $api_instance = Fastly::LoggingScalyrApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_scalyr(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingScalyrApi->list_log_scalyr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingScalyrResponse]**](LoggingScalyrResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_scalyr**
> LoggingScalyrResponse update_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, region => $region, token => $token, project_id => $project_id)

Update the Scalyr log endpoint

Update the Scalyr for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingScalyrApi;
my $api_instance = Fastly::LoggingScalyrApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_scalyr_name = "logging_scalyr_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $region = 'US'; # string | The region that log data will be sent to.
my $token = "token_example"; # string | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)).
my $project_id = 'logplex'; # string | The name of the logfile within Scalyr.

eval {
    my $result = $api_instance->update_log_scalyr(service_id => $service_id, version_id => $version_id, logging_scalyr_name => $logging_scalyr_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, region => $region, token => $token, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingScalyrApi->update_log_scalyr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_scalyr_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **region** | **string**| The region that log data will be sent to. | [optional] [default to &#39;US&#39;]
 **token** | **string**| The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)). | [optional] 
 **project_id** | **string**| The name of the logfile within Scalyr. | [optional] [default to &#39;logplex&#39;]

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

