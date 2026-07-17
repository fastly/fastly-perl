# WebService::Fastly::ProductBotManagementApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductBotManagementApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_bot_management**](ProductBotManagementApi.md#disable_product_bot_management) | **DELETE** /enabled-products/v1/bot_management/services/{service_id} | Disable product
[**enable_product_bot_management**](ProductBotManagementApi.md#enable_product_bot_management) | **PUT** /enabled-products/v1/bot_management/services/{service_id} | Enable product
[**get_product_bot_management**](ProductBotManagementApi.md#get_product_bot_management) | **GET** /enabled-products/v1/bot_management/services/{service_id} | Get product enablement status
[**get_product_bot_management_configuration**](ProductBotManagementApi.md#get_product_bot_management_configuration) | **GET** /enabled-products/v1/bot_management/services/{service_id}/configuration | Get configuration
[**get_services_product_bot_management**](ProductBotManagementApi.md#get_services_product_bot_management) | **GET** /enabled-products/v1/bot_management/services | Get services with product enabled
[**set_product_bot_management_configuration**](ProductBotManagementApi.md#set_product_bot_management_configuration) | **PATCH** /enabled-products/v1/bot_management/services/{service_id}/configuration | Update configuration


# **disable_product_bot_management**
> disable_product_bot_management(service_id => $service_id)

Disable product

Disable the Bot Management product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_bot_management(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->disable_product_bot_management: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_product_bot_management**
> BotManagementResponseBodyEnable enable_product_bot_management(service_id => $service_id)

Enable product

Enable the Bot Management product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_bot_management(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->enable_product_bot_management: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**BotManagementResponseBodyEnable**](BotManagementResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_bot_management**
> BotManagementResponseBodyEnable get_product_bot_management(service_id => $service_id)

Get product enablement status

Get the enablement status of the Bot Management product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_bot_management(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->get_product_bot_management: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**BotManagementResponseBodyEnable**](BotManagementResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_bot_management_configuration**
> BotManagementResponseConfigure get_product_bot_management_configuration(service_id => $service_id)

Get configuration

Get the configuration of the Bot Management product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_bot_management_configuration(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->get_product_bot_management_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**BotManagementResponseConfigure**](BotManagementResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_bot_management**
> BotManagementResponseBodyGetAllServices get_services_product_bot_management()

Get services with product enabled

Get all the services which have the Bot Management product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_bot_management();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->get_services_product_bot_management: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BotManagementResponseBodyGetAllServices**](BotManagementResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_product_bot_management_configuration**
> BotManagementResponseConfigure set_product_bot_management_configuration(service_id => $service_id, bot_management_request_update_configuration => $bot_management_request_update_configuration)

Update configuration

Update the configuration of the Bot Management product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductBotManagementApi;
my $api_instance = WebService::Fastly::ProductBotManagementApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $bot_management_request_update_configuration = WebService::Fastly::Object::BotManagementRequestUpdateConfiguration->new(); # BotManagementRequestUpdateConfiguration | 

eval {
    my $result = $api_instance->set_product_bot_management_configuration(service_id => $service_id, bot_management_request_update_configuration => $bot_management_request_update_configuration);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductBotManagementApi->set_product_bot_management_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **bot_management_request_update_configuration** | [**BotManagementRequestUpdateConfiguration**](BotManagementRequestUpdateConfiguration.md)|  | [optional] 

### Return type

[**BotManagementResponseConfigure**](BotManagementResponseConfigure.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

