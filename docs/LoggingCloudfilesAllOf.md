# WebService::Fastly::Object::LoggingCloudfilesAllOf

## Load the model package
```perl
use WebService::Fastly::Object::LoggingCloudfilesAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_key** | **string** | Your Cloud Files account access key. | [optional] 
**bucket_name** | **string** | The name of your Cloud Files container. | [optional] 
**path** | **string** | The path to upload logs to. | [optional] [default to &#39;null&#39;]
**region** | **string** | The region to stream logs to. | [optional] 
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
**user** | **string** | The username for your Cloud Files account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


