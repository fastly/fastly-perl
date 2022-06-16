# Fastly::Object::ApexRedirect

## Load the model package
```perl
use Fastly::Object::ApexRedirect;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**status_code** | **int** | HTTP status code used to redirect the client. | [optional] 
**domains** | **ARRAY[string]** | Array of apex domains that should redirect to their WWW subdomain. | [optional] 
**feature_revision** | **int** | Revision number of the apex redirect feature implementation. Defaults to the most recent revision. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


