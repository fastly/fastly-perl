# WebService::Fastly::Object::ArcProviderConnectionListItemResponse

## Load the model package
```perl
use WebService::Fastly::Object::ArcProviderConnectionListItemResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The unique identifier of the provider connection. | [readonly] 
**secret_id** | **string** | An opaque identifier for the secret material backing this connection. Not the secret itself. | [readonly] 
**name** | **string** | The display name of the provider connection. | 
**models** | **ARRAY[string]** | The AI model identifiers this connection is allowed to use. | 
**base_url** | **string** | The base URL of the provider&#39;s API. Present only for `api-key` connections. | [optional] 
**auth_type** | **string** | The authentication type for this connection. | 
**region** | **string** | The AWS region for Bedrock API requests. Present only for `aws-iam` connections. | [optional] 
**created_at** | **DateTime** | The date and time the connection was created, in RFC 3339 format. | [readonly] 
**updated_at** | **DateTime** | The date and time the connection was last updated, in RFC 3339 format. | [readonly] 
**deleted_at** | **DateTime** | The date and time the connection was deleted, in RFC 3339 format. Present only for deleted connections, which are returned only when `include_deleted` is `true`. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


