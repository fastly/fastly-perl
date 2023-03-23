# WebService::Fastly::TlsSubscriptionsApi

## Load the API package
```perl
use WebService::Fastly::Object::TlsSubscriptionsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_globalsign_email_challenge**](TlsSubscriptionsApi.md#create_globalsign_email_challenge) | **POST** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges | Creates a GlobalSign email challenge.
[**create_tls_sub**](TlsSubscriptionsApi.md#create_tls_sub) | **POST** /tls/subscriptions | Create a TLS subscription
[**delete_globalsign_email_challenge**](TlsSubscriptionsApi.md#delete_globalsign_email_challenge) | **DELETE** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges/{globalsign_email_challenge_id} | Delete a GlobalSign email challenge
[**delete_tls_sub**](TlsSubscriptionsApi.md#delete_tls_sub) | **DELETE** /tls/subscriptions/{tls_subscription_id} | Delete a TLS subscription
[**get_tls_sub**](TlsSubscriptionsApi.md#get_tls_sub) | **GET** /tls/subscriptions/{tls_subscription_id} | Get a TLS subscription
[**list_tls_subs**](TlsSubscriptionsApi.md#list_tls_subs) | **GET** /tls/subscriptions | List TLS subscriptions
[**patch_tls_sub**](TlsSubscriptionsApi.md#patch_tls_sub) | **PATCH** /tls/subscriptions/{tls_subscription_id} | Update a TLS subscription


# **create_globalsign_email_challenge**
> object create_globalsign_email_challenge(tls_subscription_id => $tls_subscription_id, tls_authorization_id => $tls_authorization_id, request_body => $request_body)

Creates a GlobalSign email challenge.

Creates an email challenge for a domain on a GlobalSign subscription. An email challenge will generate an email that can be used to validate domain ownership. If this challenge is created, then the domain can only be validated using email for the given subscription. 

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_subscription_id = "tls_subscription_id_example"; # string | Alphanumeric string identifying a TLS subscription.
my $tls_authorization_id = "tls_authorization_id_example"; # string | Alphanumeric string identifying a TLS subscription.
my $request_body = WebService::Fastly::Object::HASH[string,object]->new(); # HASH[string,object] | 

eval {
    my $result = $api_instance->create_globalsign_email_challenge(tls_subscription_id => $tls_subscription_id, tls_authorization_id => $tls_authorization_id, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->create_globalsign_email_challenge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_subscription_id** | **string**| Alphanumeric string identifying a TLS subscription. | 
 **tls_authorization_id** | **string**| Alphanumeric string identifying a TLS subscription. | 
 **request_body** | [**HASH[string,object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_tls_sub**
> TlsSubscriptionResponse create_tls_sub(force => $force, tls_subscription => $tls_subscription)

Create a TLS subscription

Create a new TLS subscription. This response includes a list of possible challenges to verify domain ownership.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $force = true; # boolean | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
my $tls_subscription = WebService::Fastly::Object::TlsSubscription->new(); # TlsSubscription | 

eval {
    my $result = $api_instance->create_tls_sub(force => $force, tls_subscription => $tls_subscription);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->create_tls_sub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **force** | **boolean**| A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain.  | [optional] 
 **tls_subscription** | [**TlsSubscription**](TlsSubscription.md)|  | [optional] 

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_globalsign_email_challenge**
> delete_globalsign_email_challenge(tls_subscription_id => $tls_subscription_id, globalsign_email_challenge_id => $globalsign_email_challenge_id, tls_authorization_id => $tls_authorization_id)

Delete a GlobalSign email challenge

Deletes a GlobalSign email challenge. After a GlobalSign email challenge is deleted, the domain can use HTTP and DNS validation methods again.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_subscription_id = "tls_subscription_id_example"; # string | Alphanumeric string identifying a TLS subscription.
my $globalsign_email_challenge_id = gU3guUGZzb2W9Euo4Mo0r; # string | Alphanumeric string identifying a GlobalSign email challenge.
my $tls_authorization_id = "tls_authorization_id_example"; # string | Alphanumeric string identifying a TLS subscription.

eval {
    $api_instance->delete_globalsign_email_challenge(tls_subscription_id => $tls_subscription_id, globalsign_email_challenge_id => $globalsign_email_challenge_id, tls_authorization_id => $tls_authorization_id);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->delete_globalsign_email_challenge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_subscription_id** | **string**| Alphanumeric string identifying a TLS subscription. | 
 **globalsign_email_challenge_id** | **string**| Alphanumeric string identifying a GlobalSign email challenge. | 
 **tls_authorization_id** | **string**| Alphanumeric string identifying a TLS subscription. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tls_sub**
> delete_tls_sub(tls_subscription_id => $tls_subscription_id)

Delete a TLS subscription

Destroy a TLS subscription. A subscription cannot be destroyed if there are domains in the TLS enabled state.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_subscription_id = "tls_subscription_id_example"; # string | Alphanumeric string identifying a TLS subscription.

eval {
    $api_instance->delete_tls_sub(tls_subscription_id => $tls_subscription_id);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->delete_tls_sub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_subscription_id** | **string**| Alphanumeric string identifying a TLS subscription. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tls_sub**
> TlsSubscriptionResponse get_tls_sub(tls_subscription_id => $tls_subscription_id, include => $include)

Get a TLS subscription

Show a TLS subscription.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_subscription_id = "tls_subscription_id_example"; # string | Alphanumeric string identifying a TLS subscription.
my $include = tls_authorizations; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`. 

eval {
    my $result = $api_instance->get_tls_sub(tls_subscription_id => $tls_subscription_id, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->get_tls_sub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_subscription_id** | **string**| Alphanumeric string identifying a TLS subscription. | 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`.  | [optional] 

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tls_subs**
> TlsSubscriptionsResponse list_tls_subs(filter[state] => $filter[state], filter[tls_domains/id] => $filter[tls_domains/id], filter[has_active_order] => $filter[has_active_order], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort)

List TLS subscriptions

List all TLS subscriptions.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $filter[state] = "filter[state]_example"; # string | Limit the returned subscriptions by state. Valid values are `pending`, `processing`, `issued`, `renewing`, and `failed`. Accepts parameters: `not` (e.g., `filter[state][not]=renewing`). 
my $filter[tls_domains/id] = "filter[tls_domains/id]_example"; # string | Limit the returned subscriptions to those that include the specific domain.
my $filter[has_active_order] = null; # boolean | Limit the returned subscriptions to those that have currently active orders. Permitted values: `true`. 
my $include = tls_authorizations; # string | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`. 
my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.
my $sort = created_at; # string | The order in which to list the results by creation date.

eval {
    my $result = $api_instance->list_tls_subs(filter[state] => $filter[state], filter[tls_domains/id] => $filter[tls_domains/id], filter[has_active_order] => $filter[has_active_order], include => $include, page[number] => $page[number], page[size] => $page[size], sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->list_tls_subs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[state]** | **string**| Limit the returned subscriptions by state. Valid values are `pending`, `processing`, `issued`, `renewing`, and `failed`. Accepts parameters: `not` (e.g., `filter[state][not]&#x3D;renewing`).  | [optional] 
 **filter[tls_domains/id]** | **string**| Limit the returned subscriptions to those that include the specific domain. | [optional] 
 **filter[has_active_order]** | **boolean**| Limit the returned subscriptions to those that have currently active orders. Permitted values: `true`.  | [optional] 
 **include** | **string**| Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`.  | [optional] 
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]
 **sort** | **string**| The order in which to list the results by creation date. | [optional] [default to &#39;created_at&#39;]

### Return type

[**TlsSubscriptionsResponse**](TlsSubscriptionsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_tls_sub**
> TlsSubscriptionResponse patch_tls_sub(tls_subscription_id => $tls_subscription_id, force => $force, tls_subscription => $tls_subscription)

Update a TLS subscription

Change the TLS domains or common name associated with this subscription, update the TLS configuration for this set of domains, or retry a subscription with state `failed` by setting the state to `retry`.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::TlsSubscriptionsApi;
my $api_instance = WebService::Fastly::TlsSubscriptionsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $tls_subscription_id = "tls_subscription_id_example"; # string | Alphanumeric string identifying a TLS subscription.
my $force = true; # boolean | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
my $tls_subscription = WebService::Fastly::Object::TlsSubscription->new(); # TlsSubscription | 

eval {
    my $result = $api_instance->patch_tls_sub(tls_subscription_id => $tls_subscription_id, force => $force, tls_subscription => $tls_subscription);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TlsSubscriptionsApi->patch_tls_sub: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tls_subscription_id** | **string**| Alphanumeric string identifying a TLS subscription. | 
 **force** | **boolean**| A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain.  | [optional] 
 **tls_subscription** | [**TlsSubscription**](TlsSubscription.md)|  | [optional] 

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

