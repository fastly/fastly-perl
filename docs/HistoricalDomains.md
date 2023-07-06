# WebService::Fastly::Object::HistoricalDomains

## Load the model package
```perl
use WebService::Fastly::Object::HistoricalDomains;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Whether or not we were able to successfully execute the query. | [optional] 
**meta** | [**HistoricalDomainsMeta**](HistoricalDomainsMeta.md) |  | [optional] 
**msg** | **string** | If the query was not successful, this will provide a string that explains why. | [optional] 
**data** | [**ARRAY[HistoricalDomainsData]**](HistoricalDomainsData.md) | A list of [entries](#entry-data-model), each representing one unique combination of dimensions, such as domain, region, or POP. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


