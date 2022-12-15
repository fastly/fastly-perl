# WebService::Fastly::HealthcheckApi

## Load the API package
```perl
use WebService::Fastly::Object::HealthcheckApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_healthcheck**](HealthcheckApi.md#create_healthcheck) | **POST** /service/{service_id}/version/{version_id}/healthcheck | Create a health check
[**delete_healthcheck**](HealthcheckApi.md#delete_healthcheck) | **DELETE** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Delete a health check
[**get_healthcheck**](HealthcheckApi.md#get_healthcheck) | **GET** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Get a health check
[**list_healthchecks**](HealthcheckApi.md#list_healthchecks) | **GET** /service/{service_id}/version/{version_id}/healthcheck | List health checks
[**update_healthcheck**](HealthcheckApi.md#update_healthcheck) | **PUT** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Update a health check


# **create_healthcheck**
> HealthcheckResponse create_healthcheck(service_id => $service_id, version_id => $version_id, check_interval => $check_interval, comment => $comment, expected_response => $expected_response, headers => $headers, host => $host, http_version => $http_version, initial => $initial, method => $method, name => $name, path => $path, threshold => $threshold, timeout => $timeout, window => $window)

Create a health check

Create a health check for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HealthcheckApi;
my $api_instance = WebService::Fastly::HealthcheckApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $check_interval = 56; # int | How often to run the health check in milliseconds.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $expected_response = 56; # int | The status code expected from the host.
my $headers = [("null")]; # ARRAY[string] | Array of custom headers that will be added to the health check probes.
my $host = "host_example"; # string | Which host to check.
my $http_version = "http_version_example"; # string | Whether to use version 1.0 or 1.1 HTTP.
my $initial = 56; # int | When loading a config, the initial number of probes to be seen as OK.
my $method = "method_example"; # string | Which HTTP method to use.
my $name = "name_example"; # string | The name of the health check.
my $path = "path_example"; # string | The path to check.
my $threshold = 56; # int | How many health checks must succeed to be considered healthy.
my $timeout = 56; # int | Timeout in milliseconds.
my $window = 56; # int | The number of most recent health check queries to keep for this health check.

eval {
    my $result = $api_instance->create_healthcheck(service_id => $service_id, version_id => $version_id, check_interval => $check_interval, comment => $comment, expected_response => $expected_response, headers => $headers, host => $host, http_version => $http_version, initial => $initial, method => $method, name => $name, path => $path, threshold => $threshold, timeout => $timeout, window => $window);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HealthcheckApi->create_healthcheck: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **check_interval** | **int**| How often to run the health check in milliseconds. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **expected_response** | **int**| The status code expected from the host. | [optional] 
 **headers** | [**ARRAY[string]**](string.md)| Array of custom headers that will be added to the health check probes. | [optional] 
 **host** | **string**| Which host to check. | [optional] 
 **http_version** | **string**| Whether to use version 1.0 or 1.1 HTTP. | [optional] 
 **initial** | **int**| When loading a config, the initial number of probes to be seen as OK. | [optional] 
 **method** | **string**| Which HTTP method to use. | [optional] 
 **name** | **string**| The name of the health check. | [optional] 
 **path** | **string**| The path to check. | [optional] 
 **threshold** | **int**| How many health checks must succeed to be considered healthy. | [optional] 
 **timeout** | **int**| Timeout in milliseconds. | [optional] 
 **window** | **int**| The number of most recent health check queries to keep for this health check. | [optional] 

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_healthcheck**
> InlineResponse200 delete_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name)

Delete a health check

Delete the health check for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HealthcheckApi;
my $api_instance = WebService::Fastly::HealthcheckApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $healthcheck_name = "healthcheck_name_example"; # string | The name of the health check.

eval {
    my $result = $api_instance->delete_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HealthcheckApi->delete_healthcheck: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **healthcheck_name** | **string**| The name of the health check. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_healthcheck**
> HealthcheckResponse get_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name)

Get a health check

Get the health check for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HealthcheckApi;
my $api_instance = WebService::Fastly::HealthcheckApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $healthcheck_name = "healthcheck_name_example"; # string | The name of the health check.

eval {
    my $result = $api_instance->get_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HealthcheckApi->get_healthcheck: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **healthcheck_name** | **string**| The name of the health check. | 

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_healthchecks**
> ARRAY[HealthcheckResponse] list_healthchecks(service_id => $service_id, version_id => $version_id)

List health checks

List all of the health checks for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HealthcheckApi;
my $api_instance = WebService::Fastly::HealthcheckApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_healthchecks(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HealthcheckApi->list_healthchecks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[HealthcheckResponse]**](HealthcheckResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_healthcheck**
> HealthcheckResponse update_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name, check_interval => $check_interval, comment => $comment, expected_response => $expected_response, headers => $headers, host => $host, http_version => $http_version, initial => $initial, method => $method, name => $name, path => $path, threshold => $threshold, timeout => $timeout, window => $window)

Update a health check

Update the health check for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HealthcheckApi;
my $api_instance = WebService::Fastly::HealthcheckApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $healthcheck_name = "healthcheck_name_example"; # string | The name of the health check.
my $check_interval = 56; # int | How often to run the health check in milliseconds.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $expected_response = 56; # int | The status code expected from the host.
my $headers = [("null")]; # ARRAY[string] | Array of custom headers that will be added to the health check probes.
my $host = "host_example"; # string | Which host to check.
my $http_version = "http_version_example"; # string | Whether to use version 1.0 or 1.1 HTTP.
my $initial = 56; # int | When loading a config, the initial number of probes to be seen as OK.
my $method = "method_example"; # string | Which HTTP method to use.
my $name = "name_example"; # string | The name of the health check.
my $path = "path_example"; # string | The path to check.
my $threshold = 56; # int | How many health checks must succeed to be considered healthy.
my $timeout = 56; # int | Timeout in milliseconds.
my $window = 56; # int | The number of most recent health check queries to keep for this health check.

eval {
    my $result = $api_instance->update_healthcheck(service_id => $service_id, version_id => $version_id, healthcheck_name => $healthcheck_name, check_interval => $check_interval, comment => $comment, expected_response => $expected_response, headers => $headers, host => $host, http_version => $http_version, initial => $initial, method => $method, name => $name, path => $path, threshold => $threshold, timeout => $timeout, window => $window);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HealthcheckApi->update_healthcheck: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **healthcheck_name** | **string**| The name of the health check. | 
 **check_interval** | **int**| How often to run the health check in milliseconds. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **expected_response** | **int**| The status code expected from the host. | [optional] 
 **headers** | [**ARRAY[string]**](string.md)| Array of custom headers that will be added to the health check probes. | [optional] 
 **host** | **string**| Which host to check. | [optional] 
 **http_version** | **string**| Whether to use version 1.0 or 1.1 HTTP. | [optional] 
 **initial** | **int**| When loading a config, the initial number of probes to be seen as OK. | [optional] 
 **method** | **string**| Which HTTP method to use. | [optional] 
 **name** | **string**| The name of the health check. | [optional] 
 **path** | **string**| The path to check. | [optional] 
 **threshold** | **int**| How many health checks must succeed to be considered healthy. | [optional] 
 **timeout** | **int**| Timeout in milliseconds. | [optional] 
 **window** | **int**| The number of most recent health check queries to keep for this health check. | [optional] 

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

