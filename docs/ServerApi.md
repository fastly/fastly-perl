# Fastly::ServerApi

## Load the API package
```perl
use Fastly::Object::ServerApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pool_server**](ServerApi.md#create_pool_server) | **POST** /service/{service_id}/pool/{pool_id}/server | Add a server to a pool
[**delete_pool_server**](ServerApi.md#delete_pool_server) | **DELETE** /service/{service_id}/pool/{pool_id}/server/{server_id} | Delete a server from a pool
[**get_pool_server**](ServerApi.md#get_pool_server) | **GET** /service/{service_id}/pool/{pool_id}/server/{server_id} | Get a pool server
[**list_pool_servers**](ServerApi.md#list_pool_servers) | **GET** /service/{service_id}/pool/{pool_id}/servers | List servers in a pool
[**update_pool_server**](ServerApi.md#update_pool_server) | **PUT** /service/{service_id}/pool/{pool_id}/server/{server_id} | Update a server


# **create_pool_server**
> ServerResponse create_pool_server(service_id => $service_id, pool_id => $pool_id, weight => $weight, max_conn => $max_conn, port => $port, address => $address, comment => $comment, disabled => $disabled, override_host => $override_host)

Add a server to a pool

Creates a single server for a particular service and pool.

### Example
```perl
use Data::Dumper;
use Fastly::ServerApi;
my $api_instance = Fastly::ServerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $pool_id = "pool_id_example"; # string | Alphanumeric string identifying a Pool.
my $weight = 100; # int | Weight (`1-100`) used to load balance this server against others.
my $max_conn = 0; # int | Maximum number of connections. If the value is `0`, it inherits the value from pool's `max_conn_default`.
my $port = 80; # int | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS.
my $address = "address_example"; # string | A hostname, IPv4, or IPv6 address for the server. Required.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $disabled = false; # boolean | Allows servers to be enabled and disabled in a pool.
my $override_host = "override_host_example"; # string | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.

eval {
    my $result = $api_instance->create_pool_server(service_id => $service_id, pool_id => $pool_id, weight => $weight, max_conn => $max_conn, port => $port, address => $address, comment => $comment, disabled => $disabled, override_host => $override_host);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServerApi->create_pool_server: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **pool_id** | **string**| Alphanumeric string identifying a Pool. | 
 **weight** | **int**| Weight (`1-100`) used to load balance this server against others. | [optional] [default to 100]
 **max_conn** | **int**| Maximum number of connections. If the value is `0`, it inherits the value from pool&#39;s `max_conn_default`. | [optional] [default to 0]
 **port** | **int**| Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS. | [optional] [default to 80]
 **address** | **string**| A hostname, IPv4, or IPv6 address for the server. Required. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **disabled** | **boolean**| Allows servers to be enabled and disabled in a pool. | [optional] [default to false]
 **override_host** | **string**| The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. | [optional] 

### Return type

[**ServerResponse**](ServerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_pool_server**
> DeleteAcl200Response delete_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id)

Delete a server from a pool

Deletes a single server for a particular service and pool.

### Example
```perl
use Data::Dumper;
use Fastly::ServerApi;
my $api_instance = Fastly::ServerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $pool_id = "pool_id_example"; # string | Alphanumeric string identifying a Pool.
my $server_id = "server_id_example"; # string | Alphanumeric string identifying a Server.

eval {
    my $result = $api_instance->delete_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServerApi->delete_pool_server: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **pool_id** | **string**| Alphanumeric string identifying a Pool. | 
 **server_id** | **string**| Alphanumeric string identifying a Server. | 

### Return type

[**DeleteAcl200Response**](DeleteAcl200Response.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pool_server**
> ServerResponse get_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id)

Get a pool server

Gets a single server for a particular service and pool.

### Example
```perl
use Data::Dumper;
use Fastly::ServerApi;
my $api_instance = Fastly::ServerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $pool_id = "pool_id_example"; # string | Alphanumeric string identifying a Pool.
my $server_id = "server_id_example"; # string | Alphanumeric string identifying a Server.

eval {
    my $result = $api_instance->get_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServerApi->get_pool_server: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **pool_id** | **string**| Alphanumeric string identifying a Pool. | 
 **server_id** | **string**| Alphanumeric string identifying a Server. | 

### Return type

[**ServerResponse**](ServerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_pool_servers**
> ARRAY[ServerResponse] list_pool_servers(service_id => $service_id, pool_id => $pool_id)

List servers in a pool

Lists all servers for a particular service and pool.

### Example
```perl
use Data::Dumper;
use Fastly::ServerApi;
my $api_instance = Fastly::ServerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $pool_id = "pool_id_example"; # string | Alphanumeric string identifying a Pool.

eval {
    my $result = $api_instance->list_pool_servers(service_id => $service_id, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServerApi->list_pool_servers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **pool_id** | **string**| Alphanumeric string identifying a Pool. | 

### Return type

[**ARRAY[ServerResponse]**](ServerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_pool_server**
> ServerResponse update_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id, weight => $weight, max_conn => $max_conn, port => $port, address => $address, comment => $comment, disabled => $disabled, override_host => $override_host)

Update a server

Updates a single server for a particular service and pool.

### Example
```perl
use Data::Dumper;
use Fastly::ServerApi;
my $api_instance = Fastly::ServerApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $pool_id = "pool_id_example"; # string | Alphanumeric string identifying a Pool.
my $server_id = "server_id_example"; # string | Alphanumeric string identifying a Server.
my $weight = 100; # int | Weight (`1-100`) used to load balance this server against others.
my $max_conn = 0; # int | Maximum number of connections. If the value is `0`, it inherits the value from pool's `max_conn_default`.
my $port = 80; # int | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS.
my $address = "address_example"; # string | A hostname, IPv4, or IPv6 address for the server. Required.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $disabled = false; # boolean | Allows servers to be enabled and disabled in a pool.
my $override_host = "override_host_example"; # string | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.

eval {
    my $result = $api_instance->update_pool_server(service_id => $service_id, pool_id => $pool_id, server_id => $server_id, weight => $weight, max_conn => $max_conn, port => $port, address => $address, comment => $comment, disabled => $disabled, override_host => $override_host);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ServerApi->update_pool_server: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **pool_id** | **string**| Alphanumeric string identifying a Pool. | 
 **server_id** | **string**| Alphanumeric string identifying a Server. | 
 **weight** | **int**| Weight (`1-100`) used to load balance this server against others. | [optional] [default to 100]
 **max_conn** | **int**| Maximum number of connections. If the value is `0`, it inherits the value from pool&#39;s `max_conn_default`. | [optional] [default to 0]
 **port** | **int**| Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS. | [optional] [default to 80]
 **address** | **string**| A hostname, IPv4, or IPv6 address for the server. Required. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **disabled** | **boolean**| Allows servers to be enabled and disabled in a pool. | [optional] [default to false]
 **override_host** | **string**| The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. | [optional] 

### Return type

[**ServerResponse**](ServerResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

