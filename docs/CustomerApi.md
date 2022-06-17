# WebService::Fastly::CustomerApi

## Load the API package
```perl
use WebService::Fastly::Object::CustomerApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customer**](CustomerApi.md#delete_customer) | **DELETE** /customer/{customer_id} | Delete a customer
[**get_customer**](CustomerApi.md#get_customer) | **GET** /customer/{customer_id} | Get a customer
[**get_logged_in_customer**](CustomerApi.md#get_logged_in_customer) | **GET** /current_customer | Get the logged in customer
[**list_users**](CustomerApi.md#list_users) | **GET** /customer/{customer_id}/users | List users
[**update_customer**](CustomerApi.md#update_customer) | **PUT** /customer/{customer_id} | Update a customer


# **delete_customer**
> InlineResponse200 delete_customer(customer_id => $customer_id)

Delete a customer

Delete a customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerApi;
my $api_instance = WebService::Fastly::CustomerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->delete_customer(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->delete_customer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customer**
> CustomerResponse get_customer(customer_id => $customer_id)

Get a customer

Get a specific customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerApi;
my $api_instance = WebService::Fastly::CustomerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->get_customer(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->get_customer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_logged_in_customer**
> CustomerResponse get_logged_in_customer()

Get the logged in customer

Get the logged in customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerApi;
my $api_instance = WebService::Fastly::CustomerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_logged_in_customer();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->get_logged_in_customer: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_users**
> ARRAY[SchemasUserResponse] list_users(customer_id => $customer_id)

List users

List all users from a specified customer id.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerApi;
my $api_instance = WebService::Fastly::CustomerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.

eval {
    my $result = $api_instance->list_users(customer_id => $customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->list_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 

### Return type

[**ARRAY[SchemasUserResponse]**](SchemasUserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_customer**
> CustomerResponse update_customer(customer_id => $customer_id, billing_contact_id => $billing_contact_id, billing_network_type => $billing_network_type, billing_ref => $billing_ref, can_configure_wordpress => $can_configure_wordpress, can_reset_passwords => $can_reset_passwords, can_upload_vcl => $can_upload_vcl, force_2fa => $force_2fa, force_sso => $force_sso, has_account_panel => $has_account_panel, has_improved_events => $has_improved_events, has_improved_ssl_config => $has_improved_ssl_config, has_openstack_logging => $has_openstack_logging, has_pci => $has_pci, has_pci_passwords => $has_pci_passwords, ip_whitelist => $ip_whitelist, legal_contact_id => $legal_contact_id, name => $name, owner_id => $owner_id, phone_number => $phone_number, postal_address => $postal_address, pricing_plan => $pricing_plan, pricing_plan_id => $pricing_plan_id, security_contact_id => $security_contact_id, technical_contact_id => $technical_contact_id)

Update a customer

Update a customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::CustomerApi;
my $api_instance = WebService::Fastly::CustomerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $customer_id = "customer_id_example"; # string | Alphanumeric string identifying the customer.
my $billing_contact_id = "billing_contact_id_example"; # string | The alphanumeric string representing the primary billing contact.
my $billing_network_type = "billing_network_type_example"; # string | Customer's current network revenue type.
my $billing_ref = "billing_ref_example"; # string | Used for adding purchased orders to customer's account.
my $can_configure_wordpress = null; # boolean | Whether this customer can view or edit wordpress.
my $can_reset_passwords = null; # boolean | Whether this customer can reset passwords.
my $can_upload_vcl = null; # boolean | Whether this customer can upload VCL.
my $force_2fa = null; # boolean | Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.
my $force_sso = null; # boolean | Specifies whether SSO is forced or not forced on the customer account.
my $has_account_panel = null; # boolean | Specifies whether the account has access or does not have access to the account panel.
my $has_improved_events = null; # boolean | Specifies whether the account has access or does not have access to the improved events.
my $has_improved_ssl_config = null; # boolean | Whether this customer can view or edit the SSL config.
my $has_openstack_logging = null; # boolean | Specifies whether the account has enabled or not enabled openstack logging.
my $has_pci = null; # boolean | Specifies whether the account can edit PCI for a service.
my $has_pci_passwords = null; # boolean | Specifies whether PCI passwords are required for the account.
my $ip_whitelist = "ip_whitelist_example"; # string | The range of IP addresses authorized to access the customer account.
my $legal_contact_id = "legal_contact_id_example"; # string | The alphanumeric string identifying the account's legal contact.
my $name = "name_example"; # string | The name of the customer, generally the company name.
my $owner_id = "owner_id_example"; # string | The alphanumeric string identifying the account owner.
my $phone_number = "phone_number_example"; # string | The phone number associated with the account.
my $postal_address = "postal_address_example"; # string | The postal address associated with the account.
my $pricing_plan = "pricing_plan_example"; # string | The pricing plan this customer is under.
my $pricing_plan_id = "pricing_plan_id_example"; # string | The alphanumeric string identifying the pricing plan.
my $security_contact_id = "security_contact_id_example"; # string | The alphanumeric string identifying the account's security contact.
my $technical_contact_id = "technical_contact_id_example"; # string | The alphanumeric string identifying the account's technical contact.

eval {
    my $result = $api_instance->update_customer(customer_id => $customer_id, billing_contact_id => $billing_contact_id, billing_network_type => $billing_network_type, billing_ref => $billing_ref, can_configure_wordpress => $can_configure_wordpress, can_reset_passwords => $can_reset_passwords, can_upload_vcl => $can_upload_vcl, force_2fa => $force_2fa, force_sso => $force_sso, has_account_panel => $has_account_panel, has_improved_events => $has_improved_events, has_improved_ssl_config => $has_improved_ssl_config, has_openstack_logging => $has_openstack_logging, has_pci => $has_pci, has_pci_passwords => $has_pci_passwords, ip_whitelist => $ip_whitelist, legal_contact_id => $legal_contact_id, name => $name, owner_id => $owner_id, phone_number => $phone_number, postal_address => $postal_address, pricing_plan => $pricing_plan, pricing_plan_id => $pricing_plan_id, security_contact_id => $security_contact_id, technical_contact_id => $technical_contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->update_customer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Alphanumeric string identifying the customer. | 
 **billing_contact_id** | **string**| The alphanumeric string representing the primary billing contact. | [optional] 
 **billing_network_type** | **string**| Customer&#39;s current network revenue type. | [optional] 
 **billing_ref** | **string**| Used for adding purchased orders to customer&#39;s account. | [optional] 
 **can_configure_wordpress** | **boolean**| Whether this customer can view or edit wordpress. | [optional] 
 **can_reset_passwords** | **boolean**| Whether this customer can reset passwords. | [optional] 
 **can_upload_vcl** | **boolean**| Whether this customer can upload VCL. | [optional] 
 **force_2fa** | **boolean**| Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled. | [optional] 
 **force_sso** | **boolean**| Specifies whether SSO is forced or not forced on the customer account. | [optional] 
 **has_account_panel** | **boolean**| Specifies whether the account has access or does not have access to the account panel. | [optional] 
 **has_improved_events** | **boolean**| Specifies whether the account has access or does not have access to the improved events. | [optional] 
 **has_improved_ssl_config** | **boolean**| Whether this customer can view or edit the SSL config. | [optional] 
 **has_openstack_logging** | **boolean**| Specifies whether the account has enabled or not enabled openstack logging. | [optional] 
 **has_pci** | **boolean**| Specifies whether the account can edit PCI for a service. | [optional] 
 **has_pci_passwords** | **boolean**| Specifies whether PCI passwords are required for the account. | [optional] 
 **ip_whitelist** | **string**| The range of IP addresses authorized to access the customer account. | [optional] 
 **legal_contact_id** | **string**| The alphanumeric string identifying the account&#39;s legal contact. | [optional] 
 **name** | **string**| The name of the customer, generally the company name. | [optional] 
 **owner_id** | **string**| The alphanumeric string identifying the account owner. | [optional] 
 **phone_number** | **string**| The phone number associated with the account. | [optional] 
 **postal_address** | **string**| The postal address associated with the account. | [optional] 
 **pricing_plan** | **string**| The pricing plan this customer is under. | [optional] 
 **pricing_plan_id** | **string**| The alphanumeric string identifying the pricing plan. | [optional] 
 **security_contact_id** | **string**| The alphanumeric string identifying the account&#39;s security contact. | [optional] 
 **technical_contact_id** | **string**| The alphanumeric string identifying the account&#39;s technical contact. | [optional] 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

