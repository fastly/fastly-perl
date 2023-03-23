# WebService::Fastly::BackendApi

## Load the API package
```perl
use WebService::Fastly::Object::BackendApi;
```

All URIs are relative to *https://api.fastly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_backend**](BackendApi.md#create_backend) | **POST** /service/{service_id}/version/{version_id}/backend | Create a backend
[**delete_backend**](BackendApi.md#delete_backend) | **DELETE** /service/{service_id}/version/{version_id}/backend/{backend_name} | Delete a backend
[**get_backend**](BackendApi.md#get_backend) | **GET** /service/{service_id}/version/{version_id}/backend/{backend_name} | Describe a backend
[**list_backends**](BackendApi.md#list_backends) | **GET** /service/{service_id}/version/{version_id}/backend | List backends
[**update_backend**](BackendApi.md#update_backend) | **PUT** /service/{service_id}/version/{version_id}/backend/{backend_name} | Update a backend


# **create_backend**
> BackendResponse create_backend(service_id => $service_id, version_id => $version_id, address => $address, auto_loadbalance => $auto_loadbalance, between_bytes_timeout => $between_bytes_timeout, client_cert => $client_cert, comment => $comment, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, healthcheck => $healthcheck, hostname => $hostname, ipv4 => $ipv4, ipv6 => $ipv6, keepalive_time => $keepalive_time, max_conn => $max_conn, max_tls_version => $max_tls_version, min_tls_version => $min_tls_version, name => $name, override_host => $override_host, port => $port, request_condition => $request_condition, shield => $shield, ssl_ca_cert => $ssl_ca_cert, ssl_cert_hostname => $ssl_cert_hostname, ssl_check_cert => $ssl_check_cert, ssl_ciphers => $ssl_ciphers, ssl_client_cert => $ssl_client_cert, ssl_client_key => $ssl_client_key, ssl_hostname => $ssl_hostname, ssl_sni_hostname => $ssl_sni_hostname, use_ssl => $use_ssl, weight => $weight)

Create a backend

Create a backend for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BackendApi;
my $api_instance = WebService::Fastly::BackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $address = "address_example"; # string | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
my $auto_loadbalance = null; # boolean | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don't have a `request_condition` will be selected based on their `weight`.
my $between_bytes_timeout = 56; # int | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
my $client_cert = "client_cert_example"; # string | Unused.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $connect_timeout = 56; # int | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`.
my $first_byte_timeout = 56; # int | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`.
my $healthcheck = "healthcheck_example"; # string | The name of the healthcheck to use with this backend.
my $hostname = "hostname_example"; # string | The hostname of the backend. May be used as an alternative to `address` to set the backend location.
my $ipv4 = "ipv4_example"; # string | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location.
my $ipv6 = "ipv6_example"; # string | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location.
my $keepalive_time = 56; # int | How long in seconds to keep a persistent connection to the backend between requests.
my $max_conn = 56; # int | Maximum number of concurrent connections this backend will accept.
my $max_tls_version = "max_tls_version_example"; # string | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $min_tls_version = "min_tls_version_example"; # string | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $name = "name_example"; # string | The name of the backend.
my $override_host = "override_host_example"; # string | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL.
my $port = 56; # int | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request.
my $request_condition = "request_condition_example"; # string | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests.
my $shield = "shield_example"; # string | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
my $ssl_ca_cert = "ssl_ca_cert_example"; # string | CA certificate attached to origin.
my $ssl_cert_hostname = "ssl_cert_hostname_example"; # string | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all.
my $ssl_check_cert = true; # boolean | Be strict on checking SSL certs.
my $ssl_ciphers = "ssl_ciphers_example"; # string | List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $ssl_client_cert = "ssl_client_cert_example"; # string | Client certificate attached to origin.
my $ssl_client_key = "ssl_client_key_example"; # string | Client key attached to origin.
my $ssl_hostname = "ssl_hostname_example"; # string | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation.
my $ssl_sni_hostname = "ssl_sni_hostname_example"; # string | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all.
my $use_ssl = null; # boolean | Whether or not to require TLS for connections to this backend.
my $weight = 56; # int | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true.

eval {
    my $result = $api_instance->create_backend(service_id => $service_id, version_id => $version_id, address => $address, auto_loadbalance => $auto_loadbalance, between_bytes_timeout => $between_bytes_timeout, client_cert => $client_cert, comment => $comment, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, healthcheck => $healthcheck, hostname => $hostname, ipv4 => $ipv4, ipv6 => $ipv6, keepalive_time => $keepalive_time, max_conn => $max_conn, max_tls_version => $max_tls_version, min_tls_version => $min_tls_version, name => $name, override_host => $override_host, port => $port, request_condition => $request_condition, shield => $shield, ssl_ca_cert => $ssl_ca_cert, ssl_cert_hostname => $ssl_cert_hostname, ssl_check_cert => $ssl_check_cert, ssl_ciphers => $ssl_ciphers, ssl_client_cert => $ssl_client_cert, ssl_client_key => $ssl_client_key, ssl_hostname => $ssl_hostname, ssl_sni_hostname => $ssl_sni_hostname, use_ssl => $use_ssl, weight => $weight);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BackendApi->create_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **address** | **string**| A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. | [optional] 
 **auto_loadbalance** | **boolean**| Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a `request_condition` will be selected based on their `weight`. | [optional] 
 **between_bytes_timeout** | **int**| Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] 
 **client_cert** | **string**| Unused. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **connect_timeout** | **int**| Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`. | [optional] 
 **first_byte_timeout** | **int**| Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`. | [optional] 
 **healthcheck** | **string**| The name of the healthcheck to use with this backend. | [optional] 
 **hostname** | **string**| The hostname of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **ipv4** | **string**| IPv4 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **ipv6** | **string**| IPv6 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **keepalive_time** | **int**| How long in seconds to keep a persistent connection to the backend between requests. | [optional] 
 **max_conn** | **int**| Maximum number of concurrent connections this backend will accept. | [optional] 
 **max_tls_version** | **string**| Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **min_tls_version** | **string**| Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **name** | **string**| The name of the backend. | [optional] 
 **override_host** | **string**| If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL. | [optional] 
 **port** | **int**| Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request. | [optional] 
 **request_condition** | **string**| Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests. | [optional] 
 **shield** | **string**| Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding). | [optional] 
 **ssl_ca_cert** | **string**| CA certificate attached to origin. | [optional] 
 **ssl_cert_hostname** | **string**| Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all. | [optional] 
 **ssl_check_cert** | **boolean**| Be strict on checking SSL certs. | [optional] [default to true]
 **ssl_ciphers** | **string**| List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **ssl_client_cert** | **string**| Client certificate attached to origin. | [optional] 
 **ssl_client_key** | **string**| Client key attached to origin. | [optional] 
 **ssl_hostname** | **string**| Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation. | [optional] 
 **ssl_sni_hostname** | **string**| Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all. | [optional] 
 **use_ssl** | **boolean**| Whether or not to require TLS for connections to this backend. | [optional] 
 **weight** | **int**| Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true. | [optional] 

### Return type

[**BackendResponse**](BackendResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_backend**
> InlineResponse200 delete_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name)

Delete a backend

Delete the backend for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BackendApi;
my $api_instance = WebService::Fastly::BackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.

eval {
    my $result = $api_instance->delete_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BackendApi->delete_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_backend**
> BackendResponse get_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name)

Describe a backend

Get the backend for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BackendApi;
my $api_instance = WebService::Fastly::BackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.

eval {
    my $result = $api_instance->get_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BackendApi->get_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 

### Return type

[**BackendResponse**](BackendResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_backends**
> ARRAY[BackendResponse] list_backends(service_id => $service_id, version_id => $version_id)

List backends

List all backends for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BackendApi;
my $api_instance = WebService::Fastly::BackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.

eval {
    my $result = $api_instance->list_backends(service_id => $service_id, version_id => $version_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BackendApi->list_backends: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 

### Return type

[**ARRAY[BackendResponse]**](BackendResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_backend**
> BackendResponse update_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name, address => $address, auto_loadbalance => $auto_loadbalance, between_bytes_timeout => $between_bytes_timeout, client_cert => $client_cert, comment => $comment, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, healthcheck => $healthcheck, hostname => $hostname, ipv4 => $ipv4, ipv6 => $ipv6, keepalive_time => $keepalive_time, max_conn => $max_conn, max_tls_version => $max_tls_version, min_tls_version => $min_tls_version, name => $name, override_host => $override_host, port => $port, request_condition => $request_condition, shield => $shield, ssl_ca_cert => $ssl_ca_cert, ssl_cert_hostname => $ssl_cert_hostname, ssl_check_cert => $ssl_check_cert, ssl_ciphers => $ssl_ciphers, ssl_client_cert => $ssl_client_cert, ssl_client_key => $ssl_client_key, ssl_hostname => $ssl_hostname, ssl_sni_hostname => $ssl_sni_hostname, use_ssl => $use_ssl, weight => $weight)

Update a backend

Update the backend for a particular service and version.

### Example
```perl
use Data::Dumper;
use WebService::Fastly::BackendApi;
my $api_instance = WebService::Fastly::BackendApi->new(

    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $backend_name = "backend_name_example"; # string | The name of the backend.
my $address = "address_example"; # string | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
my $auto_loadbalance = null; # boolean | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don't have a `request_condition` will be selected based on their `weight`.
my $between_bytes_timeout = 56; # int | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
my $client_cert = "client_cert_example"; # string | Unused.
my $comment = "comment_example"; # string | A freeform descriptive note.
my $connect_timeout = 56; # int | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`.
my $first_byte_timeout = 56; # int | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`.
my $healthcheck = "healthcheck_example"; # string | The name of the healthcheck to use with this backend.
my $hostname = "hostname_example"; # string | The hostname of the backend. May be used as an alternative to `address` to set the backend location.
my $ipv4 = "ipv4_example"; # string | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location.
my $ipv6 = "ipv6_example"; # string | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location.
my $keepalive_time = 56; # int | How long in seconds to keep a persistent connection to the backend between requests.
my $max_conn = 56; # int | Maximum number of concurrent connections this backend will accept.
my $max_tls_version = "max_tls_version_example"; # string | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $min_tls_version = "min_tls_version_example"; # string | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $name = "name_example"; # string | The name of the backend.
my $override_host = "override_host_example"; # string | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL.
my $port = 56; # int | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request.
my $request_condition = "request_condition_example"; # string | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests.
my $shield = "shield_example"; # string | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
my $ssl_ca_cert = "ssl_ca_cert_example"; # string | CA certificate attached to origin.
my $ssl_cert_hostname = "ssl_cert_hostname_example"; # string | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all.
my $ssl_check_cert = true; # boolean | Be strict on checking SSL certs.
my $ssl_ciphers = "ssl_ciphers_example"; # string | List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
my $ssl_client_cert = "ssl_client_cert_example"; # string | Client certificate attached to origin.
my $ssl_client_key = "ssl_client_key_example"; # string | Client key attached to origin.
my $ssl_hostname = "ssl_hostname_example"; # string | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation.
my $ssl_sni_hostname = "ssl_sni_hostname_example"; # string | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all.
my $use_ssl = null; # boolean | Whether or not to require TLS for connections to this backend.
my $weight = 56; # int | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true.

eval {
    my $result = $api_instance->update_backend(service_id => $service_id, version_id => $version_id, backend_name => $backend_name, address => $address, auto_loadbalance => $auto_loadbalance, between_bytes_timeout => $between_bytes_timeout, client_cert => $client_cert, comment => $comment, connect_timeout => $connect_timeout, first_byte_timeout => $first_byte_timeout, healthcheck => $healthcheck, hostname => $hostname, ipv4 => $ipv4, ipv6 => $ipv6, keepalive_time => $keepalive_time, max_conn => $max_conn, max_tls_version => $max_tls_version, min_tls_version => $min_tls_version, name => $name, override_host => $override_host, port => $port, request_condition => $request_condition, shield => $shield, ssl_ca_cert => $ssl_ca_cert, ssl_cert_hostname => $ssl_cert_hostname, ssl_check_cert => $ssl_check_cert, ssl_ciphers => $ssl_ciphers, ssl_client_cert => $ssl_client_cert, ssl_client_key => $ssl_client_key, ssl_hostname => $ssl_hostname, ssl_sni_hostname => $ssl_sni_hostname, use_ssl => $use_ssl, weight => $weight);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BackendApi->update_backend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **string**| Alphanumeric string identifying the service. | 
 **version_id** | **int**| Integer identifying a service version. | 
 **backend_name** | **string**| The name of the backend. | 
 **address** | **string**| A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. | [optional] 
 **auto_loadbalance** | **boolean**| Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a `request_condition` will be selected based on their `weight`. | [optional] 
 **between_bytes_timeout** | **int**| Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] 
 **client_cert** | **string**| Unused. | [optional] 
 **comment** | **string**| A freeform descriptive note. | [optional] 
 **connect_timeout** | **int**| Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`. | [optional] 
 **first_byte_timeout** | **int**| Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`. | [optional] 
 **healthcheck** | **string**| The name of the healthcheck to use with this backend. | [optional] 
 **hostname** | **string**| The hostname of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **ipv4** | **string**| IPv4 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **ipv6** | **string**| IPv6 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] 
 **keepalive_time** | **int**| How long in seconds to keep a persistent connection to the backend between requests. | [optional] 
 **max_conn** | **int**| Maximum number of concurrent connections this backend will accept. | [optional] 
 **max_tls_version** | **string**| Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **min_tls_version** | **string**| Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **name** | **string**| The name of the backend. | [optional] 
 **override_host** | **string**| If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL. | [optional] 
 **port** | **int**| Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request. | [optional] 
 **request_condition** | **string**| Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests. | [optional] 
 **shield** | **string**| Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding). | [optional] 
 **ssl_ca_cert** | **string**| CA certificate attached to origin. | [optional] 
 **ssl_cert_hostname** | **string**| Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all. | [optional] 
 **ssl_check_cert** | **boolean**| Be strict on checking SSL certs. | [optional] [default to true]
 **ssl_ciphers** | **string**| List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] 
 **ssl_client_cert** | **string**| Client certificate attached to origin. | [optional] 
 **ssl_client_key** | **string**| Client key attached to origin. | [optional] 
 **ssl_hostname** | **string**| Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation. | [optional] 
 **ssl_sni_hostname** | **string**| Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all. | [optional] 
 **use_ssl** | **boolean**| Whether or not to require TLS for connections to this backend. | [optional] 
 **weight** | **int**| Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true. | [optional] 

### Return type

[**BackendResponse**](BackendResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

