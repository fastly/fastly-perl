# WebService::Fastly::NgwafAgentKeysApi

## Load the API package
```perl
use WebService::Fastly::Object::NgwafAgentKeysApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ngwaf_list_agent_keys**](NgwafAgentKeysApi.md#ngwaf_list_agent_keys) | **GET** /ngwaf/v1/workspaces/{workspace_id}/agent-keys | List agent keys for a workspace


# **ngwaf_list_agent_keys**
> InlineResponse20019 ngwaf_list_agent_keys(workspace_id => $workspace_id)

List agent keys for a workspace

List agent keys for a workspace.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NgwafAgentKeysApi;
my $api_instance = WebService::Fastly::NgwafAgentKeysApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the workspace.

eval {
    my $result = $api_instance->ngwaf_list_agent_keys(workspace_id => $workspace_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NgwafAgentKeysApi->ngwaf_list_agent_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the workspace. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

