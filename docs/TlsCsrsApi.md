# WebService::Fastly::TlsCsrsApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsCsrsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_csr**](TlsCsrsApi.md#create_csr) | **POST** /tls/certificate_signing_requests | Create CSR


# **create_csr**
> TlsCsrResponse create_csr(tls_csr => $tls_csr)

Create CSR

Creates a certificate signing request (CSR).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsCsrsApi;
my $api_instance = WebService::Fastly::TlsCsrsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_csr = WebService::Fastly::Object::TlsCsr->new(); # TlsCsr | 

eval {
    my $result = $api_instance->create_csr(tls_csr => $tls_csr);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsCsrsApi->create_csr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_csr** | [**TlsCsr**](TlsCsr.md)|  | [optional] 

### Return type

[**TlsCsrResponse**](TlsCsrResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

