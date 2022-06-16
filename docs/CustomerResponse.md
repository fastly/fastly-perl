# Fastly::Object::CustomerResponse

## Load the model package
```perl
use Fastly::Object::CustomerResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_contact_id** | **string** | The alphanumeric string representing the primary billing contact. | [optional] 
**billing_network_type** | **string** | Customer&#39;s current network revenue type. | [optional] 
**billing_ref** | **string** | Used for adding purchased orders to customer&#39;s account. | [optional] 
**can_configure_wordpress** | **boolean** | Whether this customer can view or edit wordpress. | [optional] [readonly] 
**can_reset_passwords** | **boolean** | Whether this customer can reset passwords. | [optional] [readonly] 
**can_upload_vcl** | **boolean** | Whether this customer can upload VCL. | [optional] [readonly] 
**force_2fa** | **boolean** | Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled. | [optional] 
**force_sso** | **boolean** | Specifies whether SSO is forced or not forced on the customer account. | [optional] 
**has_account_panel** | **boolean** | Specifies whether the account has access or does not have access to the account panel. | [optional] 
**has_improved_events** | **boolean** | Specifies whether the account has access or does not have access to the improved events. | [optional] 
**has_improved_ssl_config** | **boolean** | Whether this customer can view or edit the SSL config. | [optional] [readonly] 
**has_openstack_logging** | **boolean** | Specifies whether the account has enabled or not enabled openstack logging. | [optional] 
**has_pci** | **boolean** | Specifies whether the account can edit PCI for a service. | [optional] 
**has_pci_passwords** | **boolean** | Specifies whether PCI passwords are required for the account. | [optional] [readonly] 
**ip_whitelist** | **string** | The range of IP addresses authorized to access the customer account. | [optional] 
**legal_contact_id** | **string** | The alphanumeric string identifying the account&#39;s legal contact. | [optional] 
**name** | **string** | The name of the customer, generally the company name. | [optional] 
**owner_id** | **string** | The alphanumeric string identifying the account owner. | [optional] 
**phone_number** | **string** | The phone number associated with the account. | [optional] 
**postal_address** | **string** | The postal address associated with the account. | [optional] 
**pricing_plan** | **string** | The pricing plan this customer is under. | [optional] 
**pricing_plan_id** | **string** | The alphanumeric string identifying the pricing plan. | [optional] 
**security_contact_id** | **string** | The alphanumeric string identifying the account&#39;s security contact. | [optional] 
**technical_contact_id** | **string** | The alphanumeric string identifying the account&#39;s technical contact. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


