# WebService::Fastly::Object::HttpResponseFormat

## Load the model package
```perl
use WebService::Fastly::Object::HttpResponseFormat;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **int** | The HTTP status code. | [optional] [default to 200]
**reason** | **string** | The HTTP status string. Defaults to a string appropriate for `code`. | [optional] 
**headers** | **HASH[string,string]** | A map of arbitrary HTTP response headers to include in the response. | [optional] 
**body** | **string** | The response body as a string. | [optional] 
**body_bin** | **string** | The response body as a base64-encoded binary blob. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


