# WebService::Fastly::LegacyWafTagApi

## Load the API package
```perl
use WebService::Fastly::Object::LegacyWafTagApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_legacy_waf_tags**](LegacyWafTagApi.md#list_legacy_waf_tags) | **GET** /wafs/tags | List WAF tags


# **list_legacy_waf_tags**
> object list_legacy_waf_tags(filter[name] => $filter[name], page[number] => $page[number], page[size] => $page[size], include => $include)

List WAF tags

List all tags.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::LegacyWafTagApi;
my $api_instance = WebService::Fastly::LegacyWafTagApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[name] = "filter[name]_example"; # string | Limit the returned tags to a specific name.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $include = rules; # string | Include relationships. Optional, comma separated values. Permitted values: `rules`. 

eval {
    my $result = $api_instance->list_legacy_waf_tags(filter[name] => $filter[name], page[number] => $page[number], page[size] => $page[size], include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LegacyWafTagApi->list_legacy_waf_tags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[name]** | **string**| Limit the returned tags to a specific name. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **include** | **string**| Include relationships. Optional, comma separated values. Permitted values: `rules`.  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

