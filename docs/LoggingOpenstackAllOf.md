# WebService::Fastly::Object::LoggingOpenstackAllOf

## Load the model package
```perl
use WebService::Fastly::Object::LoggingOpenstackAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_key** | **string** | Your OpenStack account access key. | [optional] 
**bucket_name** | **string** | The name of your OpenStack container. | [optional] 
**path** | **string** | The path to upload logs to. | [optional] [default to &#39;null&#39;]
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]
**url** | **string** | Your OpenStack auth url. | [optional] 
**user** | **string** | The username for your OpenStack account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


