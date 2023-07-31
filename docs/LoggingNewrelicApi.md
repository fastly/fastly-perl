# WebService::Fastly::LoggingNewrelicApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingNewrelicApi;
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
> LoggingNewrelicResponse create_log_newrelic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, token => $token, region => $region)

Create a New Relic log endpoint

Create a New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingNewrelicApi;
my $api_instance = WebService::Fastly::LoggingNewrelicApi->new(

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
my $format = '{"timestamp":"%{begin:%Y-%m-%dT%H:%M:%S}t","time_elapsed":"%{time.elapsed.usec}V","is_tls":"%{if(req.is_ssl, \"true\", \"false\")}V","client_ip":"%{req.http.Fastly-Client-IP}V","geo_city":"%{client.geo.city}V","geo_country_code":"%{client.geo.country_code}V","request":"%{req.request}V","host":"%{req.http.Fastly-Orig-Host}V","url":"%{json.escape(req.url)}V","request_referer":"%{json.escape(req.http.Referer)}V","request_user_agent":"%{json.escape(req.http.User-Agent)}V","request_accept_language":"%{json.escape(req.http.Accept-Language)}V","request_accept_charset":"%{json.escape(req.http.Accept-Charset)}V","cache_status":"%{regsub(fastly_info.state, \"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\", \"\\2\\3\") }V"}'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $token = "token_example"; # string | The Insert API key from the Account page of your New Relic account. Required.
my $region = 'US'; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->create_log_newrelic(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, token => $token, region => $region);
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
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional] [default to &#39;{&quot;timestamp&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S}t&quot;,&quot;time_elapsed&quot;:&quot;%{time.elapsed.usec}V&quot;,&quot;is_tls&quot;:&quot;%{if(req.is_ssl, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;client_ip&quot;:&quot;%{req.http.Fastly-Client-IP}V&quot;,&quot;geo_city&quot;:&quot;%{client.geo.city}V&quot;,&quot;geo_country_code&quot;:&quot;%{client.geo.country_code}V&quot;,&quot;request&quot;:&quot;%{req.request}V&quot;,&quot;host&quot;:&quot;%{req.http.Fastly-Orig-Host}V&quot;,&quot;url&quot;:&quot;%{json.escape(req.url)}V&quot;,&quot;request_referer&quot;:&quot;%{json.escape(req.http.Referer)}V&quot;,&quot;request_user_agent&quot;:&quot;%{json.escape(req.http.User-Agent)}V&quot;,&quot;request_accept_language&quot;:&quot;%{json.escape(req.http.Accept-Language)}V&quot;,&quot;request_accept_charset&quot;:&quot;%{json.escape(req.http.Accept-Charset)}V&quot;,&quot;cache_status&quot;:&quot;%{regsub(fastly_info.state, \&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\&quot;, \&quot;\\2\\3\&quot;) }V&quot;}&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
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
> InlineResponse200 delete_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name)

Delete a New Relic log endpoint

Delete the New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingNewrelicApi;
my $api_instance = WebService::Fastly::LoggingNewrelicApi->new(

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

[**InlineResponse200**](InlineResponse200.md)

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
use WebService::Fastly::LoggingNewrelicApi;
my $api_instance = WebService::Fastly::LoggingNewrelicApi->new(

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
use WebService::Fastly::LoggingNewrelicApi;
my $api_instance = WebService::Fastly::LoggingNewrelicApi->new(

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
> LoggingNewrelicResponse update_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, token => $token, region => $region)

Update a New Relic log endpoint

Update a New Relic Logs logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingNewrelicApi;
my $api_instance = WebService::Fastly::LoggingNewrelicApi->new(

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
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '{"timestamp":"%{begin:%Y-%m-%dT%H:%M:%S}t","time_elapsed":"%{time.elapsed.usec}V","is_tls":"%{if(req.is_ssl, \"true\", \"false\")}V","client_ip":"%{req.http.Fastly-Client-IP}V","geo_city":"%{client.geo.city}V","geo_country_code":"%{client.geo.country_code}V","request":"%{req.request}V","host":"%{req.http.Fastly-Orig-Host}V","url":"%{json.escape(req.url)}V","request_referer":"%{json.escape(req.http.Referer)}V","request_user_agent":"%{json.escape(req.http.User-Agent)}V","request_accept_language":"%{json.escape(req.http.Accept-Language)}V","request_accept_charset":"%{json.escape(req.http.Accept-Charset)}V","cache_status":"%{regsub(fastly_info.state, \"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\", \"\\2\\3\") }V"}'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $token = "token_example"; # string | The Insert API key from the Account page of your New Relic account. Required.
my $region = 'US'; # string | The region to which to stream logs.

eval {
    my $result = $api_instance->update_log_newrelic(service_id => $service_id, version_id => $version_id, logging_newrelic_name => $logging_newrelic_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, token => $token, region => $region);
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
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional] [default to &#39;{&quot;timestamp&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S}t&quot;,&quot;time_elapsed&quot;:&quot;%{time.elapsed.usec}V&quot;,&quot;is_tls&quot;:&quot;%{if(req.is_ssl, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;client_ip&quot;:&quot;%{req.http.Fastly-Client-IP}V&quot;,&quot;geo_city&quot;:&quot;%{client.geo.city}V&quot;,&quot;geo_country_code&quot;:&quot;%{client.geo.country_code}V&quot;,&quot;request&quot;:&quot;%{req.request}V&quot;,&quot;host&quot;:&quot;%{req.http.Fastly-Orig-Host}V&quot;,&quot;url&quot;:&quot;%{json.escape(req.url)}V&quot;,&quot;request_referer&quot;:&quot;%{json.escape(req.http.Referer)}V&quot;,&quot;request_user_agent&quot;:&quot;%{json.escape(req.http.User-Agent)}V&quot;,&quot;request_accept_language&quot;:&quot;%{json.escape(req.http.Accept-Language)}V&quot;,&quot;request_accept_charset&quot;:&quot;%{json.escape(req.http.Accept-Charset)}V&quot;,&quot;cache_status&quot;:&quot;%{regsub(fastly_info.state, \&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\&quot;, \&quot;\\2\\3\&quot;) }V&quot;}&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
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

