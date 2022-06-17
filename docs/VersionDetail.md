# WebService::Fastly::Object::VersionDetail

## Load the model package
```perl
use WebService::Fastly::Object::VersionDetail;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
**settings** | [**Settings**](Settings.md) | List of default settings for this service. | [optional] 
**snippets** | [**ARRAY[SchemasSnippetResponse]**](SchemasSnippetResponse.md) | List of VCL snippets for this service. | [optional] 
**vcls** | [**ARRAY[SchemasVclResponse]**](SchemasVclResponse.md) | List of VCL files for this service. | [optional] 
**wordpress** | **ARRAY[object]** | A list of Wordpress rules with this service. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


