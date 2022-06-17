# WebService::Fastly::LoggingKinesisApi

## Load the API package
```perl
use WebService::Fastly::Object::LoggingKinesisApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_log_kinesis**](LoggingKinesisApi.md#create_log_kinesis) | **POST** /service/{service_id}/version/{version_id}/logging/kinesis | Create  an Amazon Kinesis log endpoint
[**delete_log_kinesis**](LoggingKinesisApi.md#delete_log_kinesis) | **DELETE** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Delete the Amazon Kinesis log endpoint
[**get_log_kinesis**](LoggingKinesisApi.md#get_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Get an Amazon Kinesis log endpoint
[**list_log_kinesis**](LoggingKinesisApi.md#list_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis | List Amazon Kinesis log endpoints


# **create_log_kinesis**
> LoggingKinesisResponse create_log_kinesis(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, format => $format, topic => $topic, region => $region, secret_key => $secret_key, access_key => $access_key, iam_role => $iam_role)

Create  an Amazon Kinesis log endpoint

Create an Amazon Kinesis Data Streams logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingKinesisApi;
my $api_instance = WebService::Fastly::LoggingKinesisApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | The name for the real-time logging configuration.
my $placement = new WebService::Fastly.LoggingPlacement(); # LoggingPlacement | 
my $format_version = new WebService::Fastly.LoggingFormatVersion(); # LoggingFormatVersion | 
my $format = '{"timestamp":"%{begin:%Y-%m-%dT%H:%M:%S}t","time_elapsed":"%{time.elapsed.usec}V","is_tls":"%{if(req.is_ssl, \"true\", \"false\")}V","client_ip":"%{req.http.Fastly-Client-IP}V","geo_city":"%{client.geo.city}V","geo_country_code":"%{client.geo.country_code}V","request":"%{req.request}V","host":"%{req.http.Fastly-Orig-Host}V","url":"%{json.escape(req.url)}V","request_referer":"%{json.escape(req.http.Referer)}V","request_user_agent":"%{json.escape(req.http.User-Agent)}V","request_accept_language":"%{json.escape(req.http.Accept-Language)}V","request_accept_charset":"%{json.escape(req.http.Accept-Charset)}V","cache_status":"%{regsub(fastly_info.state, \"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\", \"\\2\\3\") }V"}'; # string | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest.
my $topic = "topic_example"; # string | The Amazon Kinesis stream to send logs to. Required.
my $region = "region_example"; # string | The [AWS region](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) to stream logs to.
my $secret_key = "secret_key_example"; # string | The secret key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified.
my $access_key = "access_key_example"; # string | The access key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified.
my $iam_role = "iam_role_example"; # string | The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if `access_key` and `secret_key` are provided.

eval {
    my $result = $api_instance->create_log_kinesis(service_id => $service_id, version_id => $version_id, name => $name, placement => $placement, format_version => $format_version, format => $format, topic => $topic, region => $region, secret_key => $secret_key, access_key => $access_key, iam_role => $iam_role);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKinesisApi->create_log_kinesis: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **name** | **string**| The name for the real-time logging configuration. | [optional] 
 **placement** | [**LoggingPlacement**](LoggingPlacement.md)|  | [optional] 
 **format_version** | [**LoggingFormatVersion**](LoggingFormatVersion.md)|  | [optional] 
 **format** | **string**| A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest. | [optional] [default to &#39;{&quot;timestamp&quot;:&quot;%{begin:%Y-%m-%dT%H:%M:%S}t&quot;,&quot;time_elapsed&quot;:&quot;%{time.elapsed.usec}V&quot;,&quot;is_tls&quot;:&quot;%{if(req.is_ssl, \&quot;true\&quot;, \&quot;false\&quot;)}V&quot;,&quot;client_ip&quot;:&quot;%{req.http.Fastly-Client-IP}V&quot;,&quot;geo_city&quot;:&quot;%{client.geo.city}V&quot;,&quot;geo_country_code&quot;:&quot;%{client.geo.country_code}V&quot;,&quot;request&quot;:&quot;%{req.request}V&quot;,&quot;host&quot;:&quot;%{req.http.Fastly-Orig-Host}V&quot;,&quot;url&quot;:&quot;%{json.escape(req.url)}V&quot;,&quot;request_referer&quot;:&quot;%{json.escape(req.http.Referer)}V&quot;,&quot;request_user_agent&quot;:&quot;%{json.escape(req.http.User-Agent)}V&quot;,&quot;request_accept_language&quot;:&quot;%{json.escape(req.http.Accept-Language)}V&quot;,&quot;request_accept_charset&quot;:&quot;%{json.escape(req.http.Accept-Charset)}V&quot;,&quot;cache_status&quot;:&quot;%{regsub(fastly_info.state, \&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\&quot;, \&quot;\\2\\3\&quot;) }V&quot;}&#39;]
 **topic** | **string**| The Amazon Kinesis stream to send logs to. Required. | [optional] 
 **region** | **string**| The [AWS region](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) to stream logs to. | [optional] 
 **secret_key** | **string**| The secret key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] 
 **access_key** | **string**| The access key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] 
 **iam_role** | **string**| The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if `access_key` and `secret_key` are provided. | [optional] 

### Return type

[**LoggingKinesisResponse**](LoggingKinesisResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_log_kinesis**
> InlineResponse200 delete_log_kinesis(service_id => $service_id, version_id => $version_id, logging_kinesis_name => $logging_kinesis_name)

Delete the Amazon Kinesis log endpoint

Delete an Amazon Kinesis Data Streams logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingKinesisApi;
my $api_instance = WebService::Fastly::LoggingKinesisApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_kinesis_name = "logging_kinesis_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->delete_log_kinesis(service_id => $service_id, version_id => $version_id, logging_kinesis_name => $logging_kinesis_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKinesisApi->delete_log_kinesis: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_kinesis_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_log_kinesis**
> LoggingKinesisResponse get_log_kinesis(service_id => $service_id, version_id => $version_id, logging_kinesis_name => $logging_kinesis_name)

Get an Amazon Kinesis log endpoint

Get the details for an Amazon Kinesis Data Streams logging object for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingKinesisApi;
my $api_instance = WebService::Fastly::LoggingKinesisApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $logging_kinesis_name = "logging_kinesis_name_example"; # string | The name for the real-time logging configuration.

eval {
    my $result = $api_instance->get_log_kinesis(service_id => $service_id, version_id => $version_id, logging_kinesis_name => $logging_kinesis_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKinesisApi->get_log_kinesis: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **logging_kinesis_name** | **string**| The name for the real-time logging configuration. | 

### Return type

[**LoggingKinesisResponse**](LoggingKinesisResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_log_kinesis**
> ARRAY[LoggingKinesisResponse] list_log_kinesis(service_id => $service_id, version_id => $version_id)

List Amazon Kinesis log endpoints

List all of the Amazon Kinesis Data Streams logging objects for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LoggingKinesisApi;
my $api_instance = WebService::Fastly::LoggingKinesisApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_log_kinesis(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LoggingKinesisApi->list_log_kinesis: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[LoggingKinesisResponse]**](LoggingKinesisResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

