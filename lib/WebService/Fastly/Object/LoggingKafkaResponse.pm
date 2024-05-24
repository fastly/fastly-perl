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
package WebService::Fastly::Object::LoggingKafkaResponse;

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

use WebService::Fastly::Object::LoggingCommonResponse;
use WebService::Fastly::Object::LoggingKafkaAdditional;
use WebService::Fastly::Object::LoggingTlsCommon;
use WebService::Fastly::Object::LoggingUseTls;
use WebService::Fastly::Object::ServiceIdAndVersionString;
use WebService::Fastly::Object::Timestamps;

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
                                  class => 'LoggingKafkaResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The name for the real-time logging configuration.',
        format => '',
        read_only => 'false',
            },
    'placement' => {
        datatype => 'string',
        base_name => 'placement',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        format => '',
        read_only => 'false',
            },
    'response_condition' => {
        datatype => 'string',
        base_name => 'response_condition',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        format => '',
        read_only => 'false',
            },
    'format' => {
        datatype => 'string',
        base_name => 'format',
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        format => '',
        read_only => 'false',
            },
    'format_version' => {
        datatype => 'string',
        base_name => 'format_version',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        format => '',
        read_only => 'false',
            },
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
    'tls_hostname' => {
        datatype => 'string',
        base_name => 'tls_hostname',
        description => 'The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.',
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
        datatype => 'string',
        base_name => 'version',
        description => '',
        format => '',
        read_only => 'true',
            },
    'topic' => {
        datatype => 'string',
        base_name => 'topic',
        description => 'The Kafka topic to send logs to. Required.',
        format => '',
        read_only => 'false',
            },
    'brokers' => {
        datatype => 'string',
        base_name => 'brokers',
        description => 'A comma-separated list of IP addresses or hostnames of Kafka brokers. Required.',
        format => '',
        read_only => 'false',
            },
    'compression_codec' => {
        datatype => 'string',
        base_name => 'compression_codec',
        description => 'The codec used for compression of your logs.',
        format => '',
        read_only => 'false',
            },
    'required_acks' => {
        datatype => 'int',
        base_name => 'required_acks',
        description => 'The number of acknowledgements a leader must receive before a write is considered successful.',
        format => '',
        read_only => 'false',
            },
    'request_max_bytes' => {
        datatype => 'int',
        base_name => 'request_max_bytes',
        description => 'The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (no limit).',
        format => '',
        read_only => 'false',
            },
    'parse_log_keyvals' => {
        datatype => 'boolean',
        base_name => 'parse_log_keyvals',
        description => 'Enables parsing of key&#x3D;value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers).',
        format => '',
        read_only => 'false',
            },
    'auth_method' => {
        datatype => 'string',
        base_name => 'auth_method',
        description => 'SASL authentication method.',
        format => '',
        read_only => 'false',
            },
    'user' => {
        datatype => 'string',
        base_name => 'user',
        description => 'SASL user.',
        format => '',
        read_only => 'false',
            },
    'password' => {
        datatype => 'string',
        base_name => 'password',
        description => 'SASL password.',
        format => '',
        read_only => 'false',
            },
    'use_tls' => {
        datatype => 'LoggingUseTls',
        base_name => 'use_tls',
        description => '',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'name' => 'string',
    'placement' => 'string',
    'response_condition' => 'string',
    'format' => 'string',
    'format_version' => 'string',
    'tls_ca_cert' => 'string',
    'tls_client_cert' => 'string',
    'tls_client_key' => 'string',
    'tls_hostname' => 'string',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'service_id' => 'string',
    'version' => 'string',
    'topic' => 'string',
    'brokers' => 'string',
    'compression_codec' => 'string',
    'required_acks' => 'int',
    'request_max_bytes' => 'int',
    'parse_log_keyvals' => 'boolean',
    'auth_method' => 'string',
    'user' => 'string',
    'password' => 'string',
    'use_tls' => 'LoggingUseTls'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'placement' => 'placement',
    'response_condition' => 'response_condition',
    'format' => 'format',
    'format_version' => 'format_version',
    'tls_ca_cert' => 'tls_ca_cert',
    'tls_client_cert' => 'tls_client_cert',
    'tls_client_key' => 'tls_client_key',
    'tls_hostname' => 'tls_hostname',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'service_id' => 'service_id',
    'version' => 'version',
    'topic' => 'topic',
    'brokers' => 'brokers',
    'compression_codec' => 'compression_codec',
    'required_acks' => 'required_acks',
    'request_max_bytes' => 'request_max_bytes',
    'parse_log_keyvals' => 'parse_log_keyvals',
    'auth_method' => 'auth_method',
    'user' => 'user',
    'password' => 'password',
    'use_tls' => 'use_tls'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'placement' => 'true',
    'response_condition' => 'true',
    'tls_ca_cert' => 'true',
    'tls_client_cert' => 'true',
    'tls_client_key' => 'true',
    'tls_hostname' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
    'compression_codec' => 'true',
} );


1;
