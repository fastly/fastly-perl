# Fastly::Object::LoggingFtpAllOf

## Load the model package
```perl
use Fastly::Object::LoggingFtpAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **string** | An hostname or IPv4 address. | [optional] 
**hostname** | **string** | Hostname used. | [optional] 
**ipv4** | **string** | IPv4 address of the host. | [optional] 
**password** | **string** | The password for the server. For anonymous use an email address. | [optional] 
**path** | **string** | The path to upload log files to. If the path ends in `/` then it is treated as a directory. | [optional] 
**port** | **int** | The port number. | [optional] [default to 21]
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] 
**user** | **string** | The username for the server. Can be anonymous. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


