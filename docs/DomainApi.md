# WebService::Fastly::DomainApi

## Load the API package
```perl
use WebService::Fastly::Object::DomainApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_domain**](DomainApi.md#check_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name}/check | Validate DNS configuration for a single domain on a service
[**check_domains**](DomainApi.md#check_domains) | **GET** /service/{service_id}/version/{version_id}/domain/check_all | Validate DNS configuration for all domains on a service
[**create_domain**](DomainApi.md#create_domain) | **POST** /service/{service_id}/version/{version_id}/domain | Add a domain name to a service
[**delete_domain**](DomainApi.md#delete_domain) | **DELETE** /service/{service_id}/version/{version_id}/domain/{domain_name} | Remove a domain from a service
[**get_domain**](DomainApi.md#get_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name} | Describe a domain
[**list_domains**](DomainApi.md#list_domains) | **GET** /service/{service_id}/version/{version_id}/domain | List domains
[**update_domain**](DomainApi.md#update_domain) | **PUT** /service/{service_id}/version/{version_id}/domain/{domain_name} | Update a domain


# **check_domain**
> ARRAY[DomainCheckItem] check_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name)

Validate DNS configuration for a single domain on a service

Checks the status of a specific domain's DNS record for a Service Version. Returns an array in the same format as domain/check_all.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $domain_name = "domain_name_example"; # string | The name of the domain or domains associated with this service.

eval {
    my $result = $api_instance->check_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->check_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **domain_name** | **string**| The name of the domain or domains associated with this service. | 

### Return type

[**ARRAY[DomainCheckItem]**](DomainCheckItem.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_domains**
> ARRAY[ARRAY] check_domains(service_id => $service_id, version_id => $version_id)

Validate DNS configuration for all domains on a service

Checks the status of all domains' DNS records for a Service Version. Returns an array of 3 items for each domain; the first is the details for the domain, the second is the current CNAME of the domain, and the third is a boolean indicating whether or not it has been properly setup to use Fastly.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->check_domains(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->check_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

**ARRAY[ARRAY]**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_domain**
> DomainResponse create_domain(service_id => $service_id, version_id => $version_id, comment => $comment, name => $name)

Add a domain name to a service

Create a domain for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | The name of the domain or domains associated with this service.

eval {
    my $result = $api_instance->create_domain(service_id => $service_id, version_id => $version_id, comment => $comment, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->create_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| The name of the domain or domains associated with this service. | [optional] 

### Return type

[**DomainResponse**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_domain**
> InlineResponse200 delete_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name)

Remove a domain from a service

Delete the domain for a particular service and versions.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $domain_name = "domain_name_example"; # string | The name of the domain or domains associated with this service.

eval {
    my $result = $api_instance->delete_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->delete_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **domain_name** | **string**| The name of the domain or domains associated with this service. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domain**
> DomainResponse get_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name)

Describe a domain

Get the domain for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $domain_name = "domain_name_example"; # string | The name of the domain or domains associated with this service.

eval {
    my $result = $api_instance->get_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->get_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **domain_name** | **string**| The name of the domain or domains associated with this service. | 

### Return type

[**DomainResponse**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_domains**
> ARRAY[DomainResponse] list_domains(service_id => $service_id, version_id => $version_id)

List domains

List all the domains for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_domains(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->list_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[DomainResponse]**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_domain**
> DomainResponse update_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name, comment => $comment, name => $name)

Update a domain

Update the domain for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DomainApi;
my $api_instance = WebService::Fastly::DomainApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $domain_name = "domain_name_example"; # string | The name of the domain or domains associated with this service.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $name = "name_example"; # string | The name of the domain or domains associated with this service.

eval {
    my $result = $api_instance->update_domain(service_id => $service_id, version_id => $version_id, domain_name => $domain_name, comment => $comment, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainApi->update_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **domain_name** | **string**| The name of the domain or domains associated with this service. | 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **name** | **string**| The name of the domain or domains associated with this service. | [optional] 

### Return type

[**DomainResponse**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

