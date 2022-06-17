# WebService::Fastly::PublicIpListApi

## Load the API package
```perl
use WebService::Fastly::Object::PublicIpListApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_fastly_ips**](PublicIpListApi.md#list_fastly_ips) | **GET** /public-ip-list | List Fastly&#39;s public IPs


# **list_fastly_ips**
> PublicIpList list_fastly_ips()

List Fastly's public IPs

List the public IP addresses for the Fastly network.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PublicIpListApi;
my $api_instance = WebService::Fastly::PublicIpListApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_fastly_ips();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PublicIpListApi->list_fastly_ips: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PublicIpList**](PublicIpList.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

