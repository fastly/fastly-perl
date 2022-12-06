# WebService::Fastly::LoggingBigqueryApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingBigqueryApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_bigquery**](LoggingBigqueryApi.md#create_log_bigquery) | **POST** /service/{service_id}/version/{version_id}/logging/bigquery | Create a BigQuery log endpoint
[**delete_log_bigquery**](LoggingBigqueryApi.md#delete_log_bigquery) | **DELETE** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Delete a BigQuery log endpoint
[**get_log_bigquery**](LoggingBigqueryApi.md#get_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Get a BigQuery log endpoint
[**list_log_bigquery**](LoggingBigqueryApi.md#list_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery | List BigQuery log endpoints
[**update_log_bigquery**](LoggingBigqueryApi.md#update_log_bigquery) | **PUT** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Update a BigQuery log endpoint


# **create_log_bigquery**
> LoggingBigqueryResponse create_log_bigquery(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, user => $user, secret_key => $secret_key, account_name => $account_name, dataset => $dataset, table => $table, template_suffix => $template_suffix, project_id => $project_id)

Create a BigQuery log endpoint

Create a BigQuery logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingBigqueryApi;
my $api_instance = WebService::Fastly::LoggingBigqueryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name of the BigQuery logging object. Used as a primary key for API access.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $dataset = "dataset_example"; # string | Your BigQuery dataset.
my $table = "table_example"; # string | Your BigQuery table.
my $template_suffix = "template_suffix_example"; # string | BigQuery table name suffix template. Optional.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->create_log_bigquery(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, user => $user, secret_key => $secret_key, account_name => $account_name, dataset => $dataset, table => $table, template_suffix => $template_suffix, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingBigqueryApi->create_log_bigquery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name of the BigQuery logging object. Used as a primary key for API access. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. | [optional] 
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **dataset** | **string**| Your BigQuery dataset. | [optional] 
 **table** | **string**| Your BigQuery table. | [optional] 
 **template_suffix** | **string**| BigQuery table name suffix template. Optional. | [optional] 
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_bigquery**
> InlineResponse200 delete_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name)

Delete a BigQuery log endpoint

Delete a BigQuery logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingBigqueryApi;
my $api_instance = WebService::Fastly::LoggingBigqueryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_bigquery_name = "logging_bigquery_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingBigqueryApi->delete_log_bigquery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_bigquery_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_bigquery**
> LoggingBigqueryResponse get_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name)

Get a BigQuery log endpoint

Get the details for a BigQuery logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingBigqueryApi;
my $api_instance = WebService::Fastly::LoggingBigqueryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_bigquery_name = "logging_bigquery_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingBigqueryApi->get_log_bigquery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_bigquery_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_bigquery**
> ARRAY[LoggingBigqueryResponse] list_log_bigquery(service_id => $service_id, version_id => $version_id)

List BigQuery log endpoints

List all of the BigQuery logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingBigqueryApi;
my $api_instance = WebService::Fastly::LoggingBigqueryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_bigquery(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingBigqueryApi->list_log_bigquery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingBigqueryResponse]**](LoggingBigqueryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_bigquery**
> LoggingBigqueryResponse update_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, user => $user, secret_key => $secret_key, account_name => $account_name, dataset => $dataset, table => $table, template_suffix => $template_suffix, project_id => $project_id)

Update a BigQuery log endpoint

Update a BigQuery logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingBigqueryApi;
my $api_instance = WebService::Fastly::LoggingBigqueryApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_bigquery_name = "logging_bigquery_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name of the BigQuery logging object. Used as a primary key for API access.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.
my $user = "user_example"; # string | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
my $secret_key = "secret_key_example"; # string | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
my $account_name = "account_name_example"; # string | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
my $dataset = "dataset_example"; # string | Your BigQuery dataset.
my $table = "table_example"; # string | Your BigQuery table.
my $template_suffix = "template_suffix_example"; # string | BigQuery table name suffix template. Optional.
my $project_id = "project_id_example"; # string | Your Google Cloud Platform project ID. Required

eval {
    my $result = $api_instance->update_log_bigquery(service_id => $service_id, version_id => $version_id, logging_bigquery_name => $logging_bigquery_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, user => $user, secret_key => $secret_key, account_name => $account_name, dataset => $dataset, table => $table, template_suffix => $template_suffix, project_id => $project_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingBigqueryApi->update_log_bigquery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_bigquery_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name of the BigQuery logging object. Used as a primary key for API access. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. | [optional] 
 **user** | **string**| Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **secret_key** | **string**| Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] 
 **account_name** | **string**| The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] 
 **dataset** | **string**| Your BigQuery dataset. | [optional] 
 **table** | **string**| Your BigQuery table. | [optional] 
 **template_suffix** | **string**| BigQuery table name suffix template. Optional. | [optional] 
 **project_id** | **string**| Your Google Cloud Platform project ID. Required | [optional] 

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

