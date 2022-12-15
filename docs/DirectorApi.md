# WebService::Fastly::DirectorApi

## Load the API package
```perl
use WebService::Fastly::Object::DirectorApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_director**](DirectorApi.md#create_director) | **POST** /service/{service_id}/version/{version_id}/director | Create a director
[**delete_director**](DirectorApi.md#delete_director) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name} | Delete a director
[**get_director**](DirectorApi.md#get_director) | **GET** /service/{service_id}/version/{version_id}/director/{director_name} | Get a director
[**list_directors**](DirectorApi.md#list_directors) | **GET** /service/{service_id}/version/{version_id}/director | List directors


# **create_director**
> DirectorResponse create_director(service_id => $service_id, version_id => $version_id, backends => $backends, capacity => $capacity, comment => $comment, name => $name, quorum => $quorum, shield => $shield, type => $type, retries => $retries)

Create a director

Create a director for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorApi;
my $api_instance = WebService::Fastly::DirectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backends = [(new WebService::Fastly.Backend())]; # ARRAY[Backend] | List of backends associated to a director.
my $capacity = 56; # int | Unused.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | Name for the Director.
my $quorum = 75; # int | The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`.
my $shield = 'null'; # string | Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding.
my $type = 1; # int | What type of load balance group to use.
my $retries = 5; # int | How many backends to search if it fails.

eval {
    my $result = $api_instance->create_director(service_id => $service_id, version_id => $version_id, backends => $backends, capacity => $capacity, comment => $comment, name => $name, quorum => $quorum, shield => $shield, type => $type, retries => $retries);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorApi->create_director: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backends** | [**ARRAY[Backend]**](Backend.md)| List of backends associated to a director. | [optional] 
 **capacity** | **int**| Unused. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| Name for the Director. | [optional] 
 **quorum** | **int**| The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`. | [optional] [default to 75]
 **shield** | **string**| Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional] [default to &#39;null&#39;]
 **type** | **int**| What type of load balance group to use. | [optional] [default to 1]
 **retries** | **int**| How many backends to search if it fails. | [optional] [default to 5]

### Return type

[**DirectorResponse**](DirectorResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_director**
> InlineResponse200 delete_director(service_id => $service_id, version_id => $version_id, director_name => $director_name)

Delete a director

Delete the director for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorApi;
my $api_instance = WebService::Fastly::DirectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $director_name = "director_name_example"; # string | Name for the Director.

eval {
    my $result = $api_instance->delete_director(service_id => $service_id, version_id => $version_id, director_name => $director_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorApi->delete_director: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **director_name** | **string**| Name for the Director. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_director**
> DirectorResponse get_director(service_id => $service_id, version_id => $version_id, director_name => $director_name)

Get a director

Get the director for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorApi;
my $api_instance = WebService::Fastly::DirectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $director_name = "director_name_example"; # string | Name for the Director.

eval {
    my $result = $api_instance->get_director(service_id => $service_id, version_id => $version_id, director_name => $director_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorApi->get_director: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **director_name** | **string**| Name for the Director. | 

### Return type

[**DirectorResponse**](DirectorResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_directors**
> ARRAY[DirectorResponse] list_directors(service_id => $service_id, version_id => $version_id)

List directors

List the directors for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DirectorApi;
my $api_instance = WebService::Fastly::DirectorApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_directors(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DirectorApi->list_directors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[DirectorResponse]**](DirectorResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

