# Fastly::Object::DiffResponse

## Load the model package
```perl
use Fastly::Object::DiffResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **int** | The version number being diffed from. | [optional] 
**to** | **int** | The version number being diffed to. | [optional] 
**format** | **string** | The format the diff is being returned in (`text`, `html` or `html_simple`). | [optional] 
**diff** | **string** | The differences between two specified service versions. Returns the full config if the version configurations are identical. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


