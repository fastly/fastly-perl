# WebService::Fastly::LoggingElasticsearchApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingElasticsearchApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_elasticsearch**](LoggingElasticsearchApi.md#create_log_elasticsearch) | **POST** /service/{service_id}/version/{version_id}/logging/elasticsearch | Create an Elasticsearch log endpoint
[**delete_log_elasticsearch**](LoggingElasticsearchApi.md#delete_log_elasticsearch) | **DELETE** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Delete an Elasticsearch log endpoint
[**get_log_elasticsearch**](LoggingElasticsearchApi.md#get_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Get an Elasticsearch log endpoint
[**list_log_elasticsearch**](LoggingElasticsearchApi.md#list_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch | List Elasticsearch log endpoints
[**update_log_elasticsearch**](LoggingElasticsearchApi.md#update_log_elasticsearch) | **PUT** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Update an Elasticsearch log endpoint


# **create_log_elasticsearch**
> LoggingElasticsearchResponse create_log_elasticsearch(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, index => $index, url => $url, pipeline => $pipeline, user => $user, password => $password)

Create an Elasticsearch log endpoint

Create a Elasticsearch logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingElasticsearchApi;
my $api_instance = WebService::Fastly::LoggingElasticsearchApi->new(

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
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest.
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` for unbounded.
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
my $index = "index_example"; # string | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `#{%F}` will interpolate as `YYYY-MM-DD` with today's date.
my $url = "url_example"; # string | The URL to stream logs to. Must use HTTPS.
my $pipeline = "pipeline_example"; # string | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html).
my $user = "user_example"; # string | Basic Auth username.
my $password = "password_example"; # string | Basic Auth password.

eval {
    my $result = $api_instance->create_log_elasticsearch(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, index => $index, url => $url, pipeline => $pipeline, user => $user, password => $password);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingElasticsearchApi->create_log_elasticsearch: $@\n";
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
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest. | [optional] 
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **index** | **string**| The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `#{%F}` will interpolate as `YYYY-MM-DD` with today&#39;s date. | [optional] 
 **url** | **string**| The URL to stream logs to. Must use HTTPS. | [optional] 
 **pipeline** | **string**| The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html). | [optional] 
 **user** | **string**| Basic Auth username. | [optional] 
 **password** | **string**| Basic Auth password. | [optional] 

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_elasticsearch**
> InlineResponse200 delete_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name)

Delete an Elasticsearch log endpoint

Delete the Elasticsearch logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingElasticsearchApi;
my $api_instance = WebService::Fastly::LoggingElasticsearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_elasticsearch_name = "logging_elasticsearch_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingElasticsearchApi->delete_log_elasticsearch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_elasticsearch_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_elasticsearch**
> LoggingElasticsearchResponse get_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name)

Get an Elasticsearch log endpoint

Get the Elasticsearch logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingElasticsearchApi;
my $api_instance = WebService::Fastly::LoggingElasticsearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_elasticsearch_name = "logging_elasticsearch_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingElasticsearchApi->get_log_elasticsearch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_elasticsearch_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_elasticsearch**
> ARRAY[LoggingElasticsearchResponse] list_log_elasticsearch(service_id => $service_id, version_id => $version_id)

List Elasticsearch log endpoints

List all of the Elasticsearch logging endpoints for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingElasticsearchApi;
my $api_instance = WebService::Fastly::LoggingElasticsearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_elasticsearch(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingElasticsearchApi->list_log_elasticsearch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingElasticsearchResponse]**](LoggingElasticsearchResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_elasticsearch**
> LoggingElasticsearchResponse update_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, index => $index, url => $url, pipeline => $pipeline, user => $user, password => $password)

Update an Elasticsearch log endpoint

Update the Elasticsearch logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingElasticsearchApi;
my $api_instance = WebService::Fastly::LoggingElasticsearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_elasticsearch_name = "logging_elasticsearch_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = "format_example"; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest.
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = 'null'; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $request_max_entries = 0; # int | The maximum number of logs sent in one request. Defaults `0` for unbounded.
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
my $index = "index_example"; # string | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `#{%F}` will interpolate as `YYYY-MM-DD` with today's date.
my $url = "url_example"; # string | The URL to stream logs to. Must use HTTPS.
my $pipeline = "pipeline_example"; # string | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html).
my $user = "user_example"; # string | Basic Auth username.
my $password = "password_example"; # string | Basic Auth password.

eval {
    my $result = $api_instance->update_log_elasticsearch(service_id => $service_id, version_id => $version_id, logging_elasticsearch_name => $logging_elasticsearch_name, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, request_max_entries => $request_max_entries, request_max_bytes => $request_max_bytes, index => $index, url => $url, pipeline => $pipeline, user => $user, password => $password);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingElasticsearchApi->update_log_elasticsearch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_elasticsearch_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional] [default to 2]
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest. | [optional] 
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] [default to &#39;null&#39;]
 **request_max_entries** | **int**| The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional] [default to 0]
 **index** | **string**| The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `#{%F}` will interpolate as `YYYY-MM-DD` with today&#39;s date. | [optional] 
 **url** | **string**| The URL to stream logs to. Must use HTTPS. | [optional] 
 **pipeline** | **string**| The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html). | [optional] 
 **user** | **string**| Basic Auth username. | [optional] 
 **password** | **string**| Basic Auth password. | [optional] 

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

