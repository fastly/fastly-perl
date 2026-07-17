# WebService::Fastly::Object::Page

## Load the model package
```perl
use WebService::Fastly::Object::Page;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique page identifier | [optional] 
**website_id** | **string** | Parent website ID | [optional] 
**name** | **string** | Page name | [optional] 
**description** | **string** | Page description | [optional] 
**notifications** | [**ARRAY[Notification]**](Notification.md) | Notification configurations for this page | [optional] 
**paths** | **ARRAY[string]** | URL paths to monitor | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


