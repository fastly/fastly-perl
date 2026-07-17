# WebService::Fastly::DmRoutingConfigsApi

## Load the API package
```perl
use WebService::Fastly::Object::DmRoutingConfigsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**activate_dm_routing_config_draft**](DmRoutingConfigsApi.md#activate_dm_routing_config_draft) | **POST** /domain-management/v1/routing-configs/{config_id}/activate | Activate the draft
[**create_dm_routing_config**](DmRoutingConfigsApi.md#create_dm_routing_config) | **POST** /domain-management/v1/routing-configs | Create a routing config
[**create_dm_routing_config_path**](DmRoutingConfigsApi.md#create_dm_routing_config_path) | **POST** /domain-management/v1/routing-configs/{config_id}/paths | Create a path
[**create_dm_routing_config_rule**](DmRoutingConfigsApi.md#create_dm_routing_config_rule) | **POST** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules | Create a rule
[**deactivate_dm_routing_config**](DmRoutingConfigsApi.md#deactivate_dm_routing_config) | **POST** /domain-management/v1/routing-configs/{config_id}/deactivate | Deactivate a routing config
[**delete_dm_routing_config**](DmRoutingConfigsApi.md#delete_dm_routing_config) | **DELETE** /domain-management/v1/routing-configs/{config_id} | Delete a routing config
[**delete_dm_routing_config_inactive_versions**](DmRoutingConfigsApi.md#delete_dm_routing_config_inactive_versions) | **DELETE** /domain-management/v1/routing-configs/{config_id}/versions/inactive | Delete inactive versions
[**delete_dm_routing_config_path**](DmRoutingConfigsApi.md#delete_dm_routing_config_path) | **DELETE** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Delete a path
[**delete_dm_routing_config_rule**](DmRoutingConfigsApi.md#delete_dm_routing_config_rule) | **DELETE** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Delete a rule
[**discard_dm_routing_config_draft**](DmRoutingConfigsApi.md#discard_dm_routing_config_draft) | **DELETE** /domain-management/v1/routing-configs/{config_id}/draft | Discard the draft
[**get_dm_routing_config**](DmRoutingConfigsApi.md#get_dm_routing_config) | **GET** /domain-management/v1/routing-configs/{config_id} | Get a routing config
[**get_dm_routing_config_draft_diff**](DmRoutingConfigsApi.md#get_dm_routing_config_draft_diff) | **GET** /domain-management/v1/routing-configs/{config_id}/draft/diff | Get the draft diff
[**get_dm_routing_config_path**](DmRoutingConfigsApi.md#get_dm_routing_config_path) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Get a path
[**get_dm_routing_config_rule**](DmRoutingConfigsApi.md#get_dm_routing_config_rule) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Get a rule
[**list_dm_routing_config_paths**](DmRoutingConfigsApi.md#list_dm_routing_config_paths) | **GET** /domain-management/v1/routing-configs/{config_id}/paths | List paths
[**list_dm_routing_config_rules**](DmRoutingConfigsApi.md#list_dm_routing_config_rules) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules | List rules
[**list_dm_routing_config_versions**](DmRoutingConfigsApi.md#list_dm_routing_config_versions) | **GET** /domain-management/v1/routing-configs/{config_id}/versions | List versions
[**list_dm_routing_configs**](DmRoutingConfigsApi.md#list_dm_routing_configs) | **GET** /domain-management/v1/routing-configs | List routing configs
[**reactivate_dm_routing_config_version**](DmRoutingConfigsApi.md#reactivate_dm_routing_config_version) | **POST** /domain-management/v1/routing-configs/{config_id}/versions/{version_id}/activate | Reactivate a version
[**update_dm_routing_config_draft**](DmRoutingConfigsApi.md#update_dm_routing_config_draft) | **PATCH** /domain-management/v1/routing-configs/{config_id}/draft | Update the draft
[**update_dm_routing_config_path**](DmRoutingConfigsApi.md#update_dm_routing_config_path) | **PATCH** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Update a path
[**update_dm_routing_config_rule**](DmRoutingConfigsApi.md#update_dm_routing_config_rule) | **PATCH** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Update a rule


# **activate_dm_routing_config_draft**
> RoutingConfigVersionResponse activate_dm_routing_config_draft(config_id => $config_id)

Activate the draft

Activate the current draft version. The previously active version, if any, becomes inactive but is retained in version history.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    my $result = $api_instance->activate_dm_routing_config_draft(config_id => $config_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->activate_dm_routing_config_draft: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_dm_routing_config**
> RoutingConfigResponse create_dm_routing_config(routing_config => $routing_config)

Create a routing config

Create a new routing config. An optional `initial_version` may be provided to seed the config with paths and rules in a single request, and may also be activated immediately.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $routing_config = WebService::Fastly::Object::RoutingConfig->new(); # RoutingConfig | 

eval {
    my $result = $api_instance->create_dm_routing_config(routing_config => $routing_config);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->create_dm_routing_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routing_config** | [**RoutingConfig**](RoutingConfig.md)|  | [optional] 

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_dm_routing_config_path**
> PathResponse create_dm_routing_config_path(config_id => $config_id, path_create => $path_create)

Create a path

Add a new path to the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_create = WebService::Fastly::Object::PathCreate->new(); # PathCreate | 

eval {
    my $result = $api_instance->create_dm_routing_config_path(config_id => $config_id, path_create => $path_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->create_dm_routing_config_path: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_create** | [**PathCreate**](PathCreate.md)|  | [optional] 

### Return type

[**PathResponse**](PathResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_dm_routing_config_rule**
> RuleResponse create_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_create => $rule_create)

Create a rule

Add a new rule to a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version. A rule with an empty `conditions` array is a default (catch-all) rule and there can be at most one default rule per path.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $rule_create = WebService::Fastly::Object::RuleCreate->new(); # RuleCreate | 

eval {
    my $result = $api_instance->create_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_create => $rule_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->create_dm_routing_config_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **rule_create** | [**RuleCreate**](RuleCreate.md)|  | [optional] 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_dm_routing_config**
> RoutingConfigResponse deactivate_dm_routing_config(config_id => $config_id)

Deactivate a routing config

Clear the active version designation. This is a bookkeeping operation only — it does not stop edge traffic. Minerva continues serving the last-activated version until the domain association is removed in Spotless. Only removing the routing config from the domain (via Spotless) triggers Neptune to drop the reference, which causes Minerva to stop fetching and eventually clean up the cached config. Idempotent: returns 200 even if already deactivated.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    my $result = $api_instance->deactivate_dm_routing_config(config_id => $config_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->deactivate_dm_routing_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dm_routing_config**
> delete_dm_routing_config(config_id => $config_id, force => $force)

Delete a routing config

Delete a routing config. By default, configs that have an active version cannot be deleted. Pass `force=true` to bypass the active-version check — this is destructive and will immediately stop traffic routing for any paths the config serves. The `force` parameter does **not** bypass the domain-association check; if domains are still associated, deletion is rejected with 409 regardless of `force`.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $force = false; # boolean | When `true`, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately.

eval {
    $api_instance->delete_dm_routing_config(config_id => $config_id, force => $force);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->delete_dm_routing_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **force** | **boolean**| When `true`, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dm_routing_config_inactive_versions**
> delete_dm_routing_config_inactive_versions(config_id => $config_id)

Delete inactive versions

Delete all inactive versions for a routing config. The currently active version, if any, is retained.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    $api_instance->delete_dm_routing_config_inactive_versions(config_id => $config_id);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->delete_dm_routing_config_inactive_versions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dm_routing_config_path**
> delete_dm_routing_config_path(config_id => $config_id, path_id => $path_id)

Delete a path

Delete a path from the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 

eval {
    $api_instance->delete_dm_routing_config_path(config_id => $config_id, path_id => $path_id);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->delete_dm_routing_config_path: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dm_routing_config_rule**
> delete_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id)

Delete a rule

Delete a rule from the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $rule_id = "rule_id_example"; # string | 

eval {
    $api_instance->delete_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->delete_dm_routing_config_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **rule_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discard_dm_routing_config_draft**
> discard_dm_routing_config_draft(config_id => $config_id)

Discard the draft

Delete the current draft version, reverting any unactivated changes.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    $api_instance->discard_dm_routing_config_draft(config_id => $config_id);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->discard_dm_routing_config_draft: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dm_routing_config**
> RoutingConfigResponse get_dm_routing_config(config_id => $config_id)

Get a routing config

Retrieve a single routing config by its identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    my $result = $api_instance->get_dm_routing_config(config_id => $config_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->get_dm_routing_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dm_routing_config_draft_diff**
> DraftDiff get_dm_routing_config_draft_diff(config_id => $config_id)

Get the draft diff

Compare the current draft version against the active version and return the paths and rules that have been added, modified, or deleted.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 

eval {
    my $result = $api_instance->get_dm_routing_config_draft_diff(config_id => $config_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->get_dm_routing_config_draft_diff: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 

### Return type

[**DraftDiff**](DraftDiff.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dm_routing_config_path**
> PathResponse get_dm_routing_config_path(config_id => $config_id, path_id => $path_id)

Get a path

Retrieve a single path by its stable identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 

eval {
    my $result = $api_instance->get_dm_routing_config_path(config_id => $config_id, path_id => $path_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->get_dm_routing_config_path: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 

### Return type

[**PathResponse**](PathResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dm_routing_config_rule**
> RuleResponse get_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id)

Get a rule

Retrieve a single rule by its stable identifier.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $rule_id = "rule_id_example"; # string | 

eval {
    my $result = $api_instance->get_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->get_dm_routing_config_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **rule_id** | **string**|  | 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dm_routing_config_paths**
> PathsResponse list_dm_routing_config_paths(config_id => $config_id, path => $path, match => $match, sort => $sort, cursor => $cursor, limit => $limit)

List paths

List paths for the config. Returns paths from the active version if one exists, otherwise from the draft.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path = "path_example"; # string | Filter results by path pattern. The match strategy is controlled by the `match` parameter.
my $match = 'exact'; # string | How to match the value of the `path` filter against existing path patterns. Has no effect unless `path` is also provided.
my $sort = '-created_at'; # string | The order in which to list the results.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.

eval {
    my $result = $api_instance->list_dm_routing_config_paths(config_id => $config_id, path => $path, match => $match, sort => $sort, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->list_dm_routing_config_paths: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path** | **string**| Filter results by path pattern. The match strategy is controlled by the `match` parameter. | [optional] 
 **match** | **string**| How to match the value of the `path` filter against existing path patterns. Has no effect unless `path` is also provided. | [optional] [default to &#39;exact&#39;]
 **sort** | **string**| The order in which to list the results. | [optional] [default to &#39;-created_at&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]

### Return type

[**PathsResponse**](PathsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dm_routing_config_rules**
> RulesResponse list_dm_routing_config_rules(config_id => $config_id, path_id => $path_id, sort => $sort, cursor => $cursor, limit => $limit)

List rules

List all rules for a path in evaluation order.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $sort = 'position'; # string | The order in which to list the results.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.

eval {
    my $result = $api_instance->list_dm_routing_config_rules(config_id => $config_id, path_id => $path_id, sort => $sort, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->list_dm_routing_config_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **sort** | **string**| The order in which to list the results. | [optional] [default to &#39;position&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]

### Return type

[**RulesResponse**](RulesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dm_routing_config_versions**
> VersionsResponse list_dm_routing_config_versions(config_id => $config_id, sort => $sort, cursor => $cursor, limit => $limit)

List versions

List all versions for a routing config.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $sort = '-activated_at'; # string | The order in which to list the results.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.

eval {
    my $result = $api_instance->list_dm_routing_config_versions(config_id => $config_id, sort => $sort, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->list_dm_routing_config_versions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **sort** | **string**| The order in which to list the results. | [optional] [default to &#39;-activated_at&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]

### Return type

[**VersionsResponse**](VersionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dm_routing_configs**
> RoutingConfigsResponse list_dm_routing_configs(state => $state, sort => $sort, cursor => $cursor, limit => $limit)

List routing configs

List all routing configs for the authenticated customer.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $state = [("null")]; # ARRAY[string] | Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. `?state=active,active-with-draft`). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state.
my $sort = '-created_at'; # string | The order in which to list the results.
my $cursor = "cursor_example"; # string | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
my $limit = 20; # int | Limit how many results are returned.

eval {
    my $result = $api_instance->list_dm_routing_configs(state => $state, sort => $sort, cursor => $cursor, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->list_dm_routing_configs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | [**ARRAY[string]**](string.md)| Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. `?state&#x3D;active,active-with-draft`). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state. | [optional] 
 **sort** | **string**| The order in which to list the results. | [optional] [default to &#39;-created_at&#39;]
 **cursor** | **string**| Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 20]

### Return type

[**RoutingConfigsResponse**](RoutingConfigsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactivate_dm_routing_config_version**
> RoutingConfigVersionResponse reactivate_dm_routing_config_version(config_id => $config_id, version_id => $version_id)

Reactivate a version

Reactivate a previously-active version. The currently active version, if any, becomes inactive but is retained in version history.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $version_id = "version_id_example"; # string | 

eval {
    my $result = $api_instance->reactivate_dm_routing_config_version(config_id => $config_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->reactivate_dm_routing_config_version: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **version_id** | **string**|  | 

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dm_routing_config_draft**
> RoutingConfigVersionResponse update_dm_routing_config_draft(config_id => $config_id, draft_update => $draft_update)

Update the draft

Update metadata on the draft version, such as its comment. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $draft_update = WebService::Fastly::Object::DraftUpdate->new(); # DraftUpdate | 

eval {
    my $result = $api_instance->update_dm_routing_config_draft(config_id => $config_id, draft_update => $draft_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->update_dm_routing_config_draft: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **draft_update** | [**DraftUpdate**](DraftUpdate.md)|  | [optional] 

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dm_routing_config_path**
> PathResponse update_dm_routing_config_path(config_id => $config_id, path_id => $path_id, path_update => $path_update)

Update a path

Update a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $path_update = WebService::Fastly::Object::PathUpdate->new(); # PathUpdate | 

eval {
    my $result = $api_instance->update_dm_routing_config_path(config_id => $config_id, path_id => $path_id, path_update => $path_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->update_dm_routing_config_path: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **path_update** | [**PathUpdate**](PathUpdate.md)|  | [optional] 

### Return type

[**PathResponse**](PathResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dm_routing_config_rule**
> RuleResponse update_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id, rule_update => $rule_update)

Update a rule

Update a rule on the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::DmRoutingConfigsApi;
my $api_instance = WebService::Fastly::DmRoutingConfigsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $config_id = "config_id_example"; # string | 
my $path_id = "path_id_example"; # string | 
my $rule_id = "rule_id_example"; # string | 
my $rule_update = WebService::Fastly::Object::RuleUpdate->new(); # RuleUpdate | 

eval {
    my $result = $api_instance->update_dm_routing_config_rule(config_id => $config_id, path_id => $path_id, rule_id => $rule_id, rule_update => $rule_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DmRoutingConfigsApi->update_dm_routing_config_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **string**|  | 
 **path_id** | **string**|  | 
 **rule_id** | **string**|  | 
 **rule_update** | [**RuleUpdate**](RuleUpdate.md)|  | [optional] 

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

