# WebService::Fastly::Object::WafSimulateResponse

## Load the model package
```perl
use WebService::Fastly::Object::WafSimulateResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**waf_response** | **int** | The HTTP status code the WAF would return for the simulated request (e.g., `200` for allowed, `406` for blocked). | 
**signals** | [**ARRAY[WafSimulateSignal]**](WafSimulateSignal.md) | List of signals detected by the WAF during simulation. Empty array when no signals are detected. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


