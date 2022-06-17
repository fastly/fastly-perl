=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the API Spec document: 1.0.0
Contact: oss@fastly.com

=end comment

=cut

#
# NOTE: This class is auto generated.
# Do not edit the class manually.
#
package WebService::Fastly::Object::PoolResponse;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WebService::Fastly::Object::Pool;
use WebService::Fastly::Object::PoolResponseAllOf;
use WebService::Fastly::Object::ServiceIdAndVersion;
use WebService::Fastly::Object::Timestamps;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated. Do not edit the class manually.
#

=begin comment

Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

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
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
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
                                  class => 'PoolResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'tls_ca_cert' => {
        datatype => 'string',
        base_name => 'tls_ca_cert',
        description => 'A secure certificate to authenticate a server with. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_client_cert' => {
        datatype => 'string',
        base_name => 'tls_client_cert',
        description => 'The client certificate used to make authenticated requests. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_client_key' => {
        datatype => 'string',
        base_name => 'tls_client_key',
        description => 'The client private key used to make authenticated requests. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_cert_hostname' => {
        datatype => 'string',
        base_name => 'tls_cert_hostname',
        description => 'The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).',
        format => '',
        read_only => 'false',
            },
    'use_tls' => {
        datatype => 'int',
        base_name => 'use_tls',
        description => 'Whether to use TLS.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Name for the Pool.',
        format => '',
        read_only => 'false',
            },
    'shield' => {
        datatype => 'string',
        base_name => 'shield',
        description => 'Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding.',
        format => '',
        read_only => 'false',
            },
    'request_condition' => {
        datatype => 'string',
        base_name => 'request_condition',
        description => 'Condition which, if met, will select this configuration during a request. Optional.',
        format => '',
        read_only => 'false',
            },
    'max_conn_default' => {
        datatype => 'int',
        base_name => 'max_conn_default',
        description => 'Maximum number of connections. Optional.',
        format => '',
        read_only => 'false',
            },
    'connect_timeout' => {
        datatype => 'int',
        base_name => 'connect_timeout',
        description => 'How long to wait for a timeout in milliseconds. Optional.',
        format => '',
        read_only => 'false',
            },
    'first_byte_timeout' => {
        datatype => 'int',
        base_name => 'first_byte_timeout',
        description => 'How long to wait for the first byte in milliseconds. Optional.',
        format => '',
        read_only => 'false',
            },
    'quorum' => {
        datatype => 'int',
        base_name => 'quorum',
        description => 'Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up.',
        format => '',
        read_only => 'false',
            },
    'tls_ciphers' => {
        datatype => 'string',
        base_name => 'tls_ciphers',
        description => 'List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.',
        format => '',
        read_only => 'false',
            },
    'tls_sni_hostname' => {
        datatype => 'string',
        base_name => 'tls_sni_hostname',
        description => 'SNI hostname. Optional.',
        format => '',
        read_only => 'false',
            },
    'tls_check_cert' => {
        datatype => 'int',
        base_name => 'tls_check_cert',
        description => 'Be strict on checking TLS certs. Optional.',
        format => '',
        read_only => 'false',
            },
    'min_tls_version' => {
        datatype => 'int',
        base_name => 'min_tls_version',
        description => 'Minimum allowed TLS version on connections to this server. Optional.',
        format => '',
        read_only => 'false',
            },
    'max_tls_version' => {
        datatype => 'int',
        base_name => 'max_tls_version',
        description => 'Maximum allowed TLS version on connections to this server. Optional.',
        format => '',
        read_only => 'false',
            },
    'healthcheck' => {
        datatype => 'string',
        base_name => 'healthcheck',
        description => 'Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.',
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
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => 'What type of load balance group to use.',
        format => '',
        read_only => 'false',
            },
    'override_host' => {
        datatype => 'string',
        base_name => 'override_host',
        description => 'The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.',
        format => '',
        read_only => 'false',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
        description => 'Date and time in ISO 8601 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'deleted_at' => {
        datatype => 'DateTime',
        base_name => 'deleted_at',
        description => 'Date and time in ISO 8601 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updated_at',
        description => 'Date and time in ISO 8601 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'service_id' => {
        datatype => 'string',
        base_name => 'service_id',
        description => '',
        format => '',
        read_only => 'true',
            },
    'version' => {
        datatype => 'int',
        base_name => 'version',
        description => '',
        format => '',
        read_only => 'true',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'tls_ca_cert' => 'string',
    'tls_client_cert' => 'string',
    'tls_client_key' => 'string',
    'tls_cert_hostname' => 'string',
    'use_tls' => 'int',
    'name' => 'string',
    'shield' => 'string',
    'request_condition' => 'string',
    'max_conn_default' => 'int',
    'connect_timeout' => 'int',
    'first_byte_timeout' => 'int',
    'quorum' => 'int',
    'tls_ciphers' => 'string',
    'tls_sni_hostname' => 'string',
    'tls_check_cert' => 'int',
    'min_tls_version' => 'int',
    'max_tls_version' => 'int',
    'healthcheck' => 'string',
    'comment' => 'string',
    'type' => 'string',
    'override_host' => 'string',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'service_id' => 'string',
    'version' => 'int',
    'id' => 'string'
} );

__PACKAGE__->attribute_map( {
    'tls_ca_cert' => 'tls_ca_cert',
    'tls_client_cert' => 'tls_client_cert',
    'tls_client_key' => 'tls_client_key',
    'tls_cert_hostname' => 'tls_cert_hostname',
    'use_tls' => 'use_tls',
    'name' => 'name',
    'shield' => 'shield',
    'request_condition' => 'request_condition',
    'max_conn_default' => 'max_conn_default',
    'connect_timeout' => 'connect_timeout',
    'first_byte_timeout' => 'first_byte_timeout',
    'quorum' => 'quorum',
    'tls_ciphers' => 'tls_ciphers',
    'tls_sni_hostname' => 'tls_sni_hostname',
    'tls_check_cert' => 'tls_check_cert',
    'min_tls_version' => 'min_tls_version',
    'max_tls_version' => 'max_tls_version',
    'healthcheck' => 'healthcheck',
    'comment' => 'comment',
    'type' => 'type',
    'override_host' => 'override_host',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'service_id' => 'service_id',
    'version' => 'version',
    'id' => 'id'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'tls_ca_cert' => 'true',
    'tls_client_cert' => 'true',
    'tls_client_key' => 'true',
    'tls_cert_hostname' => 'true',
    'shield' => 'true',
    'request_condition' => 'true',
    'tls_ciphers' => 'true',
    'tls_sni_hostname' => 'true',
    'tls_check_cert' => 'true',
    'min_tls_version' => 'true',
    'max_tls_version' => 'true',
    'healthcheck' => 'true',
    'comment' => 'true',
    'override_host' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
    'service_id' => 'true',
    'version' => 'true',
    'id' => 'true',
} );


1;
