# WebService::Fastly::Object::HeaderResponse

## Load the model package
```perl
use WebService::Fastly::Object::HeaderResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** | Accepts a string value. | [optional] 
**cache_condition** | **string** | Name of the cache condition controlling when this configuration applies. | [optional] 
**dst** | **string** | Header to set. | [optional] 
**name** | **string** | A handle to refer to this Header object. | [optional] 
**regex** | **string** | Regular expression to use. Only applies to `regex` and `regex_repeat` actions. | [optional] 
**request_condition** | **string** | Condition which, if met, will select this configuration during a request. Optional. | [optional] 
**response_condition** | **string** | Optional name of a response condition to apply. | [optional] 
**src** | **string** | Variable to be used as a source for the header content. Does not apply to `delete` action. | [optional] 
**substitution** | **string** | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions. | [optional] 
**type** | **string** | Accepts a string value. | [optional] 
**ignore_if_set** | **string** | Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\&quot;0\&quot; &#x3D; false, \&quot;1\&quot; &#x3D; true) | [optional] 
**priority** | **string** | Priority determines execution order. Lower numbers execute first. | [optional] [default to &#39;100&#39;]
**service_id** | **string** |  | [optional] [readonly] 
**version** | **string** |  | [optional] [readonly] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


