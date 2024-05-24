# WebService::Fastly::BillingAddressApi

## Load the API package
```perl
use WebService::Fastly::Object::BillingAddressApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**add_billing_addr**](BillingAddressApi.md#add_billing_addr) | **POST** /customer/{customer_id}/billing_address | Add a billing address to a customer
[**delete_billing_addr**](BillingAddressApi.md#delete_billing_addr) | **DELETE** /customer/{customer_id}/billing_address | Delete a billing address
[**get_billing_addr**](BillingAddressApi.md#get_billing_addr) | **GET** /customer/{customer_id}/billing_address | Get a billing address
[**update_billing_addr**](BillingAddressApi.md#update_billing_addr) | **PATCH** /customer/{customer_id}/billing_address | Update a billing address


# **add_billing_addr**
> BillingAddressResponse add_billing_addr(customer_id => $customer_id, billing_address_request => $billing_address_request)

Add a billing address to a customer

Add a billing address to a customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingAddressApi;
my $api_instance = WebService::Fastly::BillingAddressApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $billing_address_request = WebService::Fastly::Object::BillingAddressRequest->new(); # BillingAddressRequest | Billing address

eval {
    my $result = $api_instance->add_billing_addr(customer_id => $customer_id, billing_address_request => $billing_address_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingAddressApi->add_billing_addr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **billing_address_request** | [**BillingAddressRequest**](BillingAddressRequest.md)| Billing address | [optional] 

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_billing_addr**
> delete_billing_addr(customer_id => $customer_id)

Delete a billing address

Delete a customer's billing address.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingAddressApi;
my $api_instance = WebService::Fastly::BillingAddressApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    $api_instance->delete_billing_addr(customer_id => $customer_id);
};
if ($@) {
    warn "Exception when calling BillingAddressApi->delete_billing_addr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_billing_addr**
> BillingAddressResponse get_billing_addr(customer_id => $customer_id)

Get a billing address

Get a customer's billing address.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingAddressApi;
my $api_instance = WebService::Fastly::BillingAddressApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->get_billing_addr(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingAddressApi->get_billing_addr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_billing_addr**
> BillingAddressResponse update_billing_addr(customer_id => $customer_id, update_billing_address_request => $update_billing_address_request)

Update a billing address

Update a customer's billing address. You may update only part of the customer's billing address.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BillingAddressApi;
my $api_instance = WebService::Fastly::BillingAddressApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $update_billing_address_request = WebService::Fastly::Object::UpdateBillingAddressRequest->new(); # UpdateBillingAddressRequest | One or more billing address attributes

eval {
    my $result = $api_instance->update_billing_addr(customer_id => $customer_id, update_billing_address_request => $update_billing_address_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BillingAddressApi->update_billing_addr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **update_billing_address_request** | [**UpdateBillingAddressRequest**](UpdateBillingAddressRequest.md)| One or more billing address attributes | [optional] 

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

