# WebService::Fastly::Object::LogAggregationsGetResponseMeta

## Load the model package
```perl
use WebService::Fastly::Object::LogAggregationsGetResponseMeta;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **string** | Specifies the ID of the service for which data should be returned. | [optional] 
**start** | **string** | Start time for the query as supplied in the request. | [optional] 
**end** | **string** | End time for the query as supplied in the request. | [optional] 
**limit** | **int** | Number of records per page. | [optional] [default to 20]
**sort** | **string** | Comma-separated list of the series names whose values were used to sort the results. | [optional] 
**filters** | [**LogAggregationsGetResponseMetaFilters**](LogAggregationsGetResponseMetaFilters.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


