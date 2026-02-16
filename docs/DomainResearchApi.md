# WebService::Fastly::DomainResearchApi

## Load the API package
```perl
use WebService::Fastly::Object::DomainResearchApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**domain_status**](DomainResearchApi.md#domain_status) | **GET** /domain-management/v1/tools/status | Domain status
[**suggest_domains**](DomainResearchApi.md#suggest_domains) | **GET** /domain-management/v1/tools/suggest | Suggest domains


# **domain_status**
> Status domain_status(domain => $domain, scope => $scope)

Domain status

The `Status` method checks the availability status of a single domain name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainResearchApi;
my $api_instance = WebService::Fastly::DomainResearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $domain = acmecoffee.shop; # string | 
my $scope = estimate; # string | 

eval {
    my $result = $api_instance->domain_status(domain => $domain, scope => $scope);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainResearchApi->domain_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string**|  | 
 **scope** | **string**|  | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest_domains**
> InlineResponse2009 suggest_domains(query => $query, defaults => $defaults, keywords => $keywords, location => $location, vendor => $vendor)

Suggest domains

The `Suggest` method performs a real-time query of the search term(s) against the [known zone database](http://zonedb.org), making recommendations, stemming, and applying Unicode folding, IDN normalization, registrar supported-zone restrictions, and other refinements. **Note:** `Suggest` method responses do not include domain availability status. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainResearchApi;
my $api_instance = WebService::Fastly::DomainResearchApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $query = foo%20bar; # string | 
my $defaults = club; # string | 
my $keywords = food,kitchen; # string | 
my $location = de; # string | 
my $vendor = dnsimple.com; # string | 

eval {
    my $result = $api_instance->suggest_domains(query => $query, defaults => $defaults, keywords => $keywords, location => $location, vendor => $vendor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainResearchApi->suggest_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **defaults** | **string**|  | [optional] 
 **keywords** | **string**|  | [optional] 
 **location** | **string**|  | [optional] 
 **vendor** | **string**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

