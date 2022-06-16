# Fastly::Object::LoggingSftpAllOf

## Load the model package
```perl
use Fastly::Object::LoggingSftpAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **string** | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
**path** | **string** | The path to upload logs to. | [optional] 
**port** | [**AnyType**](.md) | The port number. | [optional] 
**public_key** | **string** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional] 
**secret_key** | **string** | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] 
**ssh_known_hosts** | **string** | A list of host keys for all hosts we can connect to over SFTP. | [optional] 
**user** | **string** | The username for the server. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


