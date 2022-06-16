# Fastly::Object::HealthcheckResponse

## Load the model package
```perl
use Fastly::Object::HealthcheckResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_interval** | **int** | How often to run the healthcheck in milliseconds. | [optional] 
**comment** | **string** | A freeform descriptive note. | [optional] 
**expected_response** | **int** | The status code expected from the host. | [optional] 
**host** | **string** | Which host to check. | [optional] 
**http_version** | **string** | Whether to use version 1.0 or 1.1 HTTP. | [optional] 
**initial** | **int** | When loading a config, the initial number of probes to be seen as OK. | [optional] 
**method** | **string** | Which HTTP method to use. | [optional] 
**name** | **string** | The name of the healthcheck. | [optional] 
**path** | **string** | The path to check. | [optional] 
**threshold** | **int** | How many healthchecks must succeed to be considered healthy. | [optional] 
**timeout** | **int** | Timeout in milliseconds. | [optional] 
**window** | **int** | The number of most recent healthcheck queries to keep for this healthcheck. | [optional] 
**service_id** | **string** | Alphanumeric string identifying the service. | [optional] 
**version** | **int** | Integer identifying a service version. | [optional] 
**created_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**deleted_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 
**updated_at** | **DateTime** | Date and time in ISO 8601 format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


