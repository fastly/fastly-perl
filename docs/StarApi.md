# WebService::Fastly::StarApi

## Load the API package
```perl
use WebService::Fastly::Object::StarApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_service_star**](StarApi.md#create_service_star) | **POST** /stars | Create a star
[**delete_service_star**](StarApi.md#delete_service_star) | **DELETE** /stars/{star_id} | Delete a star
[**get_service_star**](StarApi.md#get_service_star) | **GET** /stars/{star_id} | Get a star
[**list_service_stars**](StarApi.md#list_service_stars) | **GET** /stars | List stars


# **create_service_star**
> StarResponse create_service_star(star => $star)

Create a star

Create star.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::StarApi;
my $api_instance = WebService::Fastly::StarApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $star = WebService::Fastly::Object::Star->new(); # Star | 

eval {
    my $result = $api_instance->create_service_star(star => $star);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StarApi->create_service_star: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **star** | [**Star**](Star.md)|  | [optional] 

### Return type

[**StarResponse**](StarResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_service_star**
> delete_service_star(star_id => $star_id)

Delete a star

Delete star.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::StarApi;
my $api_instance = WebService::Fastly::StarApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $star_id = "star_id_example"; # string | Alphanumeric string identifying a star.

eval {
    $api_instance->delete_service_star(star_id => $star_id);
};
if ($@) {
    warn "Exception when calling StarApi->delete_service_star: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **star_id** | **string**| Alphanumeric string identifying a star. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_star**
> StarResponse get_service_star(star_id => $star_id)

Get a star

Show star.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::StarApi;
my $api_instance = WebService::Fastly::StarApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $star_id = "star_id_example"; # string | Alphanumeric string identifying a star.

eval {
    my $result = $api_instance->get_service_star(star_id => $star_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StarApi->get_service_star: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **star_id** | **string**| Alphanumeric string identifying a star. | 

### Return type

[**StarResponse**](StarResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_stars**
> Pagination list_service_stars()

List stars

List stars.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::StarApi;
my $api_instance = WebService::Fastly::StarApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_service_stars();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StarApi->list_service_stars: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pagination**](Pagination.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

