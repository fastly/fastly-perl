# WebService::Fastly::Object::ArcVirtualKey

## Load the model package
```perl
use WebService::Fastly::Object::ArcVirtualKey;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | A display name for the virtual key. | 
**expires_at** | **DateTime** | The date and time the key expires, in RFC 3339 format. Omit for a key that doesn&#39;t expire. | [optional] 
**security_enabled** | **boolean** | Whether AI Firewall security is enabled for requests made with this key. | [optional] [default to false]
**security_action** | **string** | The action AI Firewall takes when it detects a violation on a request made with this key. Only meaningful when `security_enabled` is `true`. | [optional] 
**rpm_limit** | **int** | The requests-per-minute limit for this key. Omit for no limit. | [optional] 
**tpm_limit** | **int** | The tokens-per-minute limit for this key. Omit for no limit. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


