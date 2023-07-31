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
package WebService::Fastly::Object::LoggingKafkaAdditional;

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

use WebService::Fastly::Object::LoggingUseTls;

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
                                  class => 'LoggingKafkaAdditional',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
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
    'compression_codec' => 'true',
} );


1;
