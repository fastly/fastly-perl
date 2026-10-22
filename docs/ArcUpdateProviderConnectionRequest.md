# WebService::Fastly::Object::ArcUpdateProviderConnectionRequest

## Load the model package
```perl
use WebService::Fastly::Object::ArcUpdateProviderConnectionRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**models** | **ARRAY[string]** | The AI model identifiers this connection is allowed to use. Must be non-empty if included. | [optional] 
**base_url** | **string** | The base URL of the provider&#39;s API (`api-key` connections only). | [optional] 
**api_key** | **string** | The provider&#39;s secret API key (`api-key` connections only). | [optional] 
**customer_role_arn** | **string** | The ARN of the IAM role to assume for Bedrock requests (`aws-iam` connections only). | [optional] 
**region** | **string** | The AWS region for Bedrock API requests (`aws-iam` connections only). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


