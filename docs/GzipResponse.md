# Fastly::Object::GzipResponse

## Load the model package
```perl
use Fastly::Object::GzipResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cache_condition** | **string** | Name of the cache condition controlling when this configuration applies. | [optional] 
**content_types** | **string** | Space-separated list of content types to compress. If you omit this field a default list will be used. | [optional] 
**extensions** | **string** | Space-separated list of file extensions to compress. If you omit this field a default list will be used. | [optional] 
**name** | **string** | Name of the gzip configuration. | [optional] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


