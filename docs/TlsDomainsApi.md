# WebService::Fastly::TlsDomainsApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsDomainsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_tls_domains**](TlsDomainsApi.md#list_tls_domains) | **GET** /tls/domains | List TLS domains


# **list_tls_domains**
> TlsDomainsResponse list_tls_domains(filter[in_use] => $filter[in_use], filter[tls_certificates/id] => $filter[tls_certificates/id], filter[tls_subscriptions/id] => $filter[tls_subscriptions/id], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort)

List TLS domains

List all TLS domains.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsDomainsApi;
my $api_instance = WebService::Fastly::TlsDomainsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[in_use] = "filter[in_use]_example"; # string | Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \"in use\") Permitted values: true, false.
my $filter[tls_certificates/id] = "filter[tls_certificates/id]_example"; # string | Optional. Limit the returned domains to those listed in the given TLS certificate's SAN list.
my $filter[tls_subscriptions/id] = "filter[tls_subscriptions/id]_example"; # string | Optional. Limit the returned domains to those for a given TLS subscription.
my $include = "include_example"; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`, `tls_certificates`, `tls_subscriptions`, `tls_subscriptions.tls_authorizations`, `tls_authorizations.globalsign_email_challenge`, and `tls_authorizations.self_managed_http_challenge`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $sort = created_at; # string | The order in which to list the results by creation date.

eval {
    my $result = $api_instance->list_tls_domains(filter[in_use] => $filter[in_use], filter[tls_certificates/id] => $filter[tls_certificates/id], filter[tls_subscriptions/id] => $filter[tls_subscriptions/id], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsDomainsApi->list_tls_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[in_use]** | **string**| Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false. | [optional] 
 **filter[tls_certificates/id]** | **string**| Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list. | [optional] 
 **filter[tls_subscriptions/id]** | **string**| Optional. Limit the returned domains to those for a given TLS subscription. | [optional] 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`, `tls_certificates`, `tls_subscriptions`, `tls_subscriptions.tls_authorizations`, `tls_authorizations.globalsign_email_challenge`, and `tls_authorizations.self_managed_http_challenge`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| The order in which to list the results by creation date. | [optional] [default to &#39;created_at&#39;]

### Return type

[**TlsDomainsResponse**](TlsDomainsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

