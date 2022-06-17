# WebService::Fastly::Object::Contact

## Load the model package
```perl
use WebService::Fastly::Object::Contact;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **string** | The alphanumeric string representing the user for this customer contact. | [optional] 
**contact_type** | **string** | The type of contact. | [optional] 
**name** | **string** | The name of this contact, when user_id is not provided. | [optional] 
**email** | **string** | The email of this contact, when a user_id is not provided. | [optional] 
**phone** | **string** | The phone number for this contact. Required for primary, technical, and security contact types. | [optional] 
**customer_id** | **string** | The alphanumeric string representing the customer for this customer contact. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


