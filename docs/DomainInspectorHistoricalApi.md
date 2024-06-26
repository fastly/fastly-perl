# WebService::Fastly::DomainInspectorHistoricalApi

## Load the API package
```perl
use WebService::Fastly::Object::DomainInspectorHistoricalApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_domain_inspector_historical**](DomainInspectorHistoricalApi.md#get_domain_inspector_historical) | **GET** /metrics/domains/services/{service_id} | Get historical domain data for a service


# **get_domain_inspector_historical**
> HistoricalDomainsResponse get_domain_inspector_historical(service_id => $service_id, start => $start, end => $end, downsample => $downsample, metric => $metric, group_by => $group_by, limit => $limit, cursor => $cursor, region => $region, datacenter => $datacenter, domain => $domain)

Get historical domain data for a service

Fetches historical domain metrics for a given Fastly service, optionally filtering and grouping the results by domain, region, or POP. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainInspectorHistoricalApi;
my $api_instance = WebService::Fastly::DomainInspectorHistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $start = 2021-08-01T00:00:00.000Z; # string | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
my $end = 2020-08-02T00:00:00.000Z; # string | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
my $downsample = hour; # string | Duration of sample windows.
my $metric = resp_body_bytes,status_2xx; # string | The metrics to retrieve. Multiple values should be comma-separated.
my $group_by = domain; # string | Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, `group_by=domain` will return one timeseries for every domain, as a total across all datacenters (POPs). 
my $limit = '100'; # string | Number of results per page. The maximum is 200.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $region = usa; # string | Limit query to one or more specific geographic regions. Values should be comma-separated. 
my $datacenter = SJC,STP; # string | Limit query to one or more specific POPs. Values should be comma-separated.
my $domain = domain_1.com,domain_2.com; # string | Limit query to one or more specific domains. Values should be comma-separated.

eval {
    my $result = $api_instance->get_domain_inspector_historical(service_id => $service_id, start => $start, end => $end, downsample => $downsample, metric => $metric, group_by => $group_by, limit => $limit, cursor => $cursor, region => $region, datacenter => $datacenter, domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainInspectorHistoricalApi->get_domain_inspector_historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **start** | **string**| A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] 
 **end** | **string**| A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] 
 **downsample** | **string**| Duration of sample windows. | [optional] [default to &#39;hour&#39;]
 **metric** | **string**| The metrics to retrieve. Multiple values should be comma-separated. | [optional] [default to &#39;edge_requests&#39;]
 **group_by** | **string**| Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, `group_by&#x3D;domain` will return one timeseries for every domain, as a total across all datacenters (POPs).  | [optional] 
 **limit** | **string**| Number of results per page. The maximum is 200. | [optional] [default to &#39;100&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **region** | **string**| Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] 
 **datacenter** | **string**| Limit query to one or more specific POPs. Values should be comma-separated. | [optional] 
 **domain** | **string**| Limit query to one or more specific domains. Values should be comma-separated. | [optional] 

### Return type

[**HistoricalDomainsResponse**](HistoricalDomainsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

