# WebService::Fastly::Object::LoggingGcsAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingGcsAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket_name** | **string** | The name of the GCS bucket. | [optional] 
**path** | **string** |  | [optional] [default to &#39;/&#39;]
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
**project_id** | **string** | Your Google Cloud Platform project ID. Required | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


