# Fastly::ContactApi

## Load the API package
```perl
use Fastly::Object::ContactApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /customer/{customer_id}/contact/{contact_id} | Delete a contact
[**list_contacts**](ContactApi.md#list_contacts) | **GET** /customer/{customer_id}/contacts | List contacts


# **delete_contact**
> DeleteAcl200Response delete_contact(customer_id => $customer_id, contact_id => $contact_id)

Delete a contact

Delete a contact.

### Example
```perl
use Data::Dumper;
use Fastly::ContactApi;
my $api_instance = Fastly::ContactApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $contact_id = "contact_id_example"; # string | An alphanumeric string identifying the customer contact.

eval {
    my $result = $api_instance->delete_contact(customer_id => $customer_id, contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->delete_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **contact_id** | **string**| An alphanumeric string identifying the customer contact. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_contacts**
> ARRAY[SchemasContactResponse] list_contacts(customer_id => $customer_id)

List contacts

List all contacts from a specified customer ID.

### Example
```perl
use Data::Dumper;
use Fastly::ContactApi;
my $api_instance = Fastly::ContactApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->list_contacts(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->list_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**ARRAY[SchemasContactResponse]**](SchemasContactResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

