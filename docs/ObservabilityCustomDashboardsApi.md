# WebService::Fastly::ObservabilityCustomDashboardsApi

## Load the API package
```perl
use WebService::Fastly::Object::ObservabilityCustomDashboardsApi;
```

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_dashboard**](ObservabilityCustomDashboardsApi.md#create_dashboard) | **POST** /observability/dashboards | Create a new dashboard
[**delete_dashboard**](ObservabilityCustomDashboardsApi.md#delete_dashboard) | **DELETE** /observability/dashboards/{dashboard_id} | Delete an existing dashboard
[**get_dashboard**](ObservabilityCustomDashboardsApi.md#get_dashboard) | **GET** /observability/dashboards/{dashboard_id} | Retrieve a dashboard by ID
[**list_dashboards**](ObservabilityCustomDashboardsApi.md#list_dashboards) | **GET** /observability/dashboards | List all custom dashboards
[**update_dashboard**](ObservabilityCustomDashboardsApi.md#update_dashboard) | **PATCH** /observability/dashboards/{dashboard_id} | Update an existing dashboard


# **create_dashboard**
> Dashboard create_dashboard(create_dashboard_request => $create_dashboard_request)

Create a new dashboard

Create a new dashboard

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityCustomDashboardsApi;
my $api_instance = WebService::Fastly::ObservabilityCustomDashboardsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $create_dashboard_request = WebService::Fastly::Object::CreateDashboardRequest->new(); # CreateDashboardRequest | 

eval {
    my $result = $api_instance->create_dashboard(create_dashboard_request => $create_dashboard_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityCustomDashboardsApi->create_dashboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_dashboard_request** | [**CreateDashboardRequest**](CreateDashboardRequest.md)|  | [optional] 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dashboard**
> delete_dashboard(dashboard_id => $dashboard_id)

Delete an existing dashboard

Delete an existing dashboard

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityCustomDashboardsApi;
my $api_instance = WebService::Fastly::ObservabilityCustomDashboardsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $dashboard_id = 2eGFXF4F4kTxd4gU39Bg3e; # string | 

eval {
    $api_instance->delete_dashboard(dashboard_id => $dashboard_id);
};
if ($@) {
    warn "Exception when calling ObservabilityCustomDashboardsApi->delete_dashboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dashboard**
> Dashboard get_dashboard(dashboard_id => $dashboard_id)

Retrieve a dashboard by ID

Retrieve a dashboard by ID

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityCustomDashboardsApi;
my $api_instance = WebService::Fastly::ObservabilityCustomDashboardsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $dashboard_id = 2eGFXF4F4kTxd4gU39Bg3e; # string | 

eval {
    my $result = $api_instance->get_dashboard(dashboard_id => $dashboard_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityCustomDashboardsApi->get_dashboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **string**|  | 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dashboards**
> ListDashboardsResponse list_dashboards()

List all custom dashboards

List all custom dashboards

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityCustomDashboardsApi;
my $api_instance = WebService::Fastly::ObservabilityCustomDashboardsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->list_dashboards();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityCustomDashboardsApi->list_dashboards: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDashboardsResponse**](ListDashboardsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dashboard**
> Dashboard update_dashboard(dashboard_id => $dashboard_id, update_dashboard_request => $update_dashboard_request)

Update an existing dashboard

Update an existing dashboard

### Example
```perl
use Data::Dumper;
use WebService::Fastly::ObservabilityCustomDashboardsApi;
my $api_instance = WebService::Fastly::ObservabilityCustomDashboardsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $dashboard_id = 2eGFXF4F4kTxd4gU39Bg3e; # string | 
my $update_dashboard_request = WebService::Fastly::Object::UpdateDashboardRequest->new(); # UpdateDashboardRequest | 

eval {
    my $result = $api_instance->update_dashboard(dashboard_id => $dashboard_id, update_dashboard_request => $update_dashboard_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObservabilityCustomDashboardsApi->update_dashboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard_id** | **string**|  | 
 **update_dashboard_request** | [**UpdateDashboardRequest**](UpdateDashboardRequest.md)|  | [optional] 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

