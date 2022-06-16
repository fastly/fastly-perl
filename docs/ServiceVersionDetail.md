# Fastly::Object::ServiceVersionDetail

## Load the model package
```perl
use Fastly::Object::ServiceVersionDetail;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether this is the active version or not. | [optional] [default to false]
**comment** | **string** | A freeform descriptive note. | [optional] 
**deployed** | **boolean** | Unused at this time. | [optional] 
**locked** | **boolean** | Whether this version is locked or not. Objects can not be added or edited on locked versions. | [optional] [default to false]
**number** | **int** | The number of this version. | [optional] [readonly] 
**staging** | **boolean** | Unused at this time. | [optional] [default to false]
**testing** | **boolean** | Unused at this time. | [optional] [default to false]
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**service_id** | **string** |  | [optional] [readonly] 
**backends** | [**ARRAY[BackendResponse]**](BackendResponse.md) | List of backends associated to this service. | [optional] 
**cache_settings** | [**ARRAY[CacheSettingResponse]**](CacheSettingResponse.md) | List of cache settings associated to this service. | [optional] 
**conditions** | [**ARRAY[ConditionResponse]**](ConditionResponse.md) | List of conditions associated to this service. | [optional] 
**directors** | [**ARRAY[Director]**](Director.md) | List of directors associated to this service. | [optional] 
**domains** | [**ARRAY[DomainResponse]**](DomainResponse.md) | List of domains associated to this service. | [optional] 
**gzips** | [**ARRAY[GzipResponse]**](GzipResponse.md) | List of gzip rules associated to this service. | [optional] 
**headers** | [**ARRAY[HeaderResponse]**](HeaderResponse.md) | List of headers associated to this service. | [optional] 
**healthchecks** | [**ARRAY[HealthcheckResponse]**](HealthcheckResponse.md) | List of healthchecks associated to this service. | [optional] 
**request_settings** | [**ARRAY[RequestSettingsResponse]**](RequestSettingsResponse.md) | List of request settings for this service. | [optional] 
**response_objects** | [**ARRAY[ResponseObjectResponse]**](ResponseObjectResponse.md) | List of response objects for this service. | [optional] 
**settings** | [**VersionDetailSettings**](VersionDetailSettings.md) |  | [optional] 
**snippets** | [**ARRAY[SchemasSnippetResponse]**](SchemasSnippetResponse.md) | List of VCL snippets for this service. | [optional] 
**vcls** | [**ARRAY[SchemasVclResponse]**](SchemasVclResponse.md) | List of VCL files for this service. | [optional] 
**wordpress** | **ARRAY[object]** | A list of Wordpress rules with this service. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


