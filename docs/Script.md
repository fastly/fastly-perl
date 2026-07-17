# WebService::Fastly::Object::Script

## Load the model package
```perl
use WebService::Fastly::Object::Script;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique script identifier | [optional] 
**page_id** | **string** | Parent page ID | [optional] 
**source** | **string** | Script source (inline or external URL) | [optional] 
**urls** | **ARRAY[string]** | URLs where this script was observed | [optional] 
**first_seen_at** | **DateTime** |  | [optional] 
**last_seen_at** | **DateTime** |  | [optional] 
**justification** | **string** | Reason for authorization decision | [optional] 
**current_hash** | **string** | Current script content hash | [optional] 
**authorized_hash** | **string** | Hash of authorized script content | [optional] 
**authorization_status** | **string** | Script authorization status | [optional] 
**authorized_at** | **DateTime** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


