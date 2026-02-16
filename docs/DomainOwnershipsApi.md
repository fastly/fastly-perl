# WebService::Fastly::DomainOwnershipsApi

## Load the API package
```perl
use WebService::Fastly::Object::DomainOwnershipsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_domain_ownerships**](DomainOwnershipsApi.md#list_domain_ownerships) | **GET** /domain-ownerships | List domain-ownerships


# **list_domain_ownerships**
> InlineResponse2008 list_domain_ownerships()

List domain-ownerships

List all domain-ownerships.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainOwnershipsApi;
my $api_instance = WebService::Fastly::DomainOwnershipsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_domain_ownerships();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainOwnershipsApi->list_domain_ownerships: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

