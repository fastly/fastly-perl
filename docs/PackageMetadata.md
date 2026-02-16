# WebService::Fastly::Object::PackageMetadata

## Load the model package
```perl
use WebService::Fastly::Object::PackageMetadata;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Compute package. | [optional] 
**description** | **string** | Description of the Compute package. | [optional] 
**authors** | **ARRAY[string]** | A list of package authors&#39; email addresses. | [optional] 
**language** | **string** | The language of the Compute package. | [optional] 
**size** | **int** | Size of the Compute package in bytes. This is deprecated along with `hashsum`. | [optional] 
**hashsum** | **string** | Hash of the Compute package. This is deprecated in favor of `files_hash`. | [optional] 
**files_hash** | **string** | Hash of the files within the Compute package. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


