# WebService::Fastly::Object::User

## Load the model package
```perl
use WebService::Fastly::Object::User;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **string** | The login associated with the user (typically, an email address). | [optional] 
**name** | **string** | The real life name of the user. | [optional] 
**limit_services** | **boolean** | Indicates that the user has limited access to the customer&#39;s services. | [optional] 
**locked** | **boolean** | Indicates whether the is account is locked for editing or not. | [optional] 
**require_new_password** | **boolean** | Indicates if a new password is required at next login. | [optional] 
**role** | [**RoleUser**](RoleUser.md) |  | [optional] 
**two_factor_auth_enabled** | **boolean** | Indicates if 2FA is enabled on the user. | [optional] 
**two_factor_setup_required** | **boolean** | Indicates if 2FA is required by the user&#39;s customer account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


