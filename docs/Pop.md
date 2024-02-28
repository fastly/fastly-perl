# WebService::Fastly::Object::Pop

## Load the model package
```perl
use WebService::Fastly::Object::Pop;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **string** | the three-letter code for the [POP](https://www.fastly.com/documentation/learning/concepts/pop/) | 
**name** | **string** | the name of the POP | 
**group** | **string** |  | 
**region** | **string** |  | 
**stats_region** | **string** | the region used for stats reporting | 
**billing_region** | **string** | the region used for billing | 
**coordinates** | [**PopCoordinates**](PopCoordinates.md) |  | [optional] 
**shield** | **string** | the name of the [shield code](https://www.fastly.com/documentation/learning/concepts/shielding/#choosing-a-shield-location) if this POP is suitable for shielding | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


