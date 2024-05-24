# WebService::Fastly::DiffApi

## Load the API package
```perl
use WebService::Fastly::Object::DiffApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**diff_service_versions**](DiffApi.md#diff_service_versions) | **GET** /service/{service_id}/diff/from/{from_version_id}/to/{to_version_id} | Diff two service versions


# **diff_service_versions**
> DiffResponse diff_service_versions(service_id => $service_id, from_version_id => $from_version_id, to_version_id => $to_version_id, format => $format)

Diff two service versions

Get diff between two versions.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DiffApi;
my $api_instance = WebService::Fastly::DiffApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $from_version_id = 1; # int | The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc).
my $to_version_id = 2; # int | The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as `from`.
my $format = 'text'; # string | Optional method to format the diff field.

eval {
    my $result = $api_instance->diff_service_versions(service_id => $service_id, from_version_id => $from_version_id, to_version_id => $to_version_id, format => $format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiffApi->diff_service_versions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **from_version_id** | **int**| The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc). | 
 **to_version_id** | **int**| The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as `from`. | 
 **format** | **string**| Optional method to format the diff field. | [optional] [default to &#39;text&#39;]

### Return type

[**DiffResponse**](DiffResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

