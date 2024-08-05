# WebService::Fastly::Object::DashboardItem

## Load the model package
```perl
use WebService::Fastly::Object::DashboardItem;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Dashboard item identifier (UUID) | [optional] [readonly] 
**title** | **string** | A human-readable title for the dashboard item | 
**subtitle** | **string** | A human-readable subtitle for the dashboard item. Often a description of the visualization. | 
**data_source** | [**DashboardItemPropertyDataSource**](DashboardItemPropertyDataSource.md) |  | 
**visualization** | [**DashboardItemPropertyVisualization**](DashboardItemPropertyVisualization.md) |  | 
**span** | **int** | The number of columns for the dashboard item to span. Dashboards are rendered on a 12-column grid on \&quot;desktop\&quot; screen sizes. | [optional] [default to 4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


