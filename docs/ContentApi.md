# WebService::Fastly::ContentApi

## Load the API package
```perl
use WebService::Fastly::Object::ContentApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**content_check**](ContentApi.md#content_check) | **GET** /content/edge_check | Check status of content in each POP&#39;s cache


# **content_check**
> ARRAY[Content] content_check(url => $url)

Check status of content in each POP's cache

Retrieve headers and MD5 hash of the content for a particular URL from each Fastly edge server. This API is limited to 200 requests per hour.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ContentApi;
my $api_instance = WebService::Fastly::ContentApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $url = https://www.example.com/foo/bar; # string | Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed.

eval {
    my $result = $api_instance->content_check(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentApi->content_check: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed. | [optional] 

### Return type

[**ARRAY[Content]**](Content.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

