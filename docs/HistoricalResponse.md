# WebService::Fastly::Object::HistoricalResponse

## Load the model package
```perl
use WebService::Fastly::Object::HistoricalResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Whether or not we were able to successfully execute the query. | [optional] 
**meta** | [**HistoricalMeta**](HistoricalMeta.md) |  | [optional] 
**msg** | **string** | If the query was not successful, this will provide a string that explains why. | [optional] 
**data** | **HASH[string,ARRAY]** | Contains the results of the query, organized by *service ID*, into arrays where each element describes one service over a *time span*. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


