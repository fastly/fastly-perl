# WebService::Fastly::DictionaryItemApi

## Load the API package
```perl
use WebService::Fastly::Object::DictionaryItemApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_dictionary_item**](DictionaryItemApi.md#bulk_update_dictionary_item) | **PATCH** /service/{service_id}/dictionary/{dictionary_id}/items | Update multiple entries in an edge dictionary
[**create_dictionary_item**](DictionaryItemApi.md#create_dictionary_item) | **POST** /service/{service_id}/dictionary/{dictionary_id}/item | Create an entry in an edge dictionary
[**delete_dictionary_item**](DictionaryItemApi.md#delete_dictionary_item) | **DELETE** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Delete an item from an edge dictionary
[**get_dictionary_item**](DictionaryItemApi.md#get_dictionary_item) | **GET** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Get an item from an edge dictionary
[**list_dictionary_items**](DictionaryItemApi.md#list_dictionary_items) | **GET** /service/{service_id}/dictionary/{dictionary_id}/items | List items in an edge dictionary
[**update_dictionary_item**](DictionaryItemApi.md#update_dictionary_item) | **PATCH** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Update an entry in an edge dictionary
[**upsert_dictionary_item**](DictionaryItemApi.md#upsert_dictionary_item) | **PUT** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Insert or update an entry in an edge dictionary


# **bulk_update_dictionary_item**
> InlineResponse200 bulk_update_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, bulk_update_dictionary_list_request => $bulk_update_dictionary_list_request)

Update multiple entries in an edge dictionary

Update multiple items in the same dictionary. For faster updates to your service, group your changes into large batches. The maximum batch size is 1000 items. [Contact support](https://support.fastly.com/) to discuss raising this limit.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $bulk_update_dictionary_list_request = WebService::Fastly::Object::BulkUpdateDictionaryListRequest->new(); # BulkUpdateDictionaryListRequest | 

eval {
    my $result = $api_instance->bulk_update_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, bulk_update_dictionary_list_request => $bulk_update_dictionary_list_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->bulk_update_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **bulk_update_dictionary_list_request** | [**BulkUpdateDictionaryListRequest**](BulkUpdateDictionaryListRequest.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_dictionary_item**
> DictionaryItemResponse create_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, item_key => $item_key, item_value => $item_value)

Create an entry in an edge dictionary

Create DictionaryItem given service, dictionary ID, item key, and item value.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->create_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->create_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dictionary_item**
> InlineResponse200 delete_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key)

Delete an item from an edge dictionary

Delete DictionaryItem given service, dictionary ID, and item key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $dictionary_item_key = "dictionary_item_key_example"; # string | Item key, maximum 256 characters.

eval {
    my $result = $api_instance->delete_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->delete_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **dictionary_item_key** | **string**| Item key, maximum 256 characters. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dictionary_item**
> DictionaryItemResponse get_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key)

Get an item from an edge dictionary

Retrieve a single DictionaryItem given service, dictionary ID and item key.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $dictionary_item_key = "dictionary_item_key_example"; # string | Item key, maximum 256 characters.

eval {
    my $result = $api_instance->get_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->get_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **dictionary_item_key** | **string**| Item key, maximum 256 characters. | 

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dictionary_items**
> ARRAY[DictionaryItemResponse] list_dictionary_items(service_id => $service_id, dictionary_id => $dictionary_id, page => $page, per_page => $per_page, sort => $sort, direction => $direction)

List items in an edge dictionary

List of DictionaryItems given service and dictionary ID.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $page = 1; # int | Current page.
my $per_page = 20; # int | Number of records per page.
my $sort = created; # string | Field on which to sort.
my $direction = ascend; # string | Direction in which to sort results.

eval {
    my $result = $api_instance->list_dictionary_items(service_id => $service_id, dictionary_id => $dictionary_id, page => $page, per_page => $per_page, sort => $sort, direction => $direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->list_dictionary_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **page** | **int**| Current page. | [optional] 
 **per_page** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| Field on which to sort. | [optional] [default to &#39;created&#39;]
 **direction** | **string**| Direction in which to sort results. | [optional] [default to &#39;ascend&#39;]

### Return type

[**ARRAY[DictionaryItemResponse]**](DictionaryItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dictionary_item**
> DictionaryItemResponse update_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key, item_key => $item_key, item_value => $item_value)

Update an entry in an edge dictionary

Update DictionaryItem given service, dictionary ID, item key, and item value.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $dictionary_item_key = "dictionary_item_key_example"; # string | Item key, maximum 256 characters.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->update_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->update_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **dictionary_item_key** | **string**| Item key, maximum 256 characters. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsert_dictionary_item**
> DictionaryItemResponse upsert_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key, item_key => $item_key, item_value => $item_value)

Insert or update an entry in an edge dictionary

Upsert DictionaryItem given service, dictionary ID, item key, and item value.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DictionaryItemApi;
my $api_instance = WebService::Fastly::DictionaryItemApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $dictionary_id = "dictionary_id_example"; # string | Alphanumeric string identifying a Dictionary.
my $dictionary_item_key = "dictionary_item_key_example"; # string | Item key, maximum 256 characters.
my $item_key = "item_key_example"; # string | Item key, maximum 256 characters.
my $item_value = "item_value_example"; # string | Item value, maximum 8000 characters.

eval {
    my $result = $api_instance->upsert_dictionary_item(service_id => $service_id, dictionary_id => $dictionary_id, dictionary_item_key => $dictionary_item_key, item_key => $item_key, item_value => $item_value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DictionaryItemApi->upsert_dictionary_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **dictionary_id** | **string**| Alphanumeric string identifying a Dictionary. | 
 **dictionary_item_key** | **string**| Item key, maximum 256 characters. | 
 **item_key** | **string**| Item key, maximum 256 characters. | [optional] 
 **item_value** | **string**| Item value, maximum 8000 characters. | [optional] 

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

