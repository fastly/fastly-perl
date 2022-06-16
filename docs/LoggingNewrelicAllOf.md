# Fastly::Object::LoggingNewrelicAllOf

## Load the model package
```perl
use Fastly::Object::LoggingNewrelicAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**format** | [**AnyType**](.md) | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional] 
**token** | **string** | The Insert API key from the Account page of your New Relic account. Required. | [optional] 
**region** | **string** | The region to which to stream logs. | [optional] [default to &#39;US&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


