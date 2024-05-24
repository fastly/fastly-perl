# WebService::Fastly::PublishApi

## Load the API package
```perl
use WebService::Fastly::Object::PublishApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**publish**](PublishApi.md#publish) | **POST** /service/{service_id}/publish/ | Send messages to Fanout subscribers


# **publish**
> string publish(service_id => $service_id, publish_request => $publish_request)

Send messages to Fanout subscribers

Send one or more messages to [Fanout](https://www.fastly.com/documentation/learning/concepts/real-time-messaging/fanout) subscribers. Each message specifies a channel, and Fanout will deliver the message to all subscribers of its channel. > **IMPORTANT:** For compatibility with GRIP, this endpoint requires a trailing slash, and the API token may be provided in the `Authorization` header (instead of the `Fastly-Key` header) using the `Bearer` scheme. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PublishApi;
my $api_instance = WebService::Fastly::PublishApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $publish_request = WebService::Fastly::Object::PublishRequest->new(); # PublishRequest | 

eval {
    my $result = $api_instance->publish(service_id => $service_id, publish_request => $publish_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PublishApi->publish: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **publish_request** | [**PublishRequest**](PublishRequest.md)|  | [optional] 

### Return type

**string**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

