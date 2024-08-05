# WebService::Fastly::Object::Dashboard

## Load the model package
```perl
use WebService::Fastly::Object::Dashboard;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Dashboard identifier (UUID) | [optional] [readonly] 
**name** | **string** | A human-readable name | [optional] 
**description** | **string** | A short description of the dashboard | [optional] 
**items** | [**ARRAY[DashboardItem]**](DashboardItem.md) | A list of [dashboard items](#dashboard-item). | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**created_by** | [**DashboardPropertyCreatedBy**](DashboardPropertyCreatedBy.md) |  | [optional] 
**updated_by** | [**DashboardPropertyUpdatedBy**](DashboardPropertyUpdatedBy.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


