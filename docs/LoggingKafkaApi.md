# Fastly::LoggingKafkaApi

## Load the API package
```perl
use Fastly::Object::LoggingKafkaApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_kafka**](LoggingKafkaApi.md#create_log_kafka) | **POST** /service/{service_id}/version/{version_id}/logging/kafka | Create a Kafka log endpoint
[**delete_log_kafka**](LoggingKafkaApi.md#delete_log_kafka) | **DELETE** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Delete the Kafka log endpoint
[**get_log_kafka**](LoggingKafkaApi.md#get_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Get a Kafka log endpoint
[**list_log_kafka**](LoggingKafkaApi.md#list_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka | List Kafka log endpoints


# **create_log_kafka**
> LoggingKafkaResponse create_log_kafka(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, topic => $topic, brokers => $brokers, compression_codec => $compression_codec, required_acks => $required_acks, request_max_bytes => $request_max_bytes, parse_log_keyvals => $parse_log_keyvals, auth_method => $auth_method, user => $user, password => $password, use_tls => $use_tls)

Create a Kafka log endpoint

Create a Kafka logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingKafkaApi;
my $api_instance = Fastly::LoggingKafkaApi->new(

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
my $tls_ca_cert = "tls_ca_cert_example"; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = "tls_client_cert_example"; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = "tls_client_key_example"; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_hostname = "tls_hostname_example"; # string | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
my $topic = "topic_example"; # string | The Kafka topic to send logs to. Required.
my $brokers = "brokers_example"; # string | A comma-separated list of IP addresses or hostnames of Kafka brokers. Required.
my $compression_codec = "compression_codec_example"; # string | The codec used for compression of your logs.
my $required_acks = 1; # int | The number of acknowledgements a leader must receive before a write is considered successful.
my $request_max_bytes = 0; # int | The maximum number of bytes sent in one request. Defaults `0` (no limit).
my $parse_log_keyvals = null; # boolean | Enables parsing of key=value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers).
my $auth_method = "auth_method_example"; # string | SASL authentication method.
my $user = "user_example"; # string | SASL user.
my $password = "password_example"; # string | SASL password.
my $use_tls = new Fastly.LoggingUseTls(); # LoggingUseTls | 

eval {
    my $result = $api_instance->create_log_kafka(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, response_condition => $response_condition, format => $format, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_hostname => $tls_hostname, topic => $topic, brokers => $brokers, compression_codec => $compression_codec, required_acks => $required_acks, request_max_bytes => $request_max_bytes, parse_log_keyvals => $parse_log_keyvals, auth_method => $auth_method, user => $user, password => $password, use_tls => $use_tls);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKafkaApi->create_log_kafka: $@\n";
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
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] 
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] 
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] 
 **tls_hostname** | **string**| The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional] 
 **topic** | **string**| The Kafka topic to send logs to. Required. | [optional] 
 **brokers** | **string**| A comma-separated list of IP addresses or hostnames of Kafka brokers. Required. | [optional] 
 **compression_codec** | **string**| The codec used for compression of your logs. | [optional] 
 **required_acks** | **int**| The number of acknowledgements a leader must receive before a write is considered successful. | [optional] [default to 1]
 **request_max_bytes** | **int**| The maximum number of bytes sent in one request. Defaults `0` (no limit). | [optional] [default to 0]
 **parse_log_keyvals** | **boolean**| Enables parsing of key&#x3D;value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers). | [optional] 
 **auth_method** | **string**| SASL authentication method. | [optional] 
 **user** | **string**| SASL user. | [optional] 
 **password** | **string**| SASL password. | [optional] 
 **use_tls** | [**LoggingUseTls**](LoggingUseTls.md)|  | [optional] 

### Return type

[**LoggingKafkaResponse**](LoggingKafkaResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_kafka**
> DeleteAcl200Response delete_log_kafka(service_id => $service_id, version_id => $version_id, logging_kafka_name => $logging_kafka_name)

Delete the Kafka log endpoint

Delete the Kafka logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingKafkaApi;
my $api_instance = Fastly::LoggingKafkaApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_kafka_name = "logging_kafka_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_kafka(service_id => $service_id, version_id => $version_id, logging_kafka_name => $logging_kafka_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKafkaApi->delete_log_kafka: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_kafka_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_kafka**
> LoggingKafkaResponse get_log_kafka(service_id => $service_id, version_id => $version_id, logging_kafka_name => $logging_kafka_name)

Get a Kafka log endpoint

Get the Kafka logging endpoint for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingKafkaApi;
my $api_instance = Fastly::LoggingKafkaApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_kafka_name = "logging_kafka_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_kafka(service_id => $service_id, version_id => $version_id, logging_kafka_name => $logging_kafka_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKafkaApi->get_log_kafka: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_kafka_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingKafkaResponse**](LoggingKafkaResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_kafka**
> ARRAY[LoggingKafkaResponse] list_log_kafka(service_id => $service_id, version_id => $version_id)

List Kafka log endpoints

List all of the Kafka logging endpoints for a particular service and version.

### Example
```perl
use Data::Dumper;
use Fastly::LoggingKafkaApi;
my $api_instance = Fastly::LoggingKafkaApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_kafka(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKafkaApi->list_log_kafka: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingKafkaResponse]**](LoggingKafkaResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

