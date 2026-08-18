# WebService::Fastly::Object::LogError

## Load the model package
```perl
use WebService::Fastly::Object::LogError;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence_number** | **int** | Sequence number for ordering messages. | [optional] 
**error_time_us** | **int** | Timestamp of the error in microseconds. | [optional] 
**stream** | **string** | The stream type, always &#39;logging_error&#39; for logging endpoint errors. | [optional] 
**message** | **string** | User-friendly error message. | [optional] 
**endpoint** | **string** | Name of the logging endpoint that generated the error. | [optional] 
**details** | **string** | Additional error details as a JSON string. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


