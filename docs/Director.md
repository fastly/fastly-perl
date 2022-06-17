# WebService::Fastly::Object::Director

## Load the model package
```perl
use WebService::Fastly::Object::Director;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backends** | [**ARRAY[Backend]**](Backend.md) | List of backends associated to a director. | [optional] 
**capacity** | **int** | Unused. | [optional] 
**comment** | **string** | A freeform descriptive note. | [optional] 
**name** | **string** | Name for the Director. | [optional] 
**quorum** | **int** | The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`. | [optional] [default to 75]
**shield** | **string** | Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional] [default to &#39;null&#39;]
**type** | **int** | What type of load balance group to use. | [optional] [default to 1]
**retries** | **int** | How many backends to search if it fails. | [optional] [default to 5]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


