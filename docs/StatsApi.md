# Fastly::StatsApi

## Load the API package
```perl
use Fastly::Object::StatsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_service_stats**](StatsApi.md#get_service_stats) | **GET** /service/{service_id}/stats/summary | Get stats for a service


# **get_service_stats**
> Stats get_service_stats(service_id => $service_id, month => $month, year => $year, start_time => $start_time, end_time => $end_time)

Get stats for a service

Get the stats from a service for a block of time. This lists all stats by PoP location, starting with AMS. This call requires parameters to select block of time to query. Use either a timestamp range (using start_time and end_time) or a specified month/year combo (using month and year).

### Example
```perl
use Data::Dumper;
use Fastly::StatsApi;
my $api_instance = Fastly::StatsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $month = 05; # string | 2-digit month.
my $year = 2020; # string | 4-digit year.
my $start_time = 1608560817; # int | Epoch timestamp. Limits the results returned.
my $end_time = 1608560817; # int | Epoch timestamp. Limits the results returned.

eval {
    my $result = $api_instance->get_service_stats(service_id => $service_id, month => $month, year => $year, start_time => $start_time, end_time => $end_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatsApi->get_service_stats: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **month** | **string**| 2-digit month. | [optional] 
 **year** | **string**| 4-digit year. | [optional] 
 **start_time** | **int**| Epoch timestamp. Limits the results returned. | [optional] 
 **end_time** | **int**| Epoch timestamp. Limits the results returned. | [optional] 

### Return type

[**Stats**](Stats.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

