# WebService::Fastly::ProductDomainResearchApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductDomainResearchApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_domain_research**](ProductDomainResearchApi.md#disable_product_domain_research) | **DELETE** /enabled-products/v1/domain_research | Disable product
[**enable_domain_research**](ProductDomainResearchApi.md#enable_domain_research) | **PUT** /enabled-products/v1/domain_research | Enable product
[**get_domain_research**](ProductDomainResearchApi.md#get_domain_research) | **GET** /enabled-products/v1/domain_research | Get product enablement status


# **disable_product_domain_research**
> disable_product_domain_research()

Disable product

Disable the Domain Research product.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainResearchApi;
my $api_instance = WebService::Fastly::ProductDomainResearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    $api_instance->disable_product_domain_research();
};
if ($@) {
    warn "Exception when calling ProductDomainResearchApi->disable_product_domain_research: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_domain_research**
> DomainResearchResponseBodyEnable enable_domain_research()

Enable product

Enable the Domain Research product.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainResearchApi;
my $api_instance = WebService::Fastly::ProductDomainResearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->enable_domain_research();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDomainResearchApi->enable_domain_research: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainResearchResponseBodyEnable**](DomainResearchResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domain_research**
> DomainResearchResponseBodyEnable get_domain_research()

Get product enablement status

Get the enablement status of the Domain Research product.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductDomainResearchApi;
my $api_instance = WebService::Fastly::ProductDomainResearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_domain_research();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductDomainResearchApi->get_domain_research: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainResearchResponseBodyEnable**](DomainResearchResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

