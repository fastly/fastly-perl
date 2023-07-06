# WebService::Fastly::ContactApi

## Load the API package
```perl
use WebService::Fastly::Object::ContactApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contacts**](ContactApi.md#create_contacts) | **POST** /customer/{customer_id}/contacts | Add a new customer contact
[**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /customer/{customer_id}/contact/{contact_id} | Delete a contact
[**list_contacts**](ContactApi.md#list_contacts) | **GET** /customer/{customer_id}/contacts | List contacts


# **create_contacts**
> ContactResponse create_contacts(customer_id => $customer_id, user_id => $user_id, contact_type => $contact_type, name => $name, email => $email, phone => $phone, customer_id => $customer_id)

Add a new customer contact

Create a contact.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ContactApi;
my $api_instance = WebService::Fastly::ContactApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $user_id = "user_id_example"; # string | The alphanumeric string representing the user for this customer contact.
my $contact_type = "contact_type_example"; # string | The type of contact.
my $name = "name_example"; # string | The name of this contact, when user_id is not provided.
my $email = "email_example"; # string | The email of this contact, when a user_id is not provided.
my $phone = "phone_example"; # string | The phone number for this contact. Required for primary, technical, and security contact types.
my $customer_id = "customer_id_example"; # string | The alphanumeric string representing the customer for this customer contact.

eval {
    my $result = $api_instance->create_contacts(customer_id => $customer_id, user_id => $user_id, contact_type => $contact_type, name => $name, email => $email, phone => $phone, customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->create_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **user_id** | **string**| The alphanumeric string representing the user for this customer contact. | [optional] 
 **contact_type** | **string**| The type of contact. | [optional] 
 **name** | **string**| The name of this contact, when user_id is not provided. | [optional] 
 **email** | **string**| The email of this contact, when a user_id is not provided. | [optional] 
 **phone** | **string**| The phone number for this contact. Required for primary, technical, and security contact types. | [optional] 
 **customer_id** | **string**| The alphanumeric string representing the customer for this customer contact. | [optional] 

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contact**
> InlineResponse200 delete_contact(customer_id => $customer_id, contact_id => $contact_id)

Delete a contact

Delete a contact.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ContactApi;
my $api_instance = WebService::Fastly::ContactApi->new(

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

[**InlineResponse200**](InlineResponse200.md)

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
use WebService::Fastly::ContactApi;
my $api_instance = WebService::Fastly::ContactApi->new(

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

