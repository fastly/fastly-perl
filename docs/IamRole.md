# Fastly::Object::IamRole

## Load the model package
```perl
use Fastly::Object::IamRole;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**id** | **string** | Alphanumeric string identifying the role. | [optional] 
**object** | **string** | The type of the object. | [optional] 
**name** | **string** | Name of the role. | [optional] 
**description** | **string** | Description of the role. | [optional] 
**custom** | **boolean** | This attribute is set to `true` if the role is managed by the customer. It is set to `false` if the role was created by Fastly. | [optional] 
**permissions_count** | **int** | Number of permissions assigned to the role. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


