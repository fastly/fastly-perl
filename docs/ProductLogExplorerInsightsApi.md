# WebService::Fastly::ProductLogExplorerInsightsApi

## Load the API package
```perl
use WebService::Fastly::Object::ProductLogExplorerInsightsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#disable_product_log_explorer_insights) | **DELETE** /enabled-products/v1/log_explorer_insights/services/{service_id} | Disable product
[**enable_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#enable_product_log_explorer_insights) | **PUT** /enabled-products/v1/log_explorer_insights/services/{service_id} | Enable product
[**get_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#get_product_log_explorer_insights) | **GET** /enabled-products/v1/log_explorer_insights/services/{service_id} | Get product enablement status
[**get_services_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#get_services_product_log_explorer_insights) | **GET** /enabled-products/v1/log_explorer_insights/services | Get services with product enabled


# **disable_product_log_explorer_insights**
> disable_product_log_explorer_insights(service_id => $service_id)

Disable product

Disable the Log Explorer & Insights product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductLogExplorerInsightsApi;
my $api_instance = WebService::Fastly::ProductLogExplorerInsightsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    $api_instance->disable_product_log_explorer_insights(service_id => $service_id);
};
if ($@) {
    warn "Exception when calling ProductLogExplorerInsightsApi->disable_product_log_explorer_insights: $@\n";
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

# **enable_product_log_explorer_insights**
> LogExplorerInsightsResponseBodyEnable enable_product_log_explorer_insights(service_id => $service_id)

Enable product

Enable the Log Explorer & Insights product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductLogExplorerInsightsApi;
my $api_instance = WebService::Fastly::ProductLogExplorerInsightsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->enable_product_log_explorer_insights(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductLogExplorerInsightsApi->enable_product_log_explorer_insights: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**LogExplorerInsightsResponseBodyEnable**](LogExplorerInsightsResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_log_explorer_insights**
> LogExplorerInsightsResponseBodyEnable get_product_log_explorer_insights(service_id => $service_id)

Get product enablement status

Get the enablement status of the Log Explorer & Insights product on a service.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductLogExplorerInsightsApi;
my $api_instance = WebService::Fastly::ProductLogExplorerInsightsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.

eval {
    my $result = $api_instance->get_product_log_explorer_insights(service_id => $service_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductLogExplorerInsightsApi->get_product_log_explorer_insights: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 

### Return type

[**LogExplorerInsightsResponseBodyEnable**](LogExplorerInsightsResponseBodyEnable.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_services_product_log_explorer_insights**
> LogExplorerInsightsResponseBodyGetAllServices get_services_product_log_explorer_insights()

Get services with product enabled

Get all the services which have the Log Explorer & Insights product enabled.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ProductLogExplorerInsightsApi;
my $api_instance = WebService::Fastly::ProductLogExplorerInsightsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_services_product_log_explorer_insights();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductLogExplorerInsightsApi->get_services_product_log_explorer_insights: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogExplorerInsightsResponseBodyGetAllServices**](LogExplorerInsightsResponseBodyGetAllServices.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

