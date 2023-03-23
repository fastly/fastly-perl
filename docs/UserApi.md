# WebService::Fastly::UserApi

## Load the API package
```perl
use WebService::Fastly::Object::UserApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UserApi.md#create_user) | **POST** /user | Create a user
[**delete_user**](UserApi.md#delete_user) | **DELETE** /user/{user_id} | Delete a user
[**get_current_user**](UserApi.md#get_current_user) | **GET** /current_user | Get the current user
[**get_user**](UserApi.md#get_user) | **GET** /user/{user_id} | Get a user
[**request_password_reset**](UserApi.md#request_password_reset) | **POST** /user/{user_login}/password/request_reset | Request a password reset
[**update_user**](UserApi.md#update_user) | **PUT** /user/{user_id} | Update a user
[**update_user_password**](UserApi.md#update_user_password) | **POST** /current_user/password | Update the user&#39;s password


# **create_user**
> UserResponse create_user(login => $login, name => $name, limit_services => $limit_services, locked => $locked, require_new_password => $require_new_password, role => $role, two_factor_auth_enabled => $two_factor_auth_enabled, two_factor_setup_required => $two_factor_setup_required)

Create a user

Create a user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $login = "login_example"; # string | 
my $name = "name_example"; # string | The real life name of the user.
my $limit_services = null; # boolean | Indicates that the user has limited access to the customer's services.
my $locked = null; # boolean | Indicates whether the is account is locked for editing or not.
my $require_new_password = null; # boolean | Indicates if a new password is required at next login.
my $role = new WebService::Fastly.RoleUser(); # RoleUser | 
my $two_factor_auth_enabled = null; # boolean | Indicates if 2FA is enabled on the user.
my $two_factor_setup_required = null; # boolean | Indicates if 2FA is required by the user's customer account.

eval {
    my $result = $api_instance->create_user(login => $login, name => $name, limit_services => $limit_services, locked => $locked, require_new_password => $require_new_password, role => $role, two_factor_auth_enabled => $two_factor_auth_enabled, two_factor_setup_required => $two_factor_setup_required);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->create_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **string**|  | [optional] 
 **name** | **string**| The real life name of the user. | [optional] 
 **limit_services** | **boolean**| Indicates that the user has limited access to the customer&#39;s services. | [optional] 
 **locked** | **boolean**| Indicates whether the is account is locked for editing or not. | [optional] 
 **require_new_password** | **boolean**| Indicates if a new password is required at next login. | [optional] 
 **role** | [**RoleUser**](RoleUser.md)|  | [optional] 
 **two_factor_auth_enabled** | **boolean**| Indicates if 2FA is enabled on the user. | [optional] 
 **two_factor_setup_required** | **boolean**| Indicates if 2FA is required by the user&#39;s customer account. | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> InlineResponse200 delete_user(user_id => $user_id)

Delete a user

Delete a user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_id = "user_id_example"; # string | Alphanumeric string identifying the user.

eval {
    my $result = $api_instance->delete_user(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->delete_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| Alphanumeric string identifying the user. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_user**
> UserResponse get_current_user()

Get the current user

Get the logged in user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_current_user();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->get_current_user: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> UserResponse get_user(user_id => $user_id)

Get a user

Get a specific user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_id = "user_id_example"; # string | Alphanumeric string identifying the user.

eval {
    my $result = $api_instance->get_user(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| Alphanumeric string identifying the user. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **request_password_reset**
> InlineResponse200 request_password_reset(user_login => $user_login)

Request a password reset

Requests a password reset for the specified user.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_login = "user_login_example"; # string | The login associated with the user (typically, an email address).

eval {
    my $result = $api_instance->request_password_reset(user_login => $user_login);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->request_password_reset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_login** | **string**| The login associated with the user (typically, an email address). | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UserResponse update_user(user_id => $user_id, login => $login, name => $name, limit_services => $limit_services, locked => $locked, require_new_password => $require_new_password, role => $role, two_factor_auth_enabled => $two_factor_auth_enabled, two_factor_setup_required => $two_factor_setup_required)

Update a user

Update a user. Only users with the role of `superuser` can make changes to other users on the account. Non-superusers may use this endpoint to make changes to their own account. Two-factor attributes are not editable via this endpoint.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $user_id = "user_id_example"; # string | Alphanumeric string identifying the user.
my $login = "login_example"; # string | 
my $name = "name_example"; # string | The real life name of the user.
my $limit_services = null; # boolean | Indicates that the user has limited access to the customer's services.
my $locked = null; # boolean | Indicates whether the is account is locked for editing or not.
my $require_new_password = null; # boolean | Indicates if a new password is required at next login.
my $role = new WebService::Fastly.RoleUser(); # RoleUser | 
my $two_factor_auth_enabled = null; # boolean | Indicates if 2FA is enabled on the user.
my $two_factor_setup_required = null; # boolean | Indicates if 2FA is required by the user's customer account.

eval {
    my $result = $api_instance->update_user(user_id => $user_id, login => $login, name => $name, limit_services => $limit_services, locked => $locked, require_new_password => $require_new_password, role => $role, two_factor_auth_enabled => $two_factor_auth_enabled, two_factor_setup_required => $two_factor_setup_required);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| Alphanumeric string identifying the user. | 
 **login** | **string**|  | [optional] 
 **name** | **string**| The real life name of the user. | [optional] 
 **limit_services** | **boolean**| Indicates that the user has limited access to the customer&#39;s services. | [optional] 
 **locked** | **boolean**| Indicates whether the is account is locked for editing or not. | [optional] 
 **require_new_password** | **boolean**| Indicates if a new password is required at next login. | [optional] 
 **role** | [**RoleUser**](RoleUser.md)|  | [optional] 
 **two_factor_auth_enabled** | **boolean**| Indicates if 2FA is enabled on the user. | [optional] 
 **two_factor_setup_required** | **boolean**| Indicates if 2FA is required by the user&#39;s customer account. | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_password**
> UserResponse update_user_password(old_password => $old_password, new_password => $new_password)

Update the user's password

Update the user's password to a new one.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::UserApi;
my $api_instance = WebService::Fastly::UserApi->new(

    # Configure HTTP basic authorization: session_password_change
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $old_password = "old_password_example"; # string | The user's current password.
my $new_password = "new_password_example"; # string | The user's new password.

eval {
    my $result = $api_instance->update_user_password(old_password => $old_password, new_password => $new_password);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->update_user_password: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **old_password** | **string**| The user&#39;s current password. | [optional] 
 **new_password** | **string**| The user&#39;s new password. | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[session_password_change](../README.md#session_password_change)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

