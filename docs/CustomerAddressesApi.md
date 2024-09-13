# WebService::Fastly::CustomerAddressesApi

## Load the API package
```perl
use WebService::Fastly::Object::CustomerAddressesApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_customer_address**](CustomerAddressesApi.md#create_customer_address) | **POST** /billing/v3/customer-addresses | Creates an address associated with a customer account.
[**list_customer_addresses**](CustomerAddressesApi.md#list_customer_addresses) | **GET** /billing/v3/customer-addresses | Return the list of addresses associated with a customer account.
[**update_customer_address**](CustomerAddressesApi.md#update_customer_address) | **PUT** /billing/v3/customer-addresses/{type} | Updates an address associated with a customer account.


# **create_customer_address**
> InlineResponse201 create_customer_address(customer_address => $customer_address)

Creates an address associated with a customer account.

Creates an address associated with a customer account.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerAddressesApi;
my $api_instance = WebService::Fastly::CustomerAddressesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_address = WebService::Fastly::Object::CustomerAddress->new(); # CustomerAddress | 

eval {
    my $result = $api_instance->create_customer_address(customer_address => $customer_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerAddressesApi->create_customer_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_address** | [**CustomerAddress**](CustomerAddress.md)|  | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_customer_addresses**
> ListCustomerAddressesResponse list_customer_addresses()

Return the list of addresses associated with a customer account.

Return the list of addresses associated with a customer account.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerAddressesApi;
my $api_instance = WebService::Fastly::CustomerAddressesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_customer_addresses();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerAddressesApi->list_customer_addresses: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListCustomerAddressesResponse**](ListCustomerAddressesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_customer_address**
> update_customer_address(type => $type, customer_address => $customer_address)

Updates an address associated with a customer account.

Updates an address associated with a customer account.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerAddressesApi;
my $api_instance = WebService::Fastly::CustomerAddressesApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $type = "type_example"; # string | Alphanumeric type of the address being modified.
my $customer_address = WebService::Fastly::Object::CustomerAddress->new(); # CustomerAddress | 

eval {
    $api_instance->update_customer_address(type => $type, customer_address => $customer_address);
};
if ($@) {
    warn "Exception when calling CustomerAddressesApi->update_customer_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| Alphanumeric type of the address being modified. | 
 **customer_address** | [**CustomerAddress**](CustomerAddress.md)|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

