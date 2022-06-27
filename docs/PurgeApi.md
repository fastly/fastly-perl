# WebService::Fastly::PurgeApi

## Load the API package
```perl
use WebService::Fastly::Object::PurgeApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_purge_tag**](PurgeApi.md#bulk_purge_tag) | **POST** /service/{service_id}/purge | Purge multiple surrogate key tags
[**purge_all**](PurgeApi.md#purge_all) | **POST** /service/{service_id}/purge_all | Purge everything from a service
[**purge_single_url**](PurgeApi.md#purge_single_url) | **GET** /* | Purge a URL
[**purge_tag**](PurgeApi.md#purge_tag) | **POST** /service/{service_id}/purge/{surrogate_key} | Purge by surrogate key tag


# **bulk_purge_tag**
> HASH[string,string] bulk_purge_tag(service_id => $service_id, fastly_soft_purge => $fastly_soft_purge, surrogate_key => $surrogate_key, purge_response => $purge_response)

Purge multiple surrogate key tags

Instant Purge a particular service of items tagged with surrogate keys. Up to 256 surrogate keys can be purged in one batch request. As an alternative to sending the keys in a JSON object in the body of the request, this endpoint also supports listing keys in a <code>Surrogate-Key</code> request header, e.g. <code>Surrogate-Key: key_1 key_2 key_3</code>. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PurgeApi;
my $api_instance = WebService::Fastly::PurgeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $fastly_soft_purge = 1; # int | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.
my $surrogate_key = key_1 key_2 key_3; # string | Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified.
my $purge_response = WebService::Fastly::Object::PurgeResponse->new(); # PurgeResponse | 

eval {
    my $result = $api_instance->bulk_purge_tag(service_id => $service_id, fastly_soft_purge => $fastly_soft_purge, surrogate_key => $surrogate_key, purge_response => $purge_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PurgeApi->bulk_purge_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **fastly_soft_purge** | **int**| If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] 
 **surrogate_key** | **string**| Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified. | [optional] 
 **purge_response** | [**PurgeResponse**](PurgeResponse.md)|  | [optional] 

### Return type

**HASH[string,string]**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purge_all**
> InlineResponse200 purge_all(service_id => $service_id)

Purge everything from a service

Instant Purge everything from a service.  Purge-all requests cannot be done in soft mode and will always immediately invalidate all cached content associated with the service. To do a soft-purge-all, consider applying a constant [surrogate key](https://docs.fastly.com/en/guides/getting-started-with-surrogate-keys) tag (e.g., `\"all\"`) to all objects. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PurgeApi;
my $api_instance = WebService::Fastly::PurgeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->purge_all(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PurgeApi->purge_all: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purge_single_url**
> PurgeResponse purge_single_url(host => $host, fastly_soft_purge => $fastly_soft_purge)

Purge a URL

Instant Purge an individual URL.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PurgeApi;
my $api_instance = WebService::Fastly::PurgeApi->new(

    # Configure HTTP basic authorization: url_purge
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $host = www.example.com; # string | The hostname for the content you'll be purging.
my $fastly_soft_purge = 1; # int | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.

eval {
    my $result = $api_instance->purge_single_url(host => $host, fastly_soft_purge => $fastly_soft_purge);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PurgeApi->purge_single_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **string**| The hostname for the content you&#39;ll be purging. | 
 **fastly_soft_purge** | **int**| If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] 

### Return type

[**PurgeResponse**](PurgeResponse.md)

### Authorization

[url_purge](../README.md#url_purge)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purge_tag**
> PurgeResponse purge_tag(service_id => $service_id, surrogate_key => $surrogate_key, fastly_soft_purge => $fastly_soft_purge)

Purge by surrogate key tag

Instant Purge a particular service of items tagged with a Surrogate Key. Only one surrogate key can be purged at a time. Multiple keys can be purged using a batch surrogate key purge request.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PurgeApi;
my $api_instance = WebService::Fastly::PurgeApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $surrogate_key = key_1; # string | Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request.
my $fastly_soft_purge = 1; # int | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.

eval {
    my $result = $api_instance->purge_tag(service_id => $service_id, surrogate_key => $surrogate_key, fastly_soft_purge => $fastly_soft_purge);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PurgeApi->purge_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **surrogate_key** | **string**| Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request. | 
 **fastly_soft_purge** | **int**| If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] 

### Return type

[**PurgeResponse**](PurgeResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

