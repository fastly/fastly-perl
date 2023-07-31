# WebService::Fastly::Object::ResponseObjectResponse

## Load the model package
```perl
use WebService::Fastly::Object::ResponseObjectResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cache_condition** | **string** | Name of the cache condition controlling when this configuration applies. | [optional] 
**content** | **string** | The content to deliver for the response object, can be empty. | [optional] 
**content_type** | **string** | The MIME type of the content, can be empty. | [optional] 
**name** | **string** | Name for the request settings. | [optional] 
**status** | **string** | The HTTP status code. | [optional] [default to &#39;200&#39;]
**response** | **string** | The HTTP response. | [optional] [default to &#39;Ok&#39;]
**request_condition** | **string** | Condition which, if met, will select this configuration during a request. Optional. | [optional] 
**service_id** | **string** |  | [optional] [readonly] 
**version** | **string** |  | [optional] [readonly] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


