# WebService::Fastly::Object::HistoricalUsageMonthResponseData

## Load the model package
```perl
use WebService::Fastly::Object::HistoricalUsageMonthResponseData;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **string** |  | [optional] [readonly] 
**services** | [**HASH[string,HistoricalUsageService]**](HistoricalUsageService.md) | Organized by *service id*. | [optional] 
**total** | [**HASH[string,HistoricalUsageData]**](HistoricalUsageData.md) | Organized by *region*. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


