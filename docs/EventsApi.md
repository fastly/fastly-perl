# WebService::Fastly::EventsApi

## Load the API package
```perl
use WebService::Fastly::Object::EventsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_event**](EventsApi.md#get_event) | **GET** /events/{event_id} | Get an event
[**list_events**](EventsApi.md#list_events) | **GET** /events | List events


# **get_event**
> EventResponse get_event(event_id => $event_id)

Get an event

Get a specific event.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EventsApi;
my $api_instance = WebService::Fastly::EventsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $event_id = "event_id_example"; # string | Alphanumeric string identifying an event.

eval {
    my $result = $api_instance->get_event(event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EventsApi->get_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**| Alphanumeric string identifying an event. | 

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_events**
> EventsResponse list_events(filter[customer_id] => $filter[customer_id], filter[event_type] => $filter[event_type], filter[service_id] => $filter[service_id], filter[user_id] => $filter[user_id], filter[token_id] => $filter[token_id], filter[created_at] => $filter[created_at], page[number] => $page[number], page[size] => $page[size], sort => $sort)

List events

List all events for a particular customer. Events can be filtered by user, customer and event type. Events can be sorted by date.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::EventsApi;
my $api_instance = WebService::Fastly::EventsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[customer_id] = x4xCwxxJxGCx123Rx5xTx; # string | Limit the results returned to a specific customer.
my $filter[event_type] = "filter[event_type]_example"; # string | Limit the returned events to a specific `event_type`.
my $filter[service_id] = "filter[service_id]_example"; # string | Limit the results returned to a specific service.
my $filter[user_id] = "filter[user_id]_example"; # string | Limit the results returned to a specific user.
my $filter[token_id] = "filter[token_id]_example"; # string | Limit the returned events to a specific token.
my $filter[created_at] = "filter[created_at]_example"; # string | Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]=2022-01-12). 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $sort = created_at; # string | The order in which to list the results by creation date.

eval {
    my $result = $api_instance->list_events(filter[customer_id] => $filter[customer_id], filter[event_type] => $filter[event_type], filter[service_id] => $filter[service_id], filter[user_id] => $filter[user_id], filter[token_id] => $filter[token_id], filter[created_at] => $filter[created_at], page[number] => $page[number], page[size] => $page[size], sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EventsApi->list_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[customer_id]** | **string**| Limit the results returned to a specific customer. | [optional] 
 **filter[event_type]** | **string**| Limit the returned events to a specific `event_type`. | [optional] 
 **filter[service_id]** | **string**| Limit the results returned to a specific service. | [optional] 
 **filter[user_id]** | **string**| Limit the results returned to a specific user. | [optional] 
 **filter[token_id]** | **string**| Limit the returned events to a specific token. | [optional] 
 **filter[created_at]** | **string**| Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12).  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| The order in which to list the results by creation date. | [optional] [default to &#39;created_at&#39;]

### Return type

[**EventsResponse**](EventsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

