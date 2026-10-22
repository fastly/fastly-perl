# WebService::Fastly::Object::ArcVirtualKeyFailoverRequest

## Load the model package
```perl
use WebService::Fastly::Object::ArcVirtualKeyFailoverRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targets** | [**ARRAY[ArcFailoverTarget]**](ArcFailoverTarget.md) | The provider connections to retry against, in order. | 
**timeout_enabled** | **boolean** | Whether a request timeout triggers failover. | [optional] 
**rate_limit_429_enabled** | **boolean** | Whether a `429 Too Many Requests` response from the provider triggers failover. | [optional] 
**server_error_5xx_enabled** | **boolean** | Whether a `5xx` server error response from the provider triggers failover. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


