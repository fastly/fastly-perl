# WebService::Fastly::Object::LogInsightsValues

## Load the model package
```perl
use WebService::Fastly::Object::LogInsightsValues;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cache_hit_ratio** | **double** | The cache hit ratio for the URL specified in the dimension. | [optional] 
**region** | **string** | The client&#39;s country subdivision code as defined by ISO 3166-2. | [optional] 
**region_chr** | **double** | The cache hit ratio for the region. | [optional] 
**region_error_rate** | **double** | The error rate for the region. | [optional] 
**url** | **string** | The HTTP request path. | [optional] 
**rate_per_status** | **double** | The URL accounts for this percentage of the status code in this dimension. | [optional] 
**rate_per_url** | **double** | The rate at which the reason in this dimension occurs among responses to this URL with a 503 status code. | [optional] 
**_503_rate_per_url** | **double** | The rate at which 503 status codes are returned for this URL. | [optional] 
**browser_version** | **string** | The version of the client&#39;s browser. | [optional] 
**rate** | **double** | The percentage of requests matching the value in the current dimension. | [optional] 
**average_bandwidth_bytes** | **double** | The average bandwidth in bytes for responses to requests to the URL in the current dimension. | [optional] 
**bandwidth_percentage** | **double** | The total bandwidth percentage for all responses to requests to the URL in the current dimension. | [optional] 
**average_response_time** | **double** | The average time in seconds to respond to requests to the URL in the current dimension. | [optional] 
**p95_response_time** | **double** | The P95 time in seconds to respond to requests to the URL in the current dimension. | [optional] 
**response_time_percentage** | **double** | The total percentage of time to respond to all requests to the URL in the current dimension. | [optional] 
**miss_rate** | **double** | The miss rate for requests to the URL in the current dimension. | [optional] 
**request_percentage** | **double** | The percentage of all requests made to the URL in the current dimension. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


