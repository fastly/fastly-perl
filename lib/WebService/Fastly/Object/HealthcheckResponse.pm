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
package WebService::Fastly::Object::HealthcheckResponse;

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

use WebService::Fastly::Object::Healthcheck;
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
    my $_hash = decode_json(JSON->new->allow_blessed->convert_blessed->encode($self));

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
                                  class => 'HealthcheckResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'check_interval' => {
        datatype => 'int',
        base_name => 'check_interval',
        description => 'How often to run the healthcheck in milliseconds.',
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
    'expected_response' => {
        datatype => 'int',
        base_name => 'expected_response',
        description => 'The status code expected from the host.',
        format => '',
        read_only => 'false',
            },
    'host' => {
        datatype => 'string',
        base_name => 'host',
        description => 'Which host to check.',
        format => '',
        read_only => 'false',
            },
    'http_version' => {
        datatype => 'string',
        base_name => 'http_version',
        description => 'Whether to use version 1.0 or 1.1 HTTP.',
        format => '',
        read_only => 'false',
            },
    'initial' => {
        datatype => 'int',
        base_name => 'initial',
        description => 'When loading a config, the initial number of probes to be seen as OK.',
        format => '',
        read_only => 'false',
            },
    'method' => {
        datatype => 'string',
        base_name => 'method',
        description => 'Which HTTP method to use.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The name of the healthcheck.',
        format => '',
        read_only => 'false',
            },
    'path' => {
        datatype => 'string',
        base_name => 'path',
        description => 'The path to check.',
        format => '',
        read_only => 'false',
            },
    'threshold' => {
        datatype => 'int',
        base_name => 'threshold',
        description => 'How many healthchecks must succeed to be considered healthy.',
        format => '',
        read_only => 'false',
            },
    'timeout' => {
        datatype => 'int',
        base_name => 'timeout',
        description => 'Timeout in milliseconds.',
        format => '',
        read_only => 'false',
            },
    'window' => {
        datatype => 'int',
        base_name => 'window',
        description => 'The number of most recent healthcheck queries to keep for this healthcheck.',
        format => '',
        read_only => 'false',
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
});

__PACKAGE__->openapi_types( {
    'check_interval' => 'int',
    'comment' => 'string',
    'expected_response' => 'int',
    'host' => 'string',
    'http_version' => 'string',
    'initial' => 'int',
    'method' => 'string',
    'name' => 'string',
    'path' => 'string',
    'threshold' => 'int',
    'timeout' => 'int',
    'window' => 'int',
    'service_id' => 'string',
    'version' => 'int',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'check_interval' => 'check_interval',
    'comment' => 'comment',
    'expected_response' => 'expected_response',
    'host' => 'host',
    'http_version' => 'http_version',
    'initial' => 'initial',
    'method' => 'method',
    'name' => 'name',
    'path' => 'path',
    'threshold' => 'threshold',
    'timeout' => 'timeout',
    'window' => 'window',
    'service_id' => 'service_id',
    'version' => 'version',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'comment' => 'true',
    'service_id' => 'true',
    'version' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
} );


1;
