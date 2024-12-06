# WebService::Fastly::Object::GetLogRecordsResponseMetaFilters

## Load the model package
```perl
use WebService::Fastly::Object::GetLogRecordsResponseMetaFilters;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **string** | Specifies the ID of the service for which data should be returned. | [optional] 
**start** | **string** | Start time for the query as supplied in the request. | [optional] 
**end** | **string** | End time for the query as supplied in the request. | [optional] 
**domain_exact_match** | **boolean** | Value of the `domain_exact_match` filter as supplied in the request. | [optional] 
**limit** | **int** | Number of records per page. | [optional] [default to 20]
**next_cursor** | **string** | A cursor to specify the next page of results, if any. | [optional] 
**filter_fields** | [**ARRAY[FilterFieldItem]**](FilterFieldItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


