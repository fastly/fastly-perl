# Fastly::VclDiffApi

## Load the API package
```perl
use Fastly::Object::VclDiffApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vcl_diff_service_versions**](VclDiffApi.md#vcl_diff_service_versions) | **GET** /service/{service_id}/vcl/diff/from/{from_version_id}/to/{to_version_id} | Get a comparison of the VCL changes between two service versions


# **vcl_diff_service_versions**
> VclDiff vcl_diff_service_versions(service_id => $service_id, from_version_id => $from_version_id, to_version_id => $to_version_id, format => $format)

Get a comparison of the VCL changes between two service versions

Get a comparison of the VCL changes between two service versions.

### Example
```perl
use Data::Dumper;
use Fastly::VclDiffApi;
my $api_instance = Fastly::VclDiffApi->new(

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
    my $result = $api_instance->vcl_diff_service_versions(service_id => $service_id, from_version_id => $from_version_id, to_version_id => $to_version_id, format => $format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VclDiffApi->vcl_diff_service_versions: $@\n";
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

[**VclDiff**](VclDiff.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

