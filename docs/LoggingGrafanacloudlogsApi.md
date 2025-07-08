# WebService::Fastly::LoggingGrafanacloudlogsApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingGrafanacloudlogsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#create_log_grafanacloudlogs) | **POST** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs | Create a Grafana Cloud Logs log endpoint
[**delete_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#delete_log_grafanacloudlogs) | **DELETE** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Delete the Grafana Cloud Logs log endpoint
[**get_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#get_log_grafanacloudlogs) | **GET** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Get a Grafana Cloud Logs log endpoint
[**list_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#list_log_grafanacloudlogs) | **GET** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs | List Grafana Cloud Logs log endpoints
[**update_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#update_log_grafanacloudlogs) | **PUT** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Update a Grafana Cloud Logs log endpoint


# **create_log_grafanacloudlogs**
> LoggingGrafanacloudlogsResponse create_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, user => $user, url => $url, token => $token, index => $index)

Create a Grafana Cloud Logs log endpoint

Create a Grafana Cloud Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGrafanacloudlogsApi;
my $api_instance = WebService::Fastly::LoggingGrafanacloudlogsApi->new(

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
my $format = "format_example"; # string | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
my $log_processing_region = 'none'; # string | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $user = "user_example"; # string | The Grafana Cloud Logs Dataset you want to log to.
my $url = "url_example"; # string | The URL of the Loki instance in your Grafana stack.
my $token = "token_example"; # string | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance.
my $index = "index_example"; # string | The Stream Labels, a JSON string used to identify the stream.

eval {
    my $result = $api_instance->create_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, user => $user, url => $url, token => $token, index => $index);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGrafanacloudlogsApi->create_log_grafanacloudlogs: $@\n";
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
 **format** | **string**| A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] 
 **log_processing_region** | **string**| The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **user** | **string**| The Grafana Cloud Logs Dataset you want to log to. | [optional] 
 **url** | **string**| The URL of the Loki instance in your Grafana stack. | [optional] 
 **token** | **string**| The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] 
 **index** | **string**| The Stream Labels, a JSON string used to identify the stream. | [optional] 

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_grafanacloudlogs**
> InlineResponse200 delete_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name)

Delete the Grafana Cloud Logs log endpoint

Delete the Grafana Cloud Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGrafanacloudlogsApi;
my $api_instance = WebService::Fastly::LoggingGrafanacloudlogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_grafanacloudlogs_name = "logging_grafanacloudlogs_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGrafanacloudlogsApi->delete_log_grafanacloudlogs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_grafanacloudlogs_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_grafanacloudlogs**
> LoggingGrafanacloudlogsResponse get_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name)

Get a Grafana Cloud Logs log endpoint

Get the details of a Grafana Cloud Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGrafanacloudlogsApi;
my $api_instance = WebService::Fastly::LoggingGrafanacloudlogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_grafanacloudlogs_name = "logging_grafanacloudlogs_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGrafanacloudlogsApi->get_log_grafanacloudlogs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_grafanacloudlogs_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_grafanacloudlogs**
> ARRAY[LoggingGrafanacloudlogsResponse] list_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id)

List Grafana Cloud Logs log endpoints

List all of the Grafana Cloud Logs logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGrafanacloudlogsApi;
my $api_instance = WebService::Fastly::LoggingGrafanacloudlogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGrafanacloudlogsApi->list_log_grafanacloudlogs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingGrafanacloudlogsResponse]**](LoggingGrafanacloudlogsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_grafanacloudlogs**
> LoggingGrafanacloudlogsResponse update_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, user => $user, url => $url, token => $token, index => $index)

Update a Grafana Cloud Logs log endpoint

Update a Grafana Cloud Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingGrafanacloudlogsApi;
my $api_instance = WebService::Fastly::LoggingGrafanacloudlogsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_grafanacloudlogs_name = "logging_grafanacloudlogs_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = "format_example"; # string | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
my $log_processing_region = 'none'; # string | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $user = "user_example"; # string | The Grafana Cloud Logs Dataset you want to log to.
my $url = "url_example"; # string | The URL of the Loki instance in your Grafana stack.
my $token = "token_example"; # string | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance.
my $index = "index_example"; # string | The Stream Labels, a JSON string used to identify the stream.

eval {
    my $result = $api_instance->update_log_grafanacloudlogs(service_id => $service_id, version_id => $version_id, logging_grafanacloudlogs_name => $logging_grafanacloudlogs_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, log_processing_region => $log_processing_region, format_version => $format_version, user => $user, url => $url, token => $token, index => $index);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingGrafanacloudlogsApi->update_log_grafanacloudlogs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_grafanacloudlogs_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional] 
 **log_processing_region** | **string**| The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional] [default to &#39;none&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **user** | **string**| The Grafana Cloud Logs Dataset you want to log to. | [optional] 
 **url** | **string**| The URL of the Loki instance in your Grafana stack. | [optional] 
 **token** | **string**| The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] 
 **index** | **string**| The Stream Labels, a JSON string used to identify the stream. | [optional] 

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

