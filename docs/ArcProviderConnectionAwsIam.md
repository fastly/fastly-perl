# WebService::Fastly::Object::ArcProviderConnectionAwsIam

## Load the model package
```perl
use WebService::Fastly::Object::ArcProviderConnectionAwsIam;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The provider name. Must be `bedrock` for `aws-iam` connections. | 
**models** | **ARRAY[string]** | The Bedrock model identifiers this connection is allowed to use. | 
**auth_type** | **string** | The authentication type for this connection. | 
**customer_role_arn** | **string** | The ARN of the IAM role in your AWS account that AI Runtime Control assumes to access Bedrock. See [get Bedrock setup information](https://www.fastly.com/documentation/reference/api/ai-runtime-control/providers#arc-get-bedrock-setup) for the role ARN and external ID your trust policy must reference. | 
**region** | **string** | The AWS region for Bedrock API requests. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


