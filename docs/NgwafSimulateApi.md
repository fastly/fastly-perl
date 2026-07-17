# WebService::Fastly::NgwafSimulateApi

## Load the API package
```perl
use WebService::Fastly::Object::NgwafSimulateApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ngwaf_simulate_waf_request**](NgwafSimulateApi.md#ngwaf_simulate_waf_request) | **POST** /ngwaf/v1/workspaces/{workspace_id}/simulate | Simulate a WAF request


# **ngwaf_simulate_waf_request**
> WafSimulateResponse ngwaf_simulate_waf_request(workspace_id => $workspace_id, waf_simulate_request => $waf_simulate_request)

Simulate a WAF request

Simulates a request through the workspace's WAF configuration and returns the WAF response code and any signals that would be detected. The operation is stateless — no simulation data is persisted. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NgwafSimulateApi;
my $api_instance = WebService::Fastly::NgwafSimulateApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the workspace.
my $waf_simulate_request = WebService::Fastly::Object::WafSimulateRequest->new(); # WafSimulateRequest | 

eval {
    my $result = $api_instance->ngwaf_simulate_waf_request(workspace_id => $workspace_id, waf_simulate_request => $waf_simulate_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NgwafSimulateApi->ngwaf_simulate_waf_request: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the workspace. | 
 **waf_simulate_request** | [**WafSimulateRequest**](WafSimulateRequest.md)|  | 

### Return type

[**WafSimulateResponse**](WafSimulateResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

