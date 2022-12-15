# WebService::Fastly::ServiceApi

## Load the API package
```perl
use WebService::Fastly::Object::ServiceApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_service**](ServiceApi.md#create_service) | **POST** /service | Create a service
[**delete_service**](ServiceApi.md#delete_service) | **DELETE** /service/{service_id} | Delete a service
[**get_service**](ServiceApi.md#get_service) | **GET** /service/{service_id} | Get a service
[**get_service_detail**](ServiceApi.md#get_service_detail) | **GET** /service/{service_id}/details | Get service details
[**list_service_domains**](ServiceApi.md#list_service_domains) | **GET** /service/{service_id}/domain | List the domains within a service
[**list_services**](ServiceApi.md#list_services) | **GET** /service | List services
[**search_service**](ServiceApi.md#search_service) | **GET** /service/search | Search for a service by name
[**update_service**](ServiceApi.md#update_service) | **PUT** /service/{service_id} | Update a service


# **create_service**
> ServiceResponse create_service(comment => $comment, name => $name, customer_id => $customer_id, type => $type)

Create a service

Create a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | The name of the service.
my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $type = "type_example"; # string | The type of this service.

eval {
    my $result = $api_instance->create_service(comment => $comment, name => $name, customer_id => $customer_id, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->create_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| The name of the service. | [optional] 
 **customer_id** | **string**| Alphanumeric string identifying the customer. | [optional] 
 **type** | **string**| The type of this service. | [optional] 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_service**
> InlineResponse200 delete_service(service_id => $service_id)

Delete a service

Delete a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->delete_service(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->delete_service: $@\n";
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

# **get_service**
> ServiceResponse get_service(service_id => $service_id)

Get a service

Get a specific service by id.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_service(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->get_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_detail**
> ServiceDetail get_service_detail(service_id => $service_id, version => $version)

Get service details

List detailed information on a specified service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version = 56; # int | Number identifying a version of the service.

eval {
    my $result = $api_instance->get_service_detail(service_id => $service_id, version => $version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->get_service_detail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version** | **int**| Number identifying a version of the service. | [optional] 

### Return type

[**ServiceDetail**](ServiceDetail.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_service_domains**
> ARRAY[DomainResponse] list_service_domains(service_id => $service_id)

List the domains within a service

List the domains within a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->list_service_domains(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->list_service_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**ARRAY[DomainResponse]**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_services**
> ARRAY[ServiceListResponse] list_services(page => $page, per_page => $per_page, sort => $sort, direction => $direction)

List services

List services.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page = 1; # int | Current page.
my $per_page = 20; # int | Number of records per page.
my $sort = created; # string | Field on which to sort.
my $direction = ascend; # string | Direction in which to sort results.

eval {
    my $result = $api_instance->list_services(page => $page, per_page => $per_page, sort => $sort, direction => $direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->list_services: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page. | [optional] 
 **per_page** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| Field on which to sort. | [optional] [default to &#39;created&#39;]
 **direction** | **string**| Direction in which to sort results. | [optional] [default to &#39;ascend&#39;]

### Return type

[**ARRAY[ServiceListResponse]**](ServiceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_service**
> ServiceResponse search_service(name => $name)

Search for a service by name

Get a specific service by name.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $name = "name_example"; # string | The name of the service.

eval {
    my $result = $api_instance->search_service(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->search_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the service. | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service**
> ServiceResponse update_service(service_id => $service_id, comment => $comment, name => $name, customer_id => $customer_id)

Update a service

Update a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ServiceApi;
my $api_instance = WebService::Fastly::ServiceApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | The name of the service.
my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->update_service(service_id => $service_id, comment => $comment, name => $name, customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServiceApi->update_service: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| The name of the service. | [optional] 
 **customer_id** | **string**| Alphanumeric string identifying the customer. | [optional] 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

