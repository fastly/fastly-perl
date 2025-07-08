# WebService::Fastly::LoggingHerokuApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingHerokuApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_heroku**](LoggingHerokuApi.md#create_log_heroku) | **POST** /service/{service_id}/version/{version_id}/logging/heroku | Create a Heroku log endpoint
[**delete_log_heroku**](LoggingHerokuApi.md#delete_log_heroku) | **DELETE** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Delete the Heroku log endpoint
[**get_log_heroku**](LoggingHerokuApi.md#get_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Get a Heroku log endpoint
[**list_log_heroku**](LoggingHerokuApi.md#list_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku | List Heroku log endpoints
[**update_log_heroku**](LoggingHerokuApi.md#update_log_heroku) | **PUT** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Update the Heroku log endpoint


# **create_log_heroku**
> LoggingHerokuResponse create_log_heroku(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url)

Create a Heroku log endpoint

Create a Heroku for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHerokuApi;
my $api_instance = WebService::Fastly::LoggingHerokuApi->new(

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
my $token = "token_example"; # string | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)).
my $url = "url_example"; # string | The URL to stream logs to.

eval {
    my $result = $api_instance->create_log_heroku(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHerokuApi->create_log_heroku: $@\n";
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
 **token** | **string**| The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)). | [optional] 
 **url** | **string**| The URL to stream logs to. | [optional] 

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_heroku**
> InlineResponse200 delete_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name)

Delete the Heroku log endpoint

Delete the Heroku for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHerokuApi;
my $api_instance = WebService::Fastly::LoggingHerokuApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_heroku_name = "logging_heroku_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHerokuApi->delete_log_heroku: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_heroku_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_heroku**
> LoggingHerokuResponse get_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name)

Get a Heroku log endpoint

Get the Heroku for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHerokuApi;
my $api_instance = WebService::Fastly::LoggingHerokuApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_heroku_name = "logging_heroku_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHerokuApi->get_log_heroku: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_heroku_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_heroku**
> ARRAY[LoggingHerokuResponse] list_log_heroku(service_id => $service_id, version_id => $version_id)

List Heroku log endpoints

List all of the Herokus for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHerokuApi;
my $api_instance = WebService::Fastly::LoggingHerokuApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_heroku(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHerokuApi->list_log_heroku: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingHerokuResponse]**](LoggingHerokuResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_heroku**
> LoggingHerokuResponse update_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url)

Update the Heroku log endpoint

Update the Heroku for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingHerokuApi;
my $api_instance = WebService::Fastly::LoggingHerokuApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_heroku_name = "logging_heroku_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
my $log_processing_region = 'none'; # string | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $token = "token_example"; # string | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)).
my $url = "url_example"; # string | The URL to stream logs to.

eval {
    my $result = $api_instance->update_log_heroku(service_id => $service_id, version_id => $version_id, logging_heroku_name => $logging_heroku_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, token => $token, url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingHerokuApi->update_log_heroku: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_heroku_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **log_processing_region** | **string**| The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **token** | **string**| The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)). | [optional] 
 **url** | **string**| The URL to stream logs to. | [optional] 

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

