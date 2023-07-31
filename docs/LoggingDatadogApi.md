# WebService::Fastly::LoggingDatadogApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingDatadogApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_datadog**](LoggingDatadogApi.md#create_log_datadog) | **POST** /service/{service_id}/version/{version_id}/logging/datadog | Create a Datadog log endpoint
[**delete_log_datadog**](LoggingDatadogApi.md#delete_log_datadog) | **DELETE** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Delete a Datadog log endpoint
[**get_log_datadog**](LoggingDatadogApi.md#get_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Get a Datadog log endpoint
[**list_log_datadog**](LoggingDatadogApi.md#list_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog | List Datadog log endpoints
[**update_log_datadog**](LoggingDatadogApi.md#update_log_datadog) | **PUT** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Update a Datadog log endpoint


# **create_log_datadog**
> LoggingDatadogResponse create_log_datadog(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, region => $region, token => $token)

Create a Datadog log endpoint

Create a Datadog logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDatadogApi;
my $api_instance = WebService::Fastly::LoggingDatadogApi->new(

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
my $format = '{"ddsource":"fastly","service":"%{req.service_id}V","date":"%{begin:%Y-%m-%dT%H:%M:%S%Z}t","time_start":"%{begin:%Y-%m-%dT%H:%M:%S%Z}t","time_end":"%{end:%Y-%m-%dT%H:%M:%S%Z}t","http":{"request_time_ms":"%D","method":"%m","url":"%{json.escape(req.url)}V","useragent":"%{User-Agent}i","referer":"%{Referer}i","protocol":"%H","request_x_forwarded_for":"%{X-Forwarded-For}i","status_code":"%s"},"network":{"client":{"ip":"%h","name":"%{client.as.name}V","number":"%{client.as.number}V","connection_speed":"%{client.geo.conn_speed}V"},"destination":{"ip":"%A"},"geoip":{"geo_city":"%{client.geo.city.utf8}V","geo_country_code":"%{client.geo.country_code}V","geo_continent_code":"%{client.geo.continent_code}V","geo_region":"%{client.geo.region}V"},"bytes_written":"%B","bytes_read":"%{req.body_bytes_read}V"},"host":"%{Fastly-Orig-Host}i","origin_host":"%v","is_ipv6":"%{if(req.is_ipv6, \"true\", \"false\")}V","is_tls":"%{if(req.is_ssl, \"true\", \"false\")}V","tls_client_protocol":"%{json.escape(tls.client.protocol)}V","tls_client_servername":"%{json.escape(tls.client.servername)}V","tls_client_cipher":"%{json.escape(tls.client.cipher)}V","tls_client_cipher_sha":"%{json.escape(tls.client.ciphers_sha)}V","tls_client_tlsexts_sha":"%{json.escape(tls.client.tlsexts_sha)}V","is_h2":"%{if(fastly_info.is_h2, \"true\", \"false\")}V","is_h2_push":"%{if(fastly_info.h2.is_push, \"true\", \"false\")}V","h2_stream_id":"%{fastly_info.h2.stream_id}V","request_accept_content":"%{Accept}i","request_accept_language":"%{Accept-Language}i","request_accept_encoding":"%{Accept-Encoding}i","request_accept_charset":"%{Accept-Charset}i","request_connection":"%{Connection}i","request_dnt":"%{DNT}i","request_forwarded":"%{Forwarded}i","request_via":"%{Via}i","request_cache_control":"%{Cache-Control}i","request_x_requested_with":"%{X-Requested-With}i","request_x_att_device_id":"%{X-ATT-Device-Id}i","content_type":"%{Content-Type}o","is_cacheable":"%{if(fastly_info.state~\"^(HIT|MISS)$\", \"true\", \"false\")}V","response_age":"%{Age}o","response_cache_control":"%{Cache-Control}o","response_expires":"%{Expires}o","response_last_modified":"%{Last-Modified}o","response_tsv":"%{TSV}o","server_datacenter":"%{server.datacenter}V","req_header_size":"%{req.header_bytes_read}V","resp_header_size":"%{resp.header_bytes_written}V","socket_cwnd":"%{client.socket.cwnd}V","socket_nexthop":"%{client.socket.nexthop}V","socket_tcpi_rcv_mss":"%{client.socket.tcpi_rcv_mss}V","socket_tcpi_snd_mss":"%{client.socket.tcpi_snd_mss}V","socket_tcpi_rtt":"%{client.socket.tcpi_rtt}V","socket_tcpi_rttvar":"%{client.socket.tcpi_rttvar}V","socket_tcpi_rcv_rtt":"%{client.socket.tcpi_rcv_rtt}V","socket_tcpi_rcv_space":"%{client.socket.tcpi_rcv_space}V","socket_tcpi_last_data_sent":"%{client.socket.tcpi_last_data_sent}V","socket_tcpi_total_retrans":"%{client.socket.tcpi_total_retrans}V","socket_tcpi_delta_retrans":"%{client.socket.tcpi_delta_retrans}V","socket_ploss":"%{client.socket.ploss}V"}'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $region = 'US'; # string | The region that log data will be sent to.
my $token = "token_example"; # string | The API key from your Datadog account. Required.

eval {
    my $result = $api_instance->create_log_datadog(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, region => $region, token => $token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDatadogApi->create_log_datadog: $@\n";
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
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest.  | [optional] [default to &#39;{&quot;ddsource&quot;:&quot;fastly&quot;,&quot;service&quot;:&quot;%{req.service_id}V&quot;,&quot;date&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;time_start&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;time_end&quot;:&quot;%{end:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;http&quot;:{&quot;request_time_ms&quot;:&quot;%D&quot;,&quot;method&quot;:&quot;%m&quot;,&quot;url&quot;:&quot;%{json.escape(req.url)}V&quot;,&quot;useragent&quot;:&quot;%{User-Agent}i&quot;,&quot;referer&quot;:&quot;%{Referer}i&quot;,&quot;protocol&quot;:&quot;%H&quot;,&quot;request_x_forwarded_for&quot;:&quot;%{X-Forwarded-For}i&quot;,&quot;status_code&quot;:&quot;%s&quot;},&quot;network&quot;:{&quot;client&quot;:{&quot;ip&quot;:&quot;%h&quot;,&quot;name&quot;:&quot;%{client.as.name}V&quot;,&quot;number&quot;:&quot;%{client.as.number}V&quot;,&quot;connection_speed&quot;:&quot;%{client.geo.conn_speed}V&quot;},&quot;destination&quot;:{&quot;ip&quot;:&quot;%A&quot;},&quot;geoip&quot;:{&quot;geo_city&quot;:&quot;%{client.geo.city.utf8}V&quot;,&quot;geo_country_code&quot;:&quot;%{client.geo.country_code}V&quot;,&quot;geo_continent_code&quot;:&quot;%{client.geo.continent_code}V&quot;,&quot;geo_region&quot;:&quot;%{client.geo.region}V&quot;},&quot;bytes_written&quot;:&quot;%B&quot;,&quot;bytes_read&quot;:&quot;%{req.body_bytes_read}V&quot;},&quot;host&quot;:&quot;%{Fastly-Orig-Host}i&quot;,&quot;origin_host&quot;:&quot;%v&quot;,&quot;is_ipv6&quot;:&quot;%{if(req.is_ipv6, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;is_tls&quot;:&quot;%{if(req.is_ssl, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;tls_client_protocol&quot;:&quot;%{json.escape(tls.client.protocol)}V&quot;,&quot;tls_client_servername&quot;:&quot;%{json.escape(tls.client.servername)}V&quot;,&quot;tls_client_cipher&quot;:&quot;%{json.escape(tls.client.cipher)}V&quot;,&quot;tls_client_cipher_sha&quot;:&quot;%{json.escape(tls.client.ciphers_sha)}V&quot;,&quot;tls_client_tlsexts_sha&quot;:&quot;%{json.escape(tls.client.tlsexts_sha)}V&quot;,&quot;is_h2&quot;:&quot;%{if(fastly_info.is_h2, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;is_h2_push&quot;:&quot;%{if(fastly_info.h2.is_push, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;h2_stream_id&quot;:&quot;%{fastly_info.h2.stream_id}V&quot;,&quot;request_accept_content&quot;:&quot;%{Accept}i&quot;,&quot;request_accept_language&quot;:&quot;%{Accept-Language}i&quot;,&quot;request_accept_encoding&quot;:&quot;%{Accept-Encoding}i&quot;,&quot;request_accept_charset&quot;:&quot;%{Accept-Charset}i&quot;,&quot;request_connection&quot;:&quot;%{Connection}i&quot;,&quot;request_dnt&quot;:&quot;%{DNT}i&quot;,&quot;request_forwarded&quot;:&quot;%{Forwarded}i&quot;,&quot;request_via&quot;:&quot;%{Via}i&quot;,&quot;request_cache_control&quot;:&quot;%{Cache-Control}i&quot;,&quot;request_x_requested_with&quot;:&quot;%{X-Requested-With}i&quot;,&quot;request_x_att_device_id&quot;:&quot;%{X-ATT-Device-Id}i&quot;,&quot;content_type&quot;:&quot;%{Content-Type}o&quot;,&quot;is_cacheable&quot;:&quot;%{if(fastly_info.state~\&quot;^(HIT|MISS)$\&quot;, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;response_age&quot;:&quot;%{Age}o&quot;,&quot;response_cache_control&quot;:&quot;%{Cache-Control}o&quot;,&quot;response_expires&quot;:&quot;%{Expires}o&quot;,&quot;response_last_modified&quot;:&quot;%{Last-Modified}o&quot;,&quot;response_tsv&quot;:&quot;%{TSV}o&quot;,&quot;server_datacenter&quot;:&quot;%{server.datacenter}V&quot;,&quot;req_header_size&quot;:&quot;%{req.header_bytes_read}V&quot;,&quot;resp_header_size&quot;:&quot;%{resp.header_bytes_written}V&quot;,&quot;socket_cwnd&quot;:&quot;%{client.socket.cwnd}V&quot;,&quot;socket_nexthop&quot;:&quot;%{client.socket.nexthop}V&quot;,&quot;socket_tcpi_rcv_mss&quot;:&quot;%{client.socket.tcpi_rcv_mss}V&quot;,&quot;socket_tcpi_snd_mss&quot;:&quot;%{client.socket.tcpi_snd_mss}V&quot;,&quot;socket_tcpi_rtt&quot;:&quot;%{client.socket.tcpi_rtt}V&quot;,&quot;socket_tcpi_rttvar&quot;:&quot;%{client.socket.tcpi_rttvar}V&quot;,&quot;socket_tcpi_rcv_rtt&quot;:&quot;%{client.socket.tcpi_rcv_rtt}V&quot;,&quot;socket_tcpi_rcv_space&quot;:&quot;%{client.socket.tcpi_rcv_space}V&quot;,&quot;socket_tcpi_last_data_sent&quot;:&quot;%{client.socket.tcpi_last_data_sent}V&quot;,&quot;socket_tcpi_total_retrans&quot;:&quot;%{client.socket.tcpi_total_retrans}V&quot;,&quot;socket_tcpi_delta_retrans&quot;:&quot;%{client.socket.tcpi_delta_retrans}V&quot;,&quot;socket_ploss&quot;:&quot;%{client.socket.ploss}V&quot;}&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **region** | **string**| The region that log data will be sent to. | [optional] [default to &#39;US&#39;]
 **token** | **string**| The API key from your Datadog account. Required. | [optional] 

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_datadog**
> InlineResponse200 delete_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name)

Delete a Datadog log endpoint

Delete the Datadog logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDatadogApi;
my $api_instance = WebService::Fastly::LoggingDatadogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_datadog_name = "logging_datadog_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDatadogApi->delete_log_datadog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_datadog_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_datadog**
> LoggingDatadogResponse get_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name)

Get a Datadog log endpoint

Get the details for a Datadog logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDatadogApi;
my $api_instance = WebService::Fastly::LoggingDatadogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_datadog_name = "logging_datadog_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDatadogApi->get_log_datadog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_datadog_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_datadog**
> ARRAY[LoggingDatadogResponse] list_log_datadog(service_id => $service_id, version_id => $version_id)

List Datadog log endpoints

List all of the Datadog logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDatadogApi;
my $api_instance = WebService::Fastly::LoggingDatadogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_datadog(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDatadogApi->list_log_datadog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingDatadogResponse]**](LoggingDatadogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_log_datadog**
> LoggingDatadogResponse update_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, region => $region, token => $token)

Update a Datadog log endpoint

Update the Datadog logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingDatadogApi;
my $api_instance = WebService::Fastly::LoggingDatadogApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_datadog_name = "logging_datadog_name_example"; # string | The name for the real-time logging configuration.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = "placement_example"; # string | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
my $response_condition = "response_condition_example"; # string | The name of an existing condition in the configured endpoint, or leave blank to always execute.
my $format = '{"ddsource":"fastly","service":"%{req.service_id}V","date":"%{begin:%Y-%m-%dT%H:%M:%S%Z}t","time_start":"%{begin:%Y-%m-%dT%H:%M:%S%Z}t","time_end":"%{end:%Y-%m-%dT%H:%M:%S%Z}t","http":{"request_time_ms":"%D","method":"%m","url":"%{json.escape(req.url)}V","useragent":"%{User-Agent}i","referer":"%{Referer}i","protocol":"%H","request_x_forwarded_for":"%{X-Forwarded-For}i","status_code":"%s"},"network":{"client":{"ip":"%h","name":"%{client.as.name}V","number":"%{client.as.number}V","connection_speed":"%{client.geo.conn_speed}V"},"destination":{"ip":"%A"},"geoip":{"geo_city":"%{client.geo.city.utf8}V","geo_country_code":"%{client.geo.country_code}V","geo_continent_code":"%{client.geo.continent_code}V","geo_region":"%{client.geo.region}V"},"bytes_written":"%B","bytes_read":"%{req.body_bytes_read}V"},"host":"%{Fastly-Orig-Host}i","origin_host":"%v","is_ipv6":"%{if(req.is_ipv6, \"true\", \"false\")}V","is_tls":"%{if(req.is_ssl, \"true\", \"false\")}V","tls_client_protocol":"%{json.escape(tls.client.protocol)}V","tls_client_servername":"%{json.escape(tls.client.servername)}V","tls_client_cipher":"%{json.escape(tls.client.cipher)}V","tls_client_cipher_sha":"%{json.escape(tls.client.ciphers_sha)}V","tls_client_tlsexts_sha":"%{json.escape(tls.client.tlsexts_sha)}V","is_h2":"%{if(fastly_info.is_h2, \"true\", \"false\")}V","is_h2_push":"%{if(fastly_info.h2.is_push, \"true\", \"false\")}V","h2_stream_id":"%{fastly_info.h2.stream_id}V","request_accept_content":"%{Accept}i","request_accept_language":"%{Accept-Language}i","request_accept_encoding":"%{Accept-Encoding}i","request_accept_charset":"%{Accept-Charset}i","request_connection":"%{Connection}i","request_dnt":"%{DNT}i","request_forwarded":"%{Forwarded}i","request_via":"%{Via}i","request_cache_control":"%{Cache-Control}i","request_x_requested_with":"%{X-Requested-With}i","request_x_att_device_id":"%{X-ATT-Device-Id}i","content_type":"%{Content-Type}o","is_cacheable":"%{if(fastly_info.state~\"^(HIT|MISS)$\", \"true\", \"false\")}V","response_age":"%{Age}o","response_cache_control":"%{Cache-Control}o","response_expires":"%{Expires}o","response_last_modified":"%{Last-Modified}o","response_tsv":"%{TSV}o","server_datacenter":"%{server.datacenter}V","req_header_size":"%{req.header_bytes_read}V","resp_header_size":"%{resp.header_bytes_written}V","socket_cwnd":"%{client.socket.cwnd}V","socket_nexthop":"%{client.socket.nexthop}V","socket_tcpi_rcv_mss":"%{client.socket.tcpi_rcv_mss}V","socket_tcpi_snd_mss":"%{client.socket.tcpi_snd_mss}V","socket_tcpi_rtt":"%{client.socket.tcpi_rtt}V","socket_tcpi_rttvar":"%{client.socket.tcpi_rttvar}V","socket_tcpi_rcv_rtt":"%{client.socket.tcpi_rcv_rtt}V","socket_tcpi_rcv_space":"%{client.socket.tcpi_rcv_space}V","socket_tcpi_last_data_sent":"%{client.socket.tcpi_last_data_sent}V","socket_tcpi_total_retrans":"%{client.socket.tcpi_total_retrans}V","socket_tcpi_delta_retrans":"%{client.socket.tcpi_delta_retrans}V","socket_ploss":"%{client.socket.ploss}V"}'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest. 
my $format_version = 2; # int | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
my $region = 'US'; # string | The region that log data will be sent to.
my $token = "token_example"; # string | The API key from your Datadog account. Required.

eval {
    my $result = $api_instance->update_log_datadog(service_id => $service_id, version_id => $version_id, logging_datadog_name => $logging_datadog_name, name => $name, placement => $placement, response_condition => $response_condition, format => $format, format_version => $format_version, region => $region, token => $token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingDatadogApi->update_log_datadog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_datadog_name** | **string**| The name for the real-time logging configuration. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | **string**| Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] 
 **response_condition** | **string**| The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest.  | [optional] [default to &#39;{&quot;ddsource&quot;:&quot;fastly&quot;,&quot;service&quot;:&quot;%{req.service_id}V&quot;,&quot;date&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;time_start&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;time_end&quot;:&quot;%{end:%Y-%m-%dT%H:%M:%S%Z}t&quot;,&quot;http&quot;:{&quot;request_time_ms&quot;:&quot;%D&quot;,&quot;method&quot;:&quot;%m&quot;,&quot;url&quot;:&quot;%{json.escape(req.url)}V&quot;,&quot;useragent&quot;:&quot;%{User-Agent}i&quot;,&quot;referer&quot;:&quot;%{Referer}i&quot;,&quot;protocol&quot;:&quot;%H&quot;,&quot;request_x_forwarded_for&quot;:&quot;%{X-Forwarded-For}i&quot;,&quot;status_code&quot;:&quot;%s&quot;},&quot;network&quot;:{&quot;client&quot;:{&quot;ip&quot;:&quot;%h&quot;,&quot;name&quot;:&quot;%{client.as.name}V&quot;,&quot;number&quot;:&quot;%{client.as.number}V&quot;,&quot;connection_speed&quot;:&quot;%{client.geo.conn_speed}V&quot;},&quot;destination&quot;:{&quot;ip&quot;:&quot;%A&quot;},&quot;geoip&quot;:{&quot;geo_city&quot;:&quot;%{client.geo.city.utf8}V&quot;,&quot;geo_country_code&quot;:&quot;%{client.geo.country_code}V&quot;,&quot;geo_continent_code&quot;:&quot;%{client.geo.continent_code}V&quot;,&quot;geo_region&quot;:&quot;%{client.geo.region}V&quot;},&quot;bytes_written&quot;:&quot;%B&quot;,&quot;bytes_read&quot;:&quot;%{req.body_bytes_read}V&quot;},&quot;host&quot;:&quot;%{Fastly-Orig-Host}i&quot;,&quot;origin_host&quot;:&quot;%v&quot;,&quot;is_ipv6&quot;:&quot;%{if(req.is_ipv6, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;is_tls&quot;:&quot;%{if(req.is_ssl, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;tls_client_protocol&quot;:&quot;%{json.escape(tls.client.protocol)}V&quot;,&quot;tls_client_servername&quot;:&quot;%{json.escape(tls.client.servername)}V&quot;,&quot;tls_client_cipher&quot;:&quot;%{json.escape(tls.client.cipher)}V&quot;,&quot;tls_client_cipher_sha&quot;:&quot;%{json.escape(tls.client.ciphers_sha)}V&quot;,&quot;tls_client_tlsexts_sha&quot;:&quot;%{json.escape(tls.client.tlsexts_sha)}V&quot;,&quot;is_h2&quot;:&quot;%{if(fastly_info.is_h2, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;is_h2_push&quot;:&quot;%{if(fastly_info.h2.is_push, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;h2_stream_id&quot;:&quot;%{fastly_info.h2.stream_id}V&quot;,&quot;request_accept_content&quot;:&quot;%{Accept}i&quot;,&quot;request_accept_language&quot;:&quot;%{Accept-Language}i&quot;,&quot;request_accept_encoding&quot;:&quot;%{Accept-Encoding}i&quot;,&quot;request_accept_charset&quot;:&quot;%{Accept-Charset}i&quot;,&quot;request_connection&quot;:&quot;%{Connection}i&quot;,&quot;request_dnt&quot;:&quot;%{DNT}i&quot;,&quot;request_forwarded&quot;:&quot;%{Forwarded}i&quot;,&quot;request_via&quot;:&quot;%{Via}i&quot;,&quot;request_cache_control&quot;:&quot;%{Cache-Control}i&quot;,&quot;request_x_requested_with&quot;:&quot;%{X-Requested-With}i&quot;,&quot;request_x_att_device_id&quot;:&quot;%{X-ATT-Device-Id}i&quot;,&quot;content_type&quot;:&quot;%{Content-Type}o&quot;,&quot;is_cacheable&quot;:&quot;%{if(fastly_info.state~\&quot;^(HIT|MISS)$\&quot;, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;response_age&quot;:&quot;%{Age}o&quot;,&quot;response_cache_control&quot;:&quot;%{Cache-Control}o&quot;,&quot;response_expires&quot;:&quot;%{Expires}o&quot;,&quot;response_last_modified&quot;:&quot;%{Last-Modified}o&quot;,&quot;response_tsv&quot;:&quot;%{TSV}o&quot;,&quot;server_datacenter&quot;:&quot;%{server.datacenter}V&quot;,&quot;req_header_size&quot;:&quot;%{req.header_bytes_read}V&quot;,&quot;resp_header_size&quot;:&quot;%{resp.header_bytes_written}V&quot;,&quot;socket_cwnd&quot;:&quot;%{client.socket.cwnd}V&quot;,&quot;socket_nexthop&quot;:&quot;%{client.socket.nexthop}V&quot;,&quot;socket_tcpi_rcv_mss&quot;:&quot;%{client.socket.tcpi_rcv_mss}V&quot;,&quot;socket_tcpi_snd_mss&quot;:&quot;%{client.socket.tcpi_snd_mss}V&quot;,&quot;socket_tcpi_rtt&quot;:&quot;%{client.socket.tcpi_rtt}V&quot;,&quot;socket_tcpi_rttvar&quot;:&quot;%{client.socket.tcpi_rttvar}V&quot;,&quot;socket_tcpi_rcv_rtt&quot;:&quot;%{client.socket.tcpi_rcv_rtt}V&quot;,&quot;socket_tcpi_rcv_space&quot;:&quot;%{client.socket.tcpi_rcv_space}V&quot;,&quot;socket_tcpi_last_data_sent&quot;:&quot;%{client.socket.tcpi_last_data_sent}V&quot;,&quot;socket_tcpi_total_retrans&quot;:&quot;%{client.socket.tcpi_total_retrans}V&quot;,&quot;socket_tcpi_delta_retrans&quot;:&quot;%{client.socket.tcpi_delta_retrans}V&quot;,&quot;socket_ploss&quot;:&quot;%{client.socket.ploss}V&quot;}&#39;]
 **format_version** | **int**| The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional] [default to 2]
 **region** | **string**| The region that log data will be sent to. | [optional] [default to &#39;US&#39;]
 **token** | **string**| The API key from your Datadog account. Required. | [optional] 

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

