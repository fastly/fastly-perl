# WebService::Fastly::NgwafReportsApi

## Load the API package
```perl
use WebService::Fastly::Object::NgwafReportsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_attacks_report**](NgwafReportsApi.md#get_attacks_report) | **GET** /ngwaf/v1/reports/attacks | Get attacks report
[**get_signals_report**](NgwafReportsApi.md#get_signals_report) | **GET** /ngwaf/v1/reports/signals | Get signals report


# **get_attacks_report**
> ListAttackReport get_attacks_report(from => $from, to => $to)

Get attacks report

Get attacks report

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NgwafReportsApi;
my $api_instance = WebService::Fastly::NgwafReportsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2019-08-20T18:07:33Z; # DateTime | The start of a time range in RFC 3339 format.
my $to = 2019-08-21T18:07:33Z; # DateTime | The end of a time range in RFC 3339 format. Defaults to the current time.

eval {
    my $result = $api_instance->get_attacks_report(from => $from, to => $to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NgwafReportsApi->get_attacks_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| The start of a time range in RFC 3339 format. | 
 **to** | **DateTime**| The end of a time range in RFC 3339 format. Defaults to the current time. | [optional] 

### Return type

[**ListAttackReport**](ListAttackReport.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_signals_report**
> ListSignalReport get_signals_report(from => $from, to => $to, signal_type => $signal_type)

Get signals report

Get signals report

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NgwafReportsApi;
my $api_instance = WebService::Fastly::NgwafReportsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $from = 2019-08-20T18:07:33Z; # DateTime | The start of a time range in RFC 3339 format.
my $to = 2019-08-21T18:07:33Z; # DateTime | The end of a time range in RFC 3339 format. Defaults to the current time.
my $signal_type = all; # string | The type of signal

eval {
    my $result = $api_instance->get_signals_report(from => $from, to => $to, signal_type => $signal_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NgwafReportsApi->get_signals_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| The start of a time range in RFC 3339 format. | 
 **to** | **DateTime**| The end of a time range in RFC 3339 format. Defaults to the current time. | [optional] 
 **signal_type** | **string**| The type of signal | [optional] 

### Return type

[**ListSignalReport**](ListSignalReport.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

