# WebService::Fastly::HistoricalApi

## Load the API package
```perl
use WebService::Fastly::Object::HistoricalApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_hist_stats**](HistoricalApi.md#get_hist_stats) | **GET** /stats | Get historical stats
[**get_hist_stats_aggregated**](HistoricalApi.md#get_hist_stats_aggregated) | **GET** /stats/aggregate | Get aggregated historical stats
[**get_hist_stats_field**](HistoricalApi.md#get_hist_stats_field) | **GET** /stats/field/{field} | Get historical stats for a single field
[**get_hist_stats_service**](HistoricalApi.md#get_hist_stats_service) | **GET** /stats/service/{service_id} | Get historical stats for a single service
[**get_hist_stats_service_field**](HistoricalApi.md#get_hist_stats_service_field) | **GET** /stats/service/{service_id}/field/{field} | Get historical stats for a single service/field combination
[**get_regions**](HistoricalApi.md#get_regions) | **GET** /stats/regions | Get region codes
[**get_usage**](HistoricalApi.md#get_usage) | **GET** /stats/usage | Get usage statistics
[**get_usage_month**](HistoricalApi.md#get_usage_month) | **GET** /stats/usage_by_month | Get month-to-date usage statistics
[**get_usage_service**](HistoricalApi.md#get_usage_service) | **GET** /stats/usage_by_service | Get usage statistics per service


# **get_hist_stats**
> HistoricalStatsByServiceResponse get_hist_stats(from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter, services => $services)

Get historical stats

Fetches historical stats for each of your Fastly services and groups the results by service ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
my $by = day; # string | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
my $region = usa; # string | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America. 
my $datacenter = IAD,CHI; # string | Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). 
my $services = "services_example"; # string | Limit the query to only the specified, comma-separated list of services. 

eval {
    my $result = $api_instance->get_hist_stats(from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter, services => $services);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_hist_stats: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]
 **by** | **string**| Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional] [default to &#39;day&#39;]
 **region** | **string**| Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America.  | [optional] 
 **datacenter** | **string**| Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  | [optional] 
 **services** | **string**| Limit the query to only the specified, comma-separated list of services.  | [optional] 

### Return type

[**HistoricalStatsByServiceResponse**](HistoricalStatsByServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_hist_stats_aggregated**
> HistoricalStatsAggregatedResponse get_hist_stats_aggregated(from => $from, to => $to, by => $by, region => $region)

Get aggregated historical stats

Fetches historical stats information aggregated across all of your Fastly services.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
my $by = day; # string | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
my $region = usa; # string | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America. 

eval {
    my $result = $api_instance->get_hist_stats_aggregated(from => $from, to => $to, by => $by, region => $region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_hist_stats_aggregated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]
 **by** | **string**| Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional] [default to &#39;day&#39;]
 **region** | **string**| Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America.  | [optional] 

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_hist_stats_field**
> HistoricalStatsByServiceResponse get_hist_stats_field(field => $field, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter)

Get historical stats for a single field

Fetches the specified field from the historical stats for each of your services and groups the results by service ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $field = hit_ratio; # string | Name of the stats field.
my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
my $by = day; # string | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
my $region = usa; # string | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America. 
my $datacenter = IAD,CHI; # string | Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). 

eval {
    my $result = $api_instance->get_hist_stats_field(field => $field, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_hist_stats_field: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field** | **string**| Name of the stats field. | 
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]
 **by** | **string**| Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional] [default to &#39;day&#39;]
 **region** | **string**| Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America.  | [optional] 
 **datacenter** | **string**| Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  | [optional] 

### Return type

[**HistoricalStatsByServiceResponse**](HistoricalStatsByServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_hist_stats_service**
> HistoricalStatsAggregatedResponse get_hist_stats_service(service_id => $service_id, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter)

Get historical stats for a single service

Fetches historical stats for a given service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
my $by = day; # string | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
my $region = usa; # string | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America. 
my $datacenter = IAD,CHI; # string | Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). 

eval {
    my $result = $api_instance->get_hist_stats_service(service_id => $service_id, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_hist_stats_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]
 **by** | **string**| Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional] [default to &#39;day&#39;]
 **region** | **string**| Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America.  | [optional] 
 **datacenter** | **string**| Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  | [optional] 

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_hist_stats_service_field**
> HistoricalStatsAggregatedResponse get_hist_stats_service_field(service_id => $service_id, field => $field, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter)

Get historical stats for a single service/field combination

Fetches the specified field from the historical stats for a given service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $field = hit_ratio; # string | Name of the stats field.
my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
my $by = day; # string | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
my $region = usa; # string | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America. 
my $datacenter = IAD,CHI; # string | Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/). 

eval {
    my $result = $api_instance->get_hist_stats_service_field(service_id => $service_id, field => $field, from => $from, to => $to, by => $by, region => $region, datacenter => $datacenter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_hist_stats_service_field: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **field** | **string**| Name of the stats field. | 
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]
 **by** | **string**| Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional] [default to &#39;day&#39;]
 **region** | **string**| Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `mexico` - Mexico.   * `southamerica_std` - South America.  | [optional] 
 **datacenter** | **string**| Limit query to one or more Fastly POPs. For multiple POPs use a comma-seperated list of POPs. These must be all uppercase and be valid codes. A full list of POPs can be obtained from the [POPs endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/).  | [optional] 

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_regions**
> HistoricalRegionsResponse get_regions()

Get region codes

Fetches the list of codes for regions that are covered by the Fastly CDN service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_regions();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_regions: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HistoricalRegionsResponse**](HistoricalRegionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage**
> HistoricalUsageAggregatedResponse get_usage(from => $from, to => $to)

Get usage statistics

Returns usage information aggregated across all Fastly services and grouped by region. To aggregate across all Fastly services by time period, see [`/stats/aggregate`](#get-hist-stats-aggregated).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 

eval {
    my $result = $api_instance->get_usage(from => $from, to => $to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_usage: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]

### Return type

[**HistoricalUsageAggregatedResponse**](HistoricalUsageAggregatedResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_month**
> HistoricalUsageMonthResponse get_usage_month(year => $year, month => $month, billable_units => $billable_units)

Get month-to-date usage statistics

Returns month-to-date usage details for a given month and year. Usage details are aggregated by service and across all Fastly services, and then grouped by region. This endpoint does not use the `from` or `to` fields for selecting the date for which data is requested. Instead, it uses `month` and `year` integer fields. Both fields are optional and default to the current month and year respectively. When set, an optional `billable_units` field will convert bandwidth to GB and divide requests by 10,000.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $year = 2020; # string | 4-digit year.
my $month = 05; # string | 2-digit month.
my $billable_units = true; # boolean | If `true`, return results as billable units.

eval {
    my $result = $api_instance->get_usage_month(year => $year, month => $month, billable_units => $billable_units);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_usage_month: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **string**| 4-digit year. | [optional] 
 **month** | **string**| 2-digit month. | [optional] 
 **billable_units** | **boolean**| If `true`, return results as billable units. | [optional] 

### Return type

[**HistoricalUsageMonthResponse**](HistoricalUsageMonthResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_service**
> HistoricalUsageServiceResponse get_usage_service(from => $from, to => $to)

Get usage statistics per service

Returns usage information aggregated by service and grouped by service and region. For service stats by time period, see [`/stats`](#get-hist-stats) and [`/stats/field/:field`](#get-hist-stats-field).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::HistoricalApi;
my $api_instance = WebService::Fastly::HistoricalApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2020-04-09T18:14:30Z; # string | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
my $to = 2020-04-09T18:14:30Z; # string | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 

eval {
    my $result = $api_instance->get_usage_service(from => $from, to => $to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoricalApi->get_usage_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string**| Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] 
 **to** | **string**| Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional] [default to &#39;now&#39;]

### Return type

[**HistoricalUsageServiceResponse**](HistoricalUsageServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

