# WebService::Fastly::Object::LoggingKafkaAdditional

## Load the model package
```perl
use WebService::Fastly::Object::LoggingKafkaAdditional;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **string** | The Kafka topic to send logs to. Required. | [optional] 
**brokers** | **string** | A comma-separated list of IP addresses or hostnames of Kafka brokers. Required. | [optional] 
**compression_codec** | **string** | The codec used for compression of your logs. | [optional] 
**required_acks** | **int** | The number of acknowledgements a leader must receive before a write is considered successful. | [optional] [default to 1]
**request_max_bytes** | **int** | The maximum number of bytes sent in one request. Defaults `0` (no limit). | [optional] [default to 0]
**parse_log_keyvals** | **boolean** | Enables parsing of key&#x3D;value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers). | [optional] 
**auth_method** | **string** | SASL authentication method. | [optional] 
**user** | **string** | SASL user. | [optional] 
**password** | **string** | SASL password. | [optional] 
**use_tls** | [**LoggingUseTlsString**](LoggingUseTlsString.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


