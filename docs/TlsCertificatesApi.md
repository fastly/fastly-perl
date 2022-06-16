# Fastly::TlsCertificatesApi

## Load the API package
```perl
use Fastly::Object::TlsCertificatesApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tls_cert**](TlsCertificatesApi.md#create_tls_cert) | **POST** /tls/certificates | Create a TLS certificate
[**delete_tls_cert**](TlsCertificatesApi.md#delete_tls_cert) | **DELETE** /tls/certificates/{tls_certificate_id} | Delete a TLS certificate
[**get_tls_cert**](TlsCertificatesApi.md#get_tls_cert) | **GET** /tls/certificates/{tls_certificate_id} | Get a TLS certificate
[**list_tls_certs**](TlsCertificatesApi.md#list_tls_certs) | **GET** /tls/certificates | List TLS certificates
[**update_tls_cert**](TlsCertificatesApi.md#update_tls_cert) | **PATCH** /tls/certificates/{tls_certificate_id} | Update a TLS certificate


# **create_tls_cert**
> object create_tls_cert(tls_certificate => $tls_certificate)

Create a TLS certificate

Create a TLS certificate.

### Example
```perl
use Data::Dumper;
use Fastly::TlsCertificatesApi;
my $api_instance = Fastly::TlsCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_certificate = Fastly::Object::TlsCertificate->new(); # TlsCertificate | 

eval {
    my $result = $api_instance->create_tls_cert(tls_certificate => $tls_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsCertificatesApi->create_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_certificate** | [**TlsCertificate**](TlsCertificate.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tls_cert**
> delete_tls_cert(tls_certificate_id => $tls_certificate_id)

Delete a TLS certificate

Destroy a TLS certificate. TLS certificates already enabled for a domain cannot be destroyed.

### Example
```perl
use Data::Dumper;
use Fastly::TlsCertificatesApi;
my $api_instance = Fastly::TlsCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_certificate_id = "tls_certificate_id_example"; # string | Alphanumeric string identifying a TLS certificate.

eval {
    $api_instance->delete_tls_cert(tls_certificate_id => $tls_certificate_id);
};
if ($@) {
    warn "Exception when calling TlsCertificatesApi->delete_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_certificate_id** | **string**| Alphanumeric string identifying a TLS certificate. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tls_cert**
> TlsCertificateResponse get_tls_cert(tls_certificate_id => $tls_certificate_id)

Get a TLS certificate

Show a TLS certificate.

### Example
```perl
use Data::Dumper;
use Fastly::TlsCertificatesApi;
my $api_instance = Fastly::TlsCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_certificate_id = "tls_certificate_id_example"; # string | Alphanumeric string identifying a TLS certificate.

eval {
    my $result = $api_instance->get_tls_cert(tls_certificate_id => $tls_certificate_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsCertificatesApi->get_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_certificate_id** | **string**| Alphanumeric string identifying a TLS certificate. | 

### Return type

[**TlsCertificateResponse**](TlsCertificateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_certs**
> TlsCertificatesResponse list_tls_certs(filter[not_after] => $filter[not_after], filter[tls_domains/id] => $filter[tls_domains/id], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort)

List TLS certificates

List all TLS certificates.

### Example
```perl
use Data::Dumper;
use Fastly::TlsCertificatesApi;
my $api_instance = Fastly::TlsCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[not_after] = "filter[not_after]_example"; # string | Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]=2020-05-05). 
my $filter[tls_domains/id] = "filter[tls_domains/id]_example"; # string | Limit the returned certificates to those that include the specific domain.
my $include = "include_example"; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $sort = created_at; # string | The order in which to list the results by creation date.

eval {
    my $result = $api_instance->list_tls_certs(filter[not_after] => $filter[not_after], filter[tls_domains/id] => $filter[tls_domains/id], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsCertificatesApi->list_tls_certs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[not_after]** | **string**| Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05).  | [optional] 
 **filter[tls_domains/id]** | **string**| Limit the returned certificates to those that include the specific domain. | [optional] 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| The order in which to list the results by creation date. | [optional] [default to &#39;created_at&#39;]

### Return type

[**TlsCertificatesResponse**](TlsCertificatesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tls_cert**
> TlsCertificateResponse update_tls_cert(tls_certificate_id => $tls_certificate_id, tls_certificate => $tls_certificate)

Update a TLS certificate

Replace a TLS certificate with a newly reissued TLS certificate, or update a TLS certificate's name. If replacing a TLS certificate, the new TLS certificate must contain all SAN entries as the current TLS certificate. It must either have an exact matching list or contain a superset.

### Example
```perl
use Data::Dumper;
use Fastly::TlsCertificatesApi;
my $api_instance = Fastly::TlsCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_certificate_id = "tls_certificate_id_example"; # string | Alphanumeric string identifying a TLS certificate.
my $tls_certificate = Fastly::Object::TlsCertificate->new(); # TlsCertificate | 

eval {
    my $result = $api_instance->update_tls_cert(tls_certificate_id => $tls_certificate_id, tls_certificate => $tls_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsCertificatesApi->update_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_certificate_id** | **string**| Alphanumeric string identifying a TLS certificate. | 
 **tls_certificate** | [**TlsCertificate**](TlsCertificate.md)|  | [optional] 

### Return type

[**TlsCertificateResponse**](TlsCertificateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

