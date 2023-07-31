# WebService::Fastly::Object::LoggingDigitaloceanAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingDigitaloceanAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket_name** | **string** | The name of the DigitalOcean Space. | [optional] 
**access_key** | **string** | Your DigitalOcean Spaces account access key. | [optional] 
**secret_key** | **string** | Your DigitalOcean Spaces account secret key. | [optional] 
**domain** | **string** | The domain of the DigitalOcean Spaces endpoint. | [optional] [default to &#39;nyc3.digitaloceanspaces.com&#39;]
**path** | **string** | The path to upload logs to. | [optional] [default to &#39;null&#39;]
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] [default to &#39;null&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


