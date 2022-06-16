# Fastly::InvitationsApi

## Load the API package
```perl
use Fastly::Object::InvitationsApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invitation**](InvitationsApi.md#create_invitation) | **POST** /invitations | Create an invitation
[**delete_invitation**](InvitationsApi.md#delete_invitation) | **DELETE** /invitations/{invitation_id} | Delete an invitation
[**list_invitations**](InvitationsApi.md#list_invitations) | **GET** /invitations | List invitations


# **create_invitation**
> InvitationResponse create_invitation(invitation => $invitation)

Create an invitation

Create an invitation.

### Example
```perl
use Data::Dumper;
use Fastly::InvitationsApi;
my $api_instance = Fastly::InvitationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $invitation = Fastly::Object::Invitation->new(); # Invitation | 

eval {
    my $result = $api_instance->create_invitation(invitation => $invitation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvitationsApi->create_invitation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation** | [**Invitation**](Invitation.md)|  | [optional] 

### Return type

[**InvitationResponse**](InvitationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_invitation**
> delete_invitation(invitation_id => $invitation_id)

Delete an invitation

Delete an invitation.

### Example
```perl
use Data::Dumper;
use Fastly::InvitationsApi;
my $api_instance = Fastly::InvitationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $invitation_id = "invitation_id_example"; # string | Alphanumeric string identifying an invitation.

eval {
    $api_instance->delete_invitation(invitation_id => $invitation_id);
};
if ($@) {
    warn "Exception when calling InvitationsApi->delete_invitation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **string**| Alphanumeric string identifying an invitation. | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_invitations**
> InvitationsResponse list_invitations(page[number] => $page[number], page[size] => $page[size])

List invitations

List all invitations.

### Example
```perl
use Data::Dumper;
use Fastly::InvitationsApi;
my $api_instance = Fastly::InvitationsApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $page[number] = 1; # int | Current page.
my $page[size] = 20; # int | Number of records per page.

eval {
    my $result = $api_instance->list_invitations(page[number] => $page[number], page[size] => $page[size]);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvitationsApi->list_invitations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page[number]** | **int**| Current page. | [optional] 
 **page[size]** | **int**| Number of records per page. | [optional] [default to 20]

### Return type

[**InvitationsResponse**](InvitationsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

