# WebService::Fastly::PoolApi

## Load the API package
```perl
use WebService::Fastly::Object::PoolApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_server_pool**](PoolApi.md#create_server_pool) | **POST** /service/{service_id}/version/{version_id}/pool | Create a server pool
[**delete_server_pool**](PoolApi.md#delete_server_pool) | **DELETE** /service/{service_id}/version/{version_id}/pool/{pool_name} | Delete a server pool
[**get_server_pool**](PoolApi.md#get_server_pool) | **GET** /service/{service_id}/version/{version_id}/pool/{pool_name} | Get a server pool
[**list_server_pools**](PoolApi.md#list_server_pools) | **GET** /service/{service_id}/version/{version_id}/pool | List server pools
[**update_server_pool**](PoolApi.md#update_server_pool) | **PUT** /service/{service_id}/version/{version_id}/pool/{pool_name} | Update a server pool


# **create_server_pool**
> PoolResponse create_server_pool(service_id => $service_id, version_id => $version_id, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_cert_hostname => $tls_cert_hostname, use_tls => $use_tls, name => $name, shield => $shield, request_condition => $request_condition, max_conn_default => $max_conn_default, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, quorum => $quorum, tls_ciphers => $tls_ciphers, tls_sni_hostname => $tls_sni_hostname, tls_check_cert => $tls_check_cert, min_tls_version => $min_tls_version, max_tls_version => $max_tls_version, healthcheck => $healthcheck, comment => $comment, type => $type, override_host => $override_host)

Create a server pool

Creates a pool for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PoolApi;
my $api_instance = WebService::Fastly::PoolApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_cert_hostname = 'null'; # string | The hostname used to verify a server's certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).
my $use_tls = 0; # int | Whether to use TLS.
my $name = "name_example"; # string | Name for the Pool.
my $shield = 'null'; # string | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding.
my $request_condition = "request_condition_example"; # string | Condition which, if met, will select this configuration during a request. Optional.
my $max_conn_default = 200; # int | Maximum number of connections. Optional.
my $connect_timeout = 56; # int | How long to wait for a timeout in milliseconds. Optional.
my $first_byte_timeout = 56; # int | How long to wait for the first byte in milliseconds. Optional.
my $quorum = 75; # int | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up.
my $tls_ciphers = "tls_ciphers_example"; # string | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
my $tls_sni_hostname = "tls_sni_hostname_example"; # string | SNI hostname. Optional.
my $tls_check_cert = 56; # int | Be strict on checking TLS certs. Optional.
my $min_tls_version = 56; # int | Minimum allowed TLS version on connections to this server. Optional.
my $max_tls_version = 56; # int | Maximum allowed TLS version on connections to this server. Optional.
my $healthcheck = "healthcheck_example"; # string | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $type = "type_example"; # string | What type of load balance group to use.
my $override_host = 'null'; # string | The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.

eval {
    my $result = $api_instance->create_server_pool(service_id => $service_id, version_id => $version_id, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_cert_hostname => $tls_cert_hostname, use_tls => $use_tls, name => $name, shield => $shield, request_condition => $request_condition, max_conn_default => $max_conn_default, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, quorum => $quorum, tls_ciphers => $tls_ciphers, tls_sni_hostname => $tls_sni_hostname, tls_check_cert => $tls_check_cert, min_tls_version => $min_tls_version, max_tls_version => $max_tls_version, healthcheck => $healthcheck, comment => $comment, type => $type, override_host => $override_host);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolApi->create_server_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_cert_hostname** | **string**| The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional] [default to &#39;null&#39;]
 **use_tls** | **int**| Whether to use TLS. | [optional] [default to 0]
 **name** | **string**| Name for the Pool. | [optional] 
 **shield** | **string**| Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional] [default to &#39;null&#39;]
 **request_condition** | **string**| Condition which, if met, will select this configuration during a request. Optional. | [optional] 
 **max_conn_default** | **int**| Maximum number of connections. Optional. | [optional] [default to 200]
 **connect_timeout** | **int**| How long to wait for a timeout in milliseconds. Optional. | [optional] 
 **first_byte_timeout** | **int**| How long to wait for the first byte in milliseconds. Optional. | [optional] 
 **quorum** | **int**| Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up. | [optional] [default to 75]
 **tls_ciphers** | **string**| List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] 
 **tls_sni_hostname** | **string**| SNI hostname. Optional. | [optional] 
 **tls_check_cert** | **int**| Be strict on checking TLS certs. Optional. | [optional] 
 **min_tls_version** | **int**| Minimum allowed TLS version on connections to this server. Optional. | [optional] 
 **max_tls_version** | **int**| Maximum allowed TLS version on connections to this server. Optional. | [optional] 
 **healthcheck** | **string**| Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **type** | **string**| What type of load balance group to use. | [optional] 
 **override_host** | **string**| The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional] [default to &#39;null&#39;]

### Return type

[**PoolResponse**](PoolResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_server_pool**
> InlineResponse200 delete_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name)

Delete a server pool

Deletes a specific pool for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PoolApi;
my $api_instance = WebService::Fastly::PoolApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $pool_name = "pool_name_example"; # string | Name for the Pool.

eval {
    my $result = $api_instance->delete_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolApi->delete_server_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **pool_name** | **string**| Name for the Pool. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_server_pool**
> PoolResponse get_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name)

Get a server pool

Gets a single pool for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PoolApi;
my $api_instance = WebService::Fastly::PoolApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $pool_name = "pool_name_example"; # string | Name for the Pool.

eval {
    my $result = $api_instance->get_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolApi->get_server_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **pool_name** | **string**| Name for the Pool. | 

### Return type

[**PoolResponse**](PoolResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_server_pools**
> ARRAY[PoolResponse] list_server_pools(service_id => $service_id, version_id => $version_id)

List server pools

Lists all pools for a particular service and pool.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PoolApi;
my $api_instance = WebService::Fastly::PoolApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_server_pools(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolApi->list_server_pools: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[PoolResponse]**](PoolResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_server_pool**
> PoolResponse update_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_cert_hostname => $tls_cert_hostname, use_tls => $use_tls, name => $name, shield => $shield, request_condition => $request_condition, max_conn_default => $max_conn_default, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, quorum => $quorum, tls_ciphers => $tls_ciphers, tls_sni_hostname => $tls_sni_hostname, tls_check_cert => $tls_check_cert, min_tls_version => $min_tls_version, max_tls_version => $max_tls_version, healthcheck => $healthcheck, comment => $comment, type => $type, override_host => $override_host)

Update a server pool

Updates a specific pool for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::PoolApi;
my $api_instance = WebService::Fastly::PoolApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $pool_name = "pool_name_example"; # string | Name for the Pool.
my $tls_ca_cert = 'null'; # string | A secure certificate to authenticate a server with. Must be in PEM format.
my $tls_client_cert = 'null'; # string | The client certificate used to make authenticated requests. Must be in PEM format.
my $tls_client_key = 'null'; # string | The client private key used to make authenticated requests. Must be in PEM format.
my $tls_cert_hostname = 'null'; # string | The hostname used to verify a server's certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).
my $use_tls = 0; # int | Whether to use TLS.
my $name = "name_example"; # string | Name for the Pool.
my $shield = 'null'; # string | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding.
my $request_condition = "request_condition_example"; # string | Condition which, if met, will select this configuration during a request. Optional.
my $max_conn_default = 200; # int | Maximum number of connections. Optional.
my $connect_timeout = 56; # int | How long to wait for a timeout in milliseconds. Optional.
my $first_byte_timeout = 56; # int | How long to wait for the first byte in milliseconds. Optional.
my $quorum = 75; # int | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up.
my $tls_ciphers = "tls_ciphers_example"; # string | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
my $tls_sni_hostname = "tls_sni_hostname_example"; # string | SNI hostname. Optional.
my $tls_check_cert = 56; # int | Be strict on checking TLS certs. Optional.
my $min_tls_version = 56; # int | Minimum allowed TLS version on connections to this server. Optional.
my $max_tls_version = 56; # int | Maximum allowed TLS version on connections to this server. Optional.
my $healthcheck = "healthcheck_example"; # string | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $type = "type_example"; # string | What type of load balance group to use.
my $override_host = 'null'; # string | The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.

eval {
    my $result = $api_instance->update_server_pool(service_id => $service_id, version_id => $version_id, pool_name => $pool_name, tls_ca_cert => $tls_ca_cert, tls_client_cert => $tls_client_cert, tls_client_key => $tls_client_key, tls_cert_hostname => $tls_cert_hostname, use_tls => $use_tls, name => $name, shield => $shield, request_condition => $request_condition, max_conn_default => $max_conn_default, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, quorum => $quorum, tls_ciphers => $tls_ciphers, tls_sni_hostname => $tls_sni_hostname, tls_check_cert => $tls_check_cert, min_tls_version => $min_tls_version, max_tls_version => $max_tls_version, healthcheck => $healthcheck, comment => $comment, type => $type, override_host => $override_host);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolApi->update_server_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **pool_name** | **string**| Name for the Pool. | 
 **tls_ca_cert** | **string**| A secure certificate to authenticate a server with. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_cert** | **string**| The client certificate used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_client_key** | **string**| The client private key used to make authenticated requests. Must be in PEM format. | [optional] [default to &#39;null&#39;]
 **tls_cert_hostname** | **string**| The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional] [default to &#39;null&#39;]
 **use_tls** | **int**| Whether to use TLS. | [optional] [default to 0]
 **name** | **string**| Name for the Pool. | [optional] 
 **shield** | **string**| Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional] [default to &#39;null&#39;]
 **request_condition** | **string**| Condition which, if met, will select this configuration during a request. Optional. | [optional] 
 **max_conn_default** | **int**| Maximum number of connections. Optional. | [optional] [default to 200]
 **connect_timeout** | **int**| How long to wait for a timeout in milliseconds. Optional. | [optional] 
 **first_byte_timeout** | **int**| How long to wait for the first byte in milliseconds. Optional. | [optional] 
 **quorum** | **int**| Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up. | [optional] [default to 75]
 **tls_ciphers** | **string**| List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] 
 **tls_sni_hostname** | **string**| SNI hostname. Optional. | [optional] 
 **tls_check_cert** | **int**| Be strict on checking TLS certs. Optional. | [optional] 
 **min_tls_version** | **int**| Minimum allowed TLS version on connections to this server. Optional. | [optional] 
 **max_tls_version** | **int**| Maximum allowed TLS version on connections to this server. Optional. | [optional] 
 **healthcheck** | **string**| Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **type** | **string**| What type of load balance group to use. | [optional] 
 **override_host** | **string**| The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional] [default to &#39;null&#39;]

### Return type

[**PoolResponse**](PoolResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

