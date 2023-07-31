# WebService::Fastly::LoggingPubsubApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingPubsubApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_gcp_pubsub**](LoggingPubsubApi.md#create_log_gcp_pubsub) | **POST** /service/{service_id}/version/{version_id}/logging/pubsub | Create a GCP Cloud Pub/Sub log endpoint
[**delete_log_gcp_pubsub**](LoggingPubsubApi.md#delete_log_gcp_pubsub) | **DELETE** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Delete a GCP Cloud Pub/Sub log endpoint
[**get_log_gcp_pubsub**](LoggingPubsubApi.md#get_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Get a GCP Cloud Pub/Sub log endpoint
[**list_log_gcp_pubsub**](LoggingPubsubApi.md#list_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub | List GCP Cloud Pub/Sub log endpoints
[**update_log_gcp_pubsub**](LoggingPubsubApi.md#update_log_gcp_pubsub) | **PUT** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Update a GCP Cloud Pub/Sub log endpoint


# **create_log_gcp_pubsub**
> LoggingGooglePubsubResponse create_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, user => $user, secret_key => $secret_key, account_name => $account_name, topic => $topic, project_id => $project_id)

Create a GCP Cloud Pub/Sub log endpoint

Create a Pub/Sub logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPubsubApi;
my $api_instance = WebService::Fastly::LoggingPubsubApi->new(

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
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $topic = "topic_example"; # string | The Google Cloud Pub/Sub topic to which logs will be published. Required.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->create_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, user => $user, secret_key => $secret_key, account_name => $account_name, topic => $topic, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPubsubApi->create_log_gcp_pubsub: $@\n";
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
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **topic** | **string**| The Google Cloud Pub/Sub topic to which logs will be published. Required. | [optional] 
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_gcp_pubsub**
> InlineResponse200 delete_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name)

Delete a GCP Cloud Pub/Sub log endpoint

Delete a Pub/Sub logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPubsubApi;
my $api_instance = WebService::Fastly::LoggingPubsubApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_google_pubsub_name = "logging_google_pubsub_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPubsubApi->delete_log_gcp_pubsub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_google_pubsub_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_gcp_pubsub**
> LoggingGooglePubsubResponse get_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name)

Get a GCP Cloud Pub/Sub log endpoint

Get the details for a Pub/Sub logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPubsubApi;
my $api_instance = WebService::Fastly::LoggingPubsubApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_google_pubsub_name = "logging_google_pubsub_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPubsubApi->get_log_gcp_pubsub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_google_pubsub_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_gcp_pubsub**
> ARRAY[LoggingGooglePubsubResponse] list_log_gcp_pubsub(service_id => $service_id, version_id => $version_id)

List GCP Cloud Pub/Sub log endpoints

List all of the Pub/Sub logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPubsubApi;
my $api_instance = WebService::Fastly::LoggingPubsubApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_gcp_pubsub(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPubsubApi->list_log_gcp_pubsub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingGooglePubsubResponse]**](LoggingGooglePubsubResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_gcp_pubsub**
> LoggingGooglePubsubResponse update_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, user => $user, secret_key => $secret_key, account_name => $account_name, topic => $topic, project_id => $project_id)

Update a GCP Cloud Pub/Sub log endpoint

Update a Pub/Sub logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingPubsubApi;
my $api_instance = WebService::Fastly::LoggingPubsubApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_google_pubsub_name = "logging_google_pubsub_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '%h %l %u %t "%r" %&gt;s %b'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $topic = "topic_example"; # string | The Google Cloud Pub/Sub topic to which logs will be published. Required.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->update_log_gcp_pubsub(service_id => $service_id, version_id => $version_id, logging_google_pubsub_name => $logging_google_pubsub_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, user => $user, secret_key => $secret_key, account_name => $account_name, topic => $topic, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingPubsubApi->update_log_gcp_pubsub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_google_pubsub_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] [default to &#39;%h %l %u %t &quot;%r&quot; %&amp;gt;s %b&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **topic** | **string**| The Google Cloud Pub/Sub topic to which logs will be published. Required. | [optional] 
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

