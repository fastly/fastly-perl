# WebService::Fastly::Object::ArcSession

## Load the model package
```perl
use WebService::Fastly::Object::ArcSession;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The unique identifier of the session. | [readonly] 
**virtual_key_id** | **string** | The ID of the virtual key used for this session. | 
**virtual_key_name** | **string** | The display name of the virtual key used for this session. | [optional] 
**model** | **string** | The AI model identifier used. | 
**provider** | **string** | The name of the provider connection that ultimately served the session. | 
**provider_connection_id** | **string** | The ID of the provider connection that ultimately served the session. | 
**primary_provider** | **string** | The ID of the provider connection originally requested, before any failover occurred. | [optional] 
**requests** | **int** | The number of requests made in this session. | 
**input_tokens** | **int** | The total input tokens consumed in this session. | 
**output_tokens** | **int** | The total output tokens generated in this session. | 
**violations** | **int** | The number of AI Firewall violations detected in this session. | 
**firewall_enabled** | **boolean** | Whether AI Firewall was enabled for this session&#39;s virtual key. | 
**firewall_outcome** | **string** | The outcome AI Firewall reached for this session. Present only when AI Firewall ran. | [optional] 
**firewall_stage** | **string** | The AI Firewall stage that produced the outcome (for example, the request or response stage). Present only when AI Firewall ran. | [optional] 
**firewall_policy** | **string** | The AI Firewall policy that was applied. Present only when AI Firewall ran. | [optional] 
**firewall_incomplete_reason** | **string** | Why AI Firewall inspection was incomplete, if applicable. Present only when AI Firewall ran and inspection didn&#39;t complete. | [optional] 
**created_at** | **DateTime** | The date and time the session was created, in RFC 3339 format. | [readonly] 
**updated_at** | **DateTime** | The date and time the session was last updated, in RFC 3339 format. | [readonly] 
**logs** | [**ARRAY[ArcSessionLogEntry]**](ArcSessionLogEntry.md) | The request and response pairs recorded for this session. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


