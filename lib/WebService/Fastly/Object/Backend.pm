=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
package WebService::Fastly::Object::Backend;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON::MaybeXS qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated. Do not edit the class manually.
#

=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});
__PACKAGE__->mk_classdata('openapi_nullable' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON()->new->allow_blessed->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        my $_is_nullable = ($self->openapi_nullable->{$_key} || 'false') eq 'true';
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element, $_is_nullable);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element, $_is_nullable);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute}, $_is_nullable);
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data, $is_nullable) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if (!(defined $data) && $is_nullable) {
        return undef;
    }
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WebService::Fastly::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'Backend',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'address' => {
        datatype => 'string',
        base_name => 'address',
        description => 'A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.',
        format => '',
        read_only => 'false',
            },
    'auto_loadbalance' => {
        datatype => 'boolean',
        base_name => 'auto_loadbalance',
        description => 'Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.',
        format => '',
        read_only => 'false',
            },
    'between_bytes_timeout' => {
        datatype => 'int',
        base_name => 'between_bytes_timeout',
        description => 'Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.',
        format => '',
        read_only => 'false',
            },
    'client_cert' => {
        datatype => 'string',
        base_name => 'client_cert',
        description => 'Unused.',
        format => '',
        read_only => 'false',
            },
    'comment' => {
        datatype => 'string',
        base_name => 'comment',
        description => 'A freeform descriptive note.',
        format => '',
        read_only => 'false',
            },
    'connect_timeout' => {
        datatype => 'int',
        base_name => 'connect_timeout',
        description => 'Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.',
        format => '',
        read_only => 'false',
            },
    'first_byte_timeout' => {
        datatype => 'int',
        base_name => 'first_byte_timeout',
        description => 'Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.',
        format => '',
        read_only => 'false',
            },
    'fetch_timeout' => {
        datatype => 'int',
        base_name => 'fetch_timeout',
        description => 'Maximum duration in milliseconds to wait for the entire response to be received after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.fetch_timeout&#x60;.',
        format => '',
        read_only => 'false',
            },
    'healthcheck' => {
        datatype => 'string',
        base_name => 'healthcheck',
        description => 'The name of the healthcheck to use with this backend.',
        format => '',
        read_only => 'false',
            },
    'hostname' => {
        datatype => 'string',
        base_name => 'hostname',
        description => 'The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        format => '',
        read_only => 'false',
            },
    'ipv4' => {
        datatype => 'string',
        base_name => 'ipv4',
        description => 'IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        format => '',
        read_only => 'false',
            },
    'ipv6' => {
        datatype => 'string',
        base_name => 'ipv6',
        description => 'IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.',
        format => '',
        read_only => 'false',
            },
    'keepalive_time' => {
        datatype => 'int',
        base_name => 'keepalive_time',
        description => 'How long in seconds to keep a persistent connection to the backend between requests. By default, Varnish keeps connections open as long as it can.',
        format => '',
        read_only => 'false',
            },
    'max_conn' => {
        datatype => 'int',
        base_name => 'max_conn',
        description => 'Maximum number of concurrent connections this backend will accept.',
        format => '',
        read_only => 'false',
            },
    'max_tls_version' => {
        datatype => 'string',
        base_name => 'max_tls_version',
        description => 'Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        format => '',
        read_only => 'false',
            },
    'min_tls_version' => {
        datatype => 'string',
        base_name => 'min_tls_version',
        description => 'Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The name of the backend.',
        format => '',
        read_only => 'false',
            },
    'override_host' => {
        datatype => 'string',
        base_name => 'override_host',
        description => 'If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.',
        format => '',
        read_only => 'false',
            },
    'port' => {
        datatype => 'int',
        base_name => 'port',
        description => 'Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.',
        format => '',
        read_only => 'false',
            },
    'prefer_ipv6' => {
        datatype => 'boolean',
        base_name => 'prefer_ipv6',
        description => 'Prefer IPv6 connections to origins for hostname backends. Default is &#39;false&#39; for Delivery services and &#39;true&#39; for Compute services.',
        format => '',
        read_only => 'false',
            },
    'request_condition' => {
        datatype => 'string',
        base_name => 'request_condition',
        description => 'Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.',
        format => '',
        read_only => 'false',
            },
    'share_key' => {
        datatype => 'string',
        base_name => 'share_key',
        description => 'Value that when shared across backends will enable those backends to share the same health check.',
        format => '',
        read_only => 'false',
            },
    'shield' => {
        datatype => 'string',
        base_name => 'shield',
        description => 'Identifier of the POP to use as a [shield](https://www.fastly.com/documentation/guides/getting-started/hosts/shielding/).',
        format => '',
        read_only => 'false',
            },
    'ssl_ca_cert' => {
        datatype => 'string',
        base_name => 'ssl_ca_cert',
        description => 'CA certificate attached to origin.',
        format => '',
        read_only => 'false',
            },
    'ssl_cert_hostname' => {
        datatype => 'string',
        base_name => 'ssl_cert_hostname',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.',
        format => '',
        read_only => 'false',
            },
    'ssl_check_cert' => {
        datatype => 'boolean',
        base_name => 'ssl_check_cert',
        description => 'Be strict on checking SSL certs.',
        format => '',
        read_only => 'false',
            },
    'ssl_ciphers' => {
        datatype => 'string',
        base_name => 'ssl_ciphers',
        description => 'List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.',
        format => '',
        read_only => 'false',
            },
    'ssl_client_cert' => {
        datatype => 'string',
        base_name => 'ssl_client_cert',
        description => 'Client certificate attached to origin.',
        format => '',
        read_only => 'false',
            },
    'ssl_client_key' => {
        datatype => 'string',
        base_name => 'ssl_client_key',
        description => 'Client key attached to origin.',
        format => '',
        read_only => 'false',
            },
    'ssl_hostname' => {
        datatype => 'string',
        base_name => 'ssl_hostname',
        description => 'Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.',
        format => '',
        read_only => 'false',
            },
    'ssl_sni_hostname' => {
        datatype => 'string',
        base_name => 'ssl_sni_hostname',
        description => 'Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.',
        format => '',
        read_only => 'false',
            },
    'tcp_keepalive_enable' => {
        datatype => 'boolean',
        base_name => 'tcp_keepalive_enable',
        description => 'Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified.',
        format => '',
        read_only => 'false',
            },
    'tcp_keepalive_interval' => {
        datatype => 'int',
        base_name => 'tcp_keepalive_interval',
        description => 'Interval in seconds between subsequent keepalive probes.',
        format => '',
        read_only => 'false',
            },
    'tcp_keepalive_probes' => {
        datatype => 'int',
        base_name => 'tcp_keepalive_probes',
        description => 'Number of unacknowledged probes to send before considering the connection dead.',
        format => '',
        read_only => 'false',
            },
    'tcp_keepalive_time' => {
        datatype => 'int',
        base_name => 'tcp_keepalive_time',
        description => 'Interval in seconds between the last data packet sent and the first keepalive probe.',
        format => '',
        read_only => 'false',
            },
    'use_ssl' => {
        datatype => 'boolean',
        base_name => 'use_ssl',
        description => 'Whether or not to require TLS for connections to this backend.',
        format => '',
        read_only => 'false',
            },
    'weight' => {
        datatype => 'int',
        base_name => 'weight',
        description => 'Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'address' => 'string',
    'auto_loadbalance' => 'boolean',
    'between_bytes_timeout' => 'int',
    'client_cert' => 'string',
    'comment' => 'string',
    'connect_timeout' => 'int',
    'first_byte_timeout' => 'int',
    'fetch_timeout' => 'int',
    'healthcheck' => 'string',
    'hostname' => 'string',
    'ipv4' => 'string',
    'ipv6' => 'string',
    'keepalive_time' => 'int',
    'max_conn' => 'int',
    'max_tls_version' => 'string',
    'min_tls_version' => 'string',
    'name' => 'string',
    'override_host' => 'string',
    'port' => 'int',
    'prefer_ipv6' => 'boolean',
    'request_condition' => 'string',
    'share_key' => 'string',
    'shield' => 'string',
    'ssl_ca_cert' => 'string',
    'ssl_cert_hostname' => 'string',
    'ssl_check_cert' => 'boolean',
    'ssl_ciphers' => 'string',
    'ssl_client_cert' => 'string',
    'ssl_client_key' => 'string',
    'ssl_hostname' => 'string',
    'ssl_sni_hostname' => 'string',
    'tcp_keepalive_enable' => 'boolean',
    'tcp_keepalive_interval' => 'int',
    'tcp_keepalive_probes' => 'int',
    'tcp_keepalive_time' => 'int',
    'use_ssl' => 'boolean',
    'weight' => 'int'
} );

__PACKAGE__->attribute_map( {
    'address' => 'address',
    'auto_loadbalance' => 'auto_loadbalance',
    'between_bytes_timeout' => 'between_bytes_timeout',
    'client_cert' => 'client_cert',
    'comment' => 'comment',
    'connect_timeout' => 'connect_timeout',
    'first_byte_timeout' => 'first_byte_timeout',
    'fetch_timeout' => 'fetch_timeout',
    'healthcheck' => 'healthcheck',
    'hostname' => 'hostname',
    'ipv4' => 'ipv4',
    'ipv6' => 'ipv6',
    'keepalive_time' => 'keepalive_time',
    'max_conn' => 'max_conn',
    'max_tls_version' => 'max_tls_version',
    'min_tls_version' => 'min_tls_version',
    'name' => 'name',
    'override_host' => 'override_host',
    'port' => 'port',
    'prefer_ipv6' => 'prefer_ipv6',
    'request_condition' => 'request_condition',
    'share_key' => 'share_key',
    'shield' => 'shield',
    'ssl_ca_cert' => 'ssl_ca_cert',
    'ssl_cert_hostname' => 'ssl_cert_hostname',
    'ssl_check_cert' => 'ssl_check_cert',
    'ssl_ciphers' => 'ssl_ciphers',
    'ssl_client_cert' => 'ssl_client_cert',
    'ssl_client_key' => 'ssl_client_key',
    'ssl_hostname' => 'ssl_hostname',
    'ssl_sni_hostname' => 'ssl_sni_hostname',
    'tcp_keepalive_enable' => 'tcp_keepalive_enable',
    'tcp_keepalive_interval' => 'tcp_keepalive_interval',
    'tcp_keepalive_probes' => 'tcp_keepalive_probes',
    'tcp_keepalive_time' => 'tcp_keepalive_time',
    'use_ssl' => 'use_ssl',
    'weight' => 'weight'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'client_cert' => 'true',
    'comment' => 'true',
    'healthcheck' => 'true',
    'hostname' => 'true',
    'ipv4' => 'true',
    'ipv6' => 'true',
    'keepalive_time' => 'true',
    'max_tls_version' => 'true',
    'min_tls_version' => 'true',
    'override_host' => 'true',
    'share_key' => 'true',
    'shield' => 'true',
    'ssl_ca_cert' => 'true',
    'ssl_cert_hostname' => 'true',
    'ssl_check_cert' => 'true',
    'ssl_ciphers' => 'true',
    'ssl_client_cert' => 'true',
    'ssl_client_key' => 'true',
    'ssl_hostname' => 'true',
    'ssl_sni_hostname' => 'true',
    'tcp_keepalive_enable' => 'true',
    'tcp_keepalive_interval' => 'true',
    'tcp_keepalive_probes' => 'true',
    'tcp_keepalive_time' => 'true',
} );


1;
