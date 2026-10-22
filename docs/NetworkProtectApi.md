# WebService::Fastly::NetworkProtectApi

## Load the API package
```perl
use WebService::Fastly::Object::NetworkProtectApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_network_protect_endpoint**](NetworkProtectApi.md#create_network_protect_endpoint) | **POST** /network-protect/v1/endpoints | Create a Network Protect endpoint
[**create_network_protect_network**](NetworkProtectApi.md#create_network_protect_network) | **POST** /network-protect/v1/networks | Create a Network Protect network
[**create_network_protect_prefix_list**](NetworkProtectApi.md#create_network_protect_prefix_list) | **POST** /network-protect/v1/prefix-lists | Create a Network Protect prefix list
[**create_network_protect_rule_set**](NetworkProtectApi.md#create_network_protect_rule_set) | **POST** /network-protect/v1/rule-sets | Create a Network Protect rule set
[**delete_network_protect_endpoint**](NetworkProtectApi.md#delete_network_protect_endpoint) | **DELETE** /network-protect/v1/endpoints/{endpoint_id} | Delete a Network Protect endpoint
[**delete_network_protect_network**](NetworkProtectApi.md#delete_network_protect_network) | **DELETE** /network-protect/v1/networks/{network_id} | Delete a Network Protect network
[**delete_network_protect_prefix_list**](NetworkProtectApi.md#delete_network_protect_prefix_list) | **DELETE** /network-protect/v1/prefix-lists/{prefix_list_id} | Delete a Network Protect prefix list
[**delete_network_protect_rule_set**](NetworkProtectApi.md#delete_network_protect_rule_set) | **DELETE** /network-protect/v1/rule-sets/{rule_set_id} | Delete a Network Protect rule set
[**get_network_protect_endpoint**](NetworkProtectApi.md#get_network_protect_endpoint) | **GET** /network-protect/v1/endpoints/{endpoint_id} | Get a Network Protect endpoint
[**get_network_protect_network**](NetworkProtectApi.md#get_network_protect_network) | **GET** /network-protect/v1/networks/{network_id} | Get a Network Protect network
[**get_network_protect_prefix_list**](NetworkProtectApi.md#get_network_protect_prefix_list) | **GET** /network-protect/v1/prefix-lists/{prefix_list_id} | Get a Network Protect prefix list
[**get_network_protect_rule_set**](NetworkProtectApi.md#get_network_protect_rule_set) | **GET** /network-protect/v1/rule-sets/{rule_set_id} | Get a Network Protect rule set
[**list_network_protect_endpoints**](NetworkProtectApi.md#list_network_protect_endpoints) | **GET** /network-protect/v1/endpoints | List Network Protect endpoints
[**list_network_protect_networks**](NetworkProtectApi.md#list_network_protect_networks) | **GET** /network-protect/v1/networks | List Network Protect networks
[**list_network_protect_prefix_lists**](NetworkProtectApi.md#list_network_protect_prefix_lists) | **GET** /network-protect/v1/prefix-lists | List Network Protect prefix lists
[**list_network_protect_rule_sets**](NetworkProtectApi.md#list_network_protect_rule_sets) | **GET** /network-protect/v1/rule-sets | List Network Protect rule sets
[**update_network_protect_endpoint**](NetworkProtectApi.md#update_network_protect_endpoint) | **PATCH** /network-protect/v1/endpoints/{endpoint_id} | Update a Network Protect endpoint
[**update_network_protect_network**](NetworkProtectApi.md#update_network_protect_network) | **PATCH** /network-protect/v1/networks/{network_id} | Update a Network Protect network
[**update_network_protect_prefix_list**](NetworkProtectApi.md#update_network_protect_prefix_list) | **PATCH** /network-protect/v1/prefix-lists/{prefix_list_id} | Update a Network Protect prefix list
[**update_network_protect_rule_set**](NetworkProtectApi.md#update_network_protect_rule_set) | **PATCH** /network-protect/v1/rule-sets/{rule_set_id} | Update a Network Protect rule set


# **create_network_protect_endpoint**
> NetworkProtectEndpointResponse create_network_protect_endpoint(network_protect_endpoint_create => $network_protect_endpoint_create)

Create a Network Protect endpoint

Creates a GRE delivery destination. A new endpoint is not attached to a network until it is added to an endpoint policy.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_protect_endpoint_create = WebService::Fastly::Object::NetworkProtectEndpointCreate->new(); # NetworkProtectEndpointCreate | 

eval {
    my $result = $api_instance->create_network_protect_endpoint(network_protect_endpoint_create => $network_protect_endpoint_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->create_network_protect_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_protect_endpoint_create** | [**NetworkProtectEndpointCreate**](NetworkProtectEndpointCreate.md)|  | 

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_network_protect_network**
> NetworkProtectNetworkResponse create_network_protect_network(network_protect_network_create => $network_protect_network_create)

Create a Network Protect network

Registers customer-owned IP space for protection. The network starts with advertisement disabled and Fastly does not announce its prefix. Turn advertisement on after LOA and ROA authorization are ready. The create request cannot include advertise; sending it returns a `400 Bad Request` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_protect_network_create = WebService::Fastly::Object::NetworkProtectNetworkCreate->new(); # NetworkProtectNetworkCreate | 

eval {
    my $result = $api_instance->create_network_protect_network(network_protect_network_create => $network_protect_network_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->create_network_protect_network: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_protect_network_create** | [**NetworkProtectNetworkCreate**](NetworkProtectNetworkCreate.md)|  | 

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_network_protect_prefix_list**
> NetworkProtectPrefixListResponse create_network_protect_prefix_list(network_protect_prefix_list_create => $network_protect_prefix_list_create)

Create a Network Protect prefix list

Creates a typed list of addresses that rules can reference. The family is required and cannot be changed. The addresses list may remain empty.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_protect_prefix_list_create = WebService::Fastly::Object::NetworkProtectPrefixListCreate->new(); # NetworkProtectPrefixListCreate | 

eval {
    my $result = $api_instance->create_network_protect_prefix_list(network_protect_prefix_list_create => $network_protect_prefix_list_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->create_network_protect_prefix_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_protect_prefix_list_create** | [**NetworkProtectPrefixListCreate**](NetworkProtectPrefixListCreate.md)|  | 

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_network_protect_rule_set**
> NetworkProtectRuleSetResponse create_network_protect_rule_set(network_protect_rule_set_create => $network_protect_rule_set_create)

Create a Network Protect rule set

Creates an ordered rule set and stores its filtering intent. A rule set has at most 64 rules and uses the default action when no rule matches. Custom attachment and detachment are restricted in this release.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_protect_rule_set_create = WebService::Fastly::Object::NetworkProtectRuleSetCreate->new(); # NetworkProtectRuleSetCreate | 

eval {
    my $result = $api_instance->create_network_protect_rule_set(network_protect_rule_set_create => $network_protect_rule_set_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->create_network_protect_rule_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_protect_rule_set_create** | [**NetworkProtectRuleSetCreate**](NetworkProtectRuleSetCreate.md)|  | 

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_network_protect_endpoint**
> delete_network_protect_endpoint(endpoint_id => $endpoint_id)

Delete a Network Protect endpoint

Deletes an endpoint. The endpoint must first be removed from every network policy; active references return a `409 Conflict` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $endpoint_id = DBOEWyMXebAir5qwjWEwK1; # string | Unique identifier of the Network Protect endpoint.

eval {
    $api_instance->delete_network_protect_endpoint(endpoint_id => $endpoint_id);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->delete_network_protect_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpoint_id** | **string**| Unique identifier of the Network Protect endpoint. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_network_protect_network**
> delete_network_protect_network(network_id => $network_id)

Delete a Network Protect network

Deletes a network and stops its advertisement and filtering. Endpoints and rule sets used by the network are not deleted.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_id = an7NWnhOjjOkwSNvrwphTd; # string | Unique identifier of the Network Protect network.

eval {
    $api_instance->delete_network_protect_network(network_id => $network_id);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->delete_network_protect_network: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **string**| Unique identifier of the Network Protect network. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_network_protect_prefix_list**
> delete_network_protect_prefix_list(prefix_list_id => $prefix_list_id)

Delete a Network Protect prefix list

Deletes a prefix list. Active rule references must be removed first; referenced lists return a `409 Conflict` error. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $prefix_list_id = QoavyX1BHOMGQm2zmVyEbS; # string | Unique identifier of the Network Protect prefix list.

eval {
    $api_instance->delete_network_protect_prefix_list(prefix_list_id => $prefix_list_id);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->delete_network_protect_prefix_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix_list_id** | **string**| Unique identifier of the Network Protect prefix list. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_network_protect_rule_set**
> delete_network_protect_rule_set(rule_set_id => $rule_set_id)

Delete a Network Protect rule set

Deletes a rule set. Attached rule sets cannot be deleted and return a `409 Conflict` error until their references are removed.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rule_set_id = Z4xQoBznwNb5GJfdJbp58Y; # string | Unique identifier of the Network Protect rule set.

eval {
    $api_instance->delete_network_protect_rule_set(rule_set_id => $rule_set_id);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->delete_network_protect_rule_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_set_id** | **string**| Unique identifier of the Network Protect rule set. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_network_protect_endpoint**
> NetworkProtectEndpointResponse get_network_protect_endpoint(endpoint_id => $endpoint_id)

Get a Network Protect endpoint

Retrieves a single endpoint by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $endpoint_id = DBOEWyMXebAir5qwjWEwK1; # string | Unique identifier of the Network Protect endpoint.

eval {
    my $result = $api_instance->get_network_protect_endpoint(endpoint_id => $endpoint_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->get_network_protect_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpoint_id** | **string**| Unique identifier of the Network Protect endpoint. | 

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_network_protect_network**
> NetworkProtectNetworkResponse get_network_protect_network(network_id => $network_id)

Get a Network Protect network

Retrieves a single network by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_id = an7NWnhOjjOkwSNvrwphTd; # string | Unique identifier of the Network Protect network.

eval {
    my $result = $api_instance->get_network_protect_network(network_id => $network_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->get_network_protect_network: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **string**| Unique identifier of the Network Protect network. | 

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_network_protect_prefix_list**
> NetworkProtectPrefixListResponse get_network_protect_prefix_list(prefix_list_id => $prefix_list_id)

Get a Network Protect prefix list

Retrieves a single prefix list by its identifier. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $prefix_list_id = QoavyX1BHOMGQm2zmVyEbS; # string | Unique identifier of the Network Protect prefix list.

eval {
    my $result = $api_instance->get_network_protect_prefix_list(prefix_list_id => $prefix_list_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->get_network_protect_prefix_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix_list_id** | **string**| Unique identifier of the Network Protect prefix list. | 

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_network_protect_rule_set**
> NetworkProtectRuleSetResponse get_network_protect_rule_set(rule_set_id => $rule_set_id)

Get a Network Protect rule set

Retrieves a single rule set with rules in evaluation order.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rule_set_id = Z4xQoBznwNb5GJfdJbp58Y; # string | Unique identifier of the Network Protect rule set.

eval {
    my $result = $api_instance->get_network_protect_rule_set(rule_set_id => $rule_set_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->get_network_protect_rule_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_set_id** | **string**| Unique identifier of the Network Protect rule set. | 

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_network_protect_endpoints**
> NetworkProtectEndpointsResponse list_network_protect_endpoints(limit => $limit, cursor => $cursor)

List Network Protect endpoints

Lists the customer's GRE delivery endpoints in ascending ID order. The response is cursor-paginated and includes the effective page limit.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $limit = 100; # int | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
my $cursor = network-cursor-next; # string | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.

eval {
    my $result = $api_instance->list_network_protect_endpoints(limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->list_network_protect_endpoints: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional] [default to 100]
 **cursor** | **string**| Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] 

### Return type

[**NetworkProtectEndpointsResponse**](NetworkProtectEndpointsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_network_protect_networks**
> NetworkProtectNetworksResponse list_network_protect_networks(limit => $limit, cursor => $cursor)

List Network Protect networks

Lists the customer's networks in ascending ID order. The response is cursor-paginated and includes the effective page limit.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $limit = 100; # int | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
my $cursor = network-cursor-next; # string | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.

eval {
    my $result = $api_instance->list_network_protect_networks(limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->list_network_protect_networks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional] [default to 100]
 **cursor** | **string**| Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] 

### Return type

[**NetworkProtectNetworksResponse**](NetworkProtectNetworksResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_network_protect_prefix_lists**
> NetworkProtectPrefixListsResponse list_network_protect_prefix_lists(limit => $limit, cursor => $cursor)

List Network Protect prefix lists

Lists prefix lists in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000. Invalid limits return a `400 Bad Request` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $limit = 100; # int | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
my $cursor = network-cursor-next; # string | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.

eval {
    my $result = $api_instance->list_network_protect_prefix_lists(limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->list_network_protect_prefix_lists: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional] [default to 100]
 **cursor** | **string**| Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] 

### Return type

[**NetworkProtectPrefixListsResponse**](NetworkProtectPrefixListsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_network_protect_rule_sets**
> NetworkProtectRuleSetsResponse list_network_protect_rule_sets(limit => $limit, cursor => $cursor)

List Network Protect rule sets

Lists rule sets in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000; invalid limits return a `400 Bad Request` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $limit = 100; # int | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
my $cursor = network-cursor-next; # string | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.

eval {
    my $result = $api_instance->list_network_protect_rule_sets(limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->list_network_protect_rule_sets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional] [default to 100]
 **cursor** | **string**| Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] 

### Return type

[**NetworkProtectRuleSetsResponse**](NetworkProtectRuleSetsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_network_protect_endpoint**
> NetworkProtectEndpointResponse update_network_protect_endpoint(endpoint_id => $endpoint_id, network_protect_endpoint_update => $network_protect_endpoint_update)

Update a Network Protect endpoint

Updates an endpoint. Omitted fields remain unchanged. The IP address cannot be changed; create a new endpoint if the destination changes.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $endpoint_id = DBOEWyMXebAir5qwjWEwK1; # string | Unique identifier of the Network Protect endpoint.
my $network_protect_endpoint_update = WebService::Fastly::Object::NetworkProtectEndpointUpdate->new(); # NetworkProtectEndpointUpdate | 

eval {
    my $result = $api_instance->update_network_protect_endpoint(endpoint_id => $endpoint_id, network_protect_endpoint_update => $network_protect_endpoint_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->update_network_protect_endpoint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpoint_id** | **string**| Unique identifier of the Network Protect endpoint. | 
 **network_protect_endpoint_update** | [**NetworkProtectEndpointUpdate**](NetworkProtectEndpointUpdate.md)|  | 

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_network_protect_network**
> NetworkProtectNetworkResponse update_network_protect_network(network_id => $network_id, network_protect_network_update => $network_protect_network_update)

Update a Network Protect network

Updates a network. Omitted fields remain unchanged. The prefix cannot be changed. Sending `endpoint_policies` replaces the complete policy list; an empty array removes every policy. Advertisement is desired state. Enabling it requires an approved LOA, a valid ROA, and a ready default-region delivery policy. A readiness failure returns a `409 Conflict` error.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $network_id = an7NWnhOjjOkwSNvrwphTd; # string | Unique identifier of the Network Protect network.
my $network_protect_network_update = WebService::Fastly::Object::NetworkProtectNetworkUpdate->new(); # NetworkProtectNetworkUpdate | 

eval {
    my $result = $api_instance->update_network_protect_network(network_id => $network_id, network_protect_network_update => $network_protect_network_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->update_network_protect_network: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **string**| Unique identifier of the Network Protect network. | 
 **network_protect_network_update** | [**NetworkProtectNetworkUpdate**](NetworkProtectNetworkUpdate.md)|  | 

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_network_protect_prefix_list**
> NetworkProtectPrefixListResponse update_network_protect_prefix_list(prefix_list_id => $prefix_list_id, network_protect_prefix_list_update => $network_protect_prefix_list_update)

Update a Network Protect prefix list

Updates a prefix list. The family cannot be changed. Sending addresses replaces the complete list; an empty array clears it when no active source-list restriction applies. Addresses are canonicalized, deduplicated, and sorted by the backend.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $prefix_list_id = QoavyX1BHOMGQm2zmVyEbS; # string | Unique identifier of the Network Protect prefix list.
my $network_protect_prefix_list_update = WebService::Fastly::Object::NetworkProtectPrefixListUpdate->new(); # NetworkProtectPrefixListUpdate | 

eval {
    my $result = $api_instance->update_network_protect_prefix_list(prefix_list_id => $prefix_list_id, network_protect_prefix_list_update => $network_protect_prefix_list_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->update_network_protect_prefix_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix_list_id** | **string**| Unique identifier of the Network Protect prefix list. | 
 **network_protect_prefix_list_update** | [**NetworkProtectPrefixListUpdate**](NetworkProtectPrefixListUpdate.md)|  | 

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_network_protect_rule_set**
> NetworkProtectRuleSetResponse update_network_protect_rule_set(rule_set_id => $rule_set_id, network_protect_rule_set_update => $network_protect_rule_set_update)

Update a Network Protect rule set

Updates a rule set. Omitted fields remain unchanged. Sending rules replaces the complete ordered list; an empty array removes every rule. Custom attachment and detachment remain restricted in this release.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::NetworkProtectApi;
my $api_instance = WebService::Fastly::NetworkProtectApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $rule_set_id = Z4xQoBznwNb5GJfdJbp58Y; # string | Unique identifier of the Network Protect rule set.
my $network_protect_rule_set_update = WebService::Fastly::Object::NetworkProtectRuleSetUpdate->new(); # NetworkProtectRuleSetUpdate | 

eval {
    my $result = $api_instance->update_network_protect_rule_set(rule_set_id => $rule_set_id, network_protect_rule_set_update => $network_protect_rule_set_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NetworkProtectApi->update_network_protect_rule_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_set_id** | **string**| Unique identifier of the Network Protect rule set. | 
 **network_protect_rule_set_update** | [**NetworkProtectRuleSetUpdate**](NetworkProtectRuleSetUpdate.md)|  | 

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

