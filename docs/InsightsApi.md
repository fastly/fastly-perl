# WebService::Fastly::InsightsApi

## Load the API package
```perl
use WebService::Fastly::Object::InsightsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_insights**](InsightsApi.md#get_log_insights) | **GET** /observability/log-insights | Retrieve log insights


# **get_log_insights**
> GetLogInsightsResponse get_log_insights(visualization => $visualization, service_id => $service_id, start => $start, end => $end, pops => $pops, domain => $domain, domain_exact_match => $domain_exact_match, limit => $limit)

Retrieve log insights

Retrieves statistics from sampled log records.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::InsightsApi;
my $api_instance = WebService::Fastly::InsightsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $visualization = top-url-by-requests; # string | 
my $service_id = 1jlmtMz1ncwA0KC3TBGD0X; # string | 
my $start = 2024-01-01T14:30:23Z; # string | 
my $end = 2024-01-05T14:30:23Z; # string | 
my $pops = "pops_example"; # string | 
my $domain = "domain_example"; # string | 
my $domain_exact_match = null; # boolean | 
my $limit = 3.4; # double | 

eval {
    my $result = $api_instance->get_log_insights(visualization => $visualization, service_id => $service_id, start => $start, end => $end, pops => $pops, domain => $domain, domain_exact_match => $domain_exact_match, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InsightsApi->get_log_insights: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visualization** | **string**|  | 
 **service_id** | **string**|  | 
 **start** | **string**|  | 
 **end** | **string**|  | 
 **pops** | **string**|  | [optional] 
 **domain** | **string**|  | [optional] 
 **domain_exact_match** | **boolean**|  | [optional] 
 **limit** | **double**|  | [optional] 

### Return type

[**GetLogInsightsResponse**](GetLogInsightsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

