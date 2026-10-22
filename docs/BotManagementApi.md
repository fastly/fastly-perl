# WebService::Fastly::BotManagementApi

## Load the API package
```perl
use WebService::Fastly::Object::BotManagementApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**bot_management_get_bot**](BotManagementApi.md#bot_management_get_bot) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id} | Get a bot
[**bot_management_get_category**](BotManagementApi.md#bot_management_get_category) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id} | Get a category
[**bot_management_get_workspace**](BotManagementApi.md#bot_management_get_workspace) | **GET** /bot-management/v1/workspaces/{workspace_id} | Get a workspace
[**bot_management_list_bots**](BotManagementApi.md#bot_management_list_bots) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/bots | List all bots in a workspace
[**bot_management_list_categories**](BotManagementApi.md#bot_management_list_categories) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories | List categories
[**bot_management_list_category_bots**](BotManagementApi.md#bot_management_list_category_bots) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots | List bots in a category
[**bot_management_list_workspaces**](BotManagementApi.md#bot_management_list_workspaces) | **GET** /bot-management/v1/workspaces | List workspaces
[**bot_management_update_bot**](BotManagementApi.md#bot_management_update_bot) | **PATCH** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id} | Set a bot action
[**bot_management_update_category**](BotManagementApi.md#bot_management_update_category) | **PATCH** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id} | Set a category action
[**bot_management_update_workspace**](BotManagementApi.md#bot_management_update_workspace) | **PATCH** /bot-management/v1/workspaces/{workspace_id} | Update a workspace


# **bot_management_get_bot**
> BotManagementBotResponse bot_management_get_bot(workspace_id => $workspace_id, category_id => $category_id, bot_id => $bot_id)

Get a bot

Get the attributes of a bot in a category.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $category_id = ai_crawlers; # string | The ID of the bot category.
my $bot_id = gptbot; # string | The ID of the bot.

eval {
    my $result = $api_instance->bot_management_get_bot(workspace_id => $workspace_id, category_id => $category_id, bot_id => $bot_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_get_bot: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **category_id** | **string**| The ID of the bot category. | 
 **bot_id** | **string**| The ID of the bot. | 

### Return type

[**BotManagementBotResponse**](BotManagementBotResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_get_category**
> BotManagementCategoryResponse bot_management_get_category(workspace_id => $workspace_id, category_id => $category_id)

Get a category

Get the attributes of a bot category.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $category_id = ai_crawlers; # string | The ID of the bot category.

eval {
    my $result = $api_instance->bot_management_get_category(workspace_id => $workspace_id, category_id => $category_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_get_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **category_id** | **string**| The ID of the bot category. | 

### Return type

[**BotManagementCategoryResponse**](BotManagementCategoryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_get_workspace**
> BotManagementWorkspaceResponse bot_management_get_workspace(workspace_id => $workspace_id)

Get a workspace

Retrieve a bot management workspace.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.

eval {
    my $result = $api_instance->bot_management_get_workspace(workspace_id => $workspace_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_get_workspace: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 

### Return type

[**BotManagementWorkspaceResponse**](BotManagementWorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_list_bots**
> BotManagementWorkspaceBotsResponse bot_management_list_bots(workspace_id => $workspace_id, limit => $limit, cursor => $cursor)

List all bots in a workspace

List all bots in a workspace's policy across all categories.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $limit = 100; # int | Limit how many results are returned.
my $cursor = MTAwOjA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.

eval {
    my $result = $api_instance->bot_management_list_bots(workspace_id => $workspace_id, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_list_bots: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] 

### Return type

[**BotManagementWorkspaceBotsResponse**](BotManagementWorkspaceBotsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_list_categories**
> BotManagementCategoriesResponse bot_management_list_categories(workspace_id => $workspace_id, limit => $limit, cursor => $cursor)

List categories

List all bot categories in a workspace's policy. Each category has an action that applies to every bot in the category. To list the bots themselves, use [list all bots in a workspace](#bot-management-list-bots) or [list bots in a category](#bot-management-list-category-bots).

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $limit = 100; # int | Limit how many results are returned.
my $cursor = MTAwOjA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.

eval {
    my $result = $api_instance->bot_management_list_categories(workspace_id => $workspace_id, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_list_categories: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] 

### Return type

[**BotManagementCategoriesResponse**](BotManagementCategoriesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_list_category_bots**
> BotManagementBotsResponse bot_management_list_category_bots(workspace_id => $workspace_id, category_id => $category_id, limit => $limit, cursor => $cursor)

List bots in a category

List all bots in a bot category.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $category_id = ai_crawlers; # string | The ID of the bot category.
my $limit = 100; # int | Limit how many results are returned.
my $cursor = MTAwOjA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.

eval {
    my $result = $api_instance->bot_management_list_category_bots(workspace_id => $workspace_id, category_id => $category_id, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_list_category_bots: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **category_id** | **string**| The ID of the bot category. | 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] 

### Return type

[**BotManagementBotsResponse**](BotManagementBotsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_list_workspaces**
> BotManagementWorkspacesResponse bot_management_list_workspaces(service_id => $service_id, limit => $limit, cursor => $cursor)

List workspaces

List bot management workspaces.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = 6oMkSHsKCMBjQJPLHgMxu1; # string | Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace.
my $limit = 100; # int | Limit how many results are returned.
my $cursor = MTAwOjA; # string | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.

eval {
    my $result = $api_instance->bot_management_list_workspaces(service_id => $service_id, limit => $limit, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_list_workspaces: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace. | [optional] 
 **limit** | **int**| Limit how many results are returned. | [optional] [default to 100]
 **cursor** | **string**| Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] 

### Return type

[**BotManagementWorkspacesResponse**](BotManagementWorkspacesResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_update_bot**
> BotManagementBotResponse bot_management_update_bot(workspace_id => $workspace_id, category_id => $category_id, bot_id => $bot_id, bot_management_bot => $bot_management_bot)

Set a bot action

Set the action for a bot. Set the action to 'inherit' to apply the category's action or to a specific value to override the category's action.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $category_id = ai_crawlers; # string | The ID of the bot category.
my $bot_id = gptbot; # string | The ID of the bot.
my $bot_management_bot = WebService::Fastly::Object::BotManagementBot->new(); # BotManagementBot | 

eval {
    my $result = $api_instance->bot_management_update_bot(workspace_id => $workspace_id, category_id => $category_id, bot_id => $bot_id, bot_management_bot => $bot_management_bot);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_update_bot: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **category_id** | **string**| The ID of the bot category. | 
 **bot_id** | **string**| The ID of the bot. | 
 **bot_management_bot** | [**BotManagementBot**](BotManagementBot.md)|  | 

### Return type

[**BotManagementBotResponse**](BotManagementBotResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_update_category**
> BotManagementCategoryResponse bot_management_update_category(workspace_id => $workspace_id, category_id => $category_id, bot_management_category => $bot_management_category)

Set a category action

Set the action for a bot category. Every bot in the category configured with the 'inherit' action uses the action set for the category.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $category_id = ai_crawlers; # string | The ID of the bot category.
my $bot_management_category = WebService::Fastly::Object::BotManagementCategory->new(); # BotManagementCategory | 

eval {
    my $result = $api_instance->bot_management_update_category(workspace_id => $workspace_id, category_id => $category_id, bot_management_category => $bot_management_category);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_update_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **category_id** | **string**| The ID of the bot category. | 
 **bot_management_category** | [**BotManagementCategory**](BotManagementCategory.md)|  | 

### Return type

[**BotManagementCategoryResponse**](BotManagementCategoryResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bot_management_update_workspace**
> BotManagementWorkspaceResponse bot_management_update_workspace(workspace_id => $workspace_id, bot_management_workspace => $bot_management_workspace)

Update a workspace

Update the attributes of a bot management workspace.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BotManagementApi;
my $api_instance = WebService::Fastly::BotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $workspace_id = SU1Z0isxPaozGVKXdv0eY; # string | The ID of the bot management workspace.
my $bot_management_workspace = WebService::Fastly::Object::BotManagementWorkspace->new(); # BotManagementWorkspace | 

eval {
    my $result = $api_instance->bot_management_update_workspace(workspace_id => $workspace_id, bot_management_workspace => $bot_management_workspace);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BotManagementApi->bot_management_update_workspace: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **string**| The ID of the bot management workspace. | 
 **bot_management_workspace** | [**BotManagementWorkspace**](BotManagementWorkspace.md)|  | 

### Return type

[**BotManagementWorkspaceResponse**](BotManagementWorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

