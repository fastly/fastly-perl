# WebService::Fastly::TlsBulkCertificatesApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsBulkCertificatesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**delete_bulk_tls_cert**](TlsBulkCertificatesApi.md#delete_bulk_tls_cert) | **DELETE** /tls/bulk/certificates/{certificate_id} | Delete a certificate
[**get_tls_bulk_cert**](TlsBulkCertificatesApi.md#get_tls_bulk_cert) | **GET** /tls/bulk/certificates/{certificate_id} | Get a certificate
[**list_tls_bulk_certs**](TlsBulkCertificatesApi.md#list_tls_bulk_certs) | **GET** /tls/bulk/certificates | List certificates
[**update_bulk_tls_cert**](TlsBulkCertificatesApi.md#update_bulk_tls_cert) | **PATCH** /tls/bulk/certificates/{certificate_id} | Update a certificate
[**upload_tls_bulk_cert**](TlsBulkCertificatesApi.md#upload_tls_bulk_cert) | **POST** /tls/bulk/certificates | Upload a certificate


# **delete_bulk_tls_cert**
> delete_bulk_tls_cert(certificate_id => $certificate_id)

Delete a certificate

Destroy a certificate. This disables TLS for all domains listed as SAN entries.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsBulkCertificatesApi;
my $api_instance = WebService::Fastly::TlsBulkCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $certificate_id = "certificate_id_example"; # string | Alphanumeric string identifying a TLS bulk certificate.

eval {
    $api_instance->delete_bulk_tls_cert(certificate_id => $certificate_id);
};
if ($@) {
    warn "Exception when calling TlsBulkCertificatesApi->delete_bulk_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_id** | **string**| Alphanumeric string identifying a TLS bulk certificate. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tls_bulk_cert**
> TlsBulkCertificateResponse get_tls_bulk_cert(certificate_id => $certificate_id)

Get a certificate

Retrieve a single certificate.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsBulkCertificatesApi;
my $api_instance = WebService::Fastly::TlsBulkCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $certificate_id = "certificate_id_example"; # string | Alphanumeric string identifying a TLS bulk certificate.

eval {
    my $result = $api_instance->get_tls_bulk_cert(certificate_id => $certificate_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsBulkCertificatesApi->get_tls_bulk_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_id** | **string**| Alphanumeric string identifying a TLS bulk certificate. | 

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_bulk_certs**
> TlsBulkCertificatesResponse list_tls_bulk_certs(filter[tls_domain/id] => $filter[tls_domain/id], page[number] => $page[number], page[size] => $page[size], sort => $sort)

List certificates

List all certificates.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsBulkCertificatesApi;
my $api_instance = WebService::Fastly::TlsBulkCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[tls_domain/id] = "filter[tls_domain/id]_example"; # string | Filter certificates by their matching, fully-qualified domain name.
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $sort = created_at; # string | The order in which to list the results by creation date.

eval {
    my $result = $api_instance->list_tls_bulk_certs(filter[tls_domain/id] => $filter[tls_domain/id], page[number] => $page[number], page[size] => $page[size], sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsBulkCertificatesApi->list_tls_bulk_certs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[tls_domain/id]** | **string**| Filter certificates by their matching, fully-qualified domain name. | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| The order in which to list the results by creation date. | [optional] [default to &#39;created_at&#39;]

### Return type

[**TlsBulkCertificatesResponse**](TlsBulkCertificatesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bulk_tls_cert**
> TlsBulkCertificateResponse update_bulk_tls_cert(certificate_id => $certificate_id, tls_bulk_certificate => $tls_bulk_certificate)

Update a certificate

Replace a certificate with a newly reissued certificate. By using this endpoint, the original certificate will cease to be used for future TLS handshakes. Thus, only SAN entries that appear in the replacement certificate will become TLS enabled. Any SAN entries that are missing in the replacement certificate will become disabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsBulkCertificatesApi;
my $api_instance = WebService::Fastly::TlsBulkCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $certificate_id = "certificate_id_example"; # string | Alphanumeric string identifying a TLS bulk certificate.
my $tls_bulk_certificate = WebService::Fastly::Object::TlsBulkCertificate->new(); # TlsBulkCertificate | 

eval {
    my $result = $api_instance->update_bulk_tls_cert(certificate_id => $certificate_id, tls_bulk_certificate => $tls_bulk_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsBulkCertificatesApi->update_bulk_tls_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_id** | **string**| Alphanumeric string identifying a TLS bulk certificate. | 
 **tls_bulk_certificate** | [**TlsBulkCertificate**](TlsBulkCertificate.md)|  | [optional] 

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload_tls_bulk_cert**
> TlsBulkCertificateResponse upload_tls_bulk_cert(tls_bulk_certificate => $tls_bulk_certificate)

Upload a certificate

Upload a new certificate. TLS domains are automatically enabled upon certificate creation. If a domain is already enabled on a previously uploaded certificate, that domain will be updated to use the new certificate for all future TLS handshake requests.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsBulkCertificatesApi;
my $api_instance = WebService::Fastly::TlsBulkCertificatesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_bulk_certificate = WebService::Fastly::Object::TlsBulkCertificate->new(); # TlsBulkCertificate | 

eval {
    my $result = $api_instance->upload_tls_bulk_cert(tls_bulk_certificate => $tls_bulk_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsBulkCertificatesApi->upload_tls_bulk_cert: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_bulk_certificate** | [**TlsBulkCertificate**](TlsBulkCertificate.md)|  | [optional] 

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

