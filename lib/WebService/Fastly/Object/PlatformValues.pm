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
package WebService::Fastly::Object::PlatformValues;

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
#The results of the query, optionally filtered and grouped over the requested timespan.
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


__PACKAGE__->class_documentation({description => 'The results of the query, optionally filtered and grouped over the requested timespan.',
                                  class => 'PlatformValues',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'timestamp' => {
        datatype => 'DateTime',
        base_name => 'timestamp',
        description => 'Timestamp of the metrics data point.',
        format => 'date-time',
        read_only => 'false',
            },
    'ttfb_origin_p25_us' => {
        datatype => 'double',
        base_name => 'ttfb_origin_p25_us',
        description => '25th percentile of time to first byte from origin, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_origin_p50_us' => {
        datatype => 'double',
        base_name => 'ttfb_origin_p50_us',
        description => '50th percentile of time to first byte from origin, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_origin_p75_us' => {
        datatype => 'double',
        base_name => 'ttfb_origin_p75_us',
        description => '75th percentile of time to first byte from origin, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_origin_p95_us' => {
        datatype => 'double',
        base_name => 'ttfb_origin_p95_us',
        description => '95th percentile of time to first byte from origin, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_origin_p99_us' => {
        datatype => 'double',
        base_name => 'ttfb_origin_p99_us',
        description => '99th percentile of time to first byte from origin, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_shield_p25_us' => {
        datatype => 'double',
        base_name => 'ttfb_shield_p25_us',
        description => '25th percentile of time to first byte from shield, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_shield_p50_us' => {
        datatype => 'double',
        base_name => 'ttfb_shield_p50_us',
        description => '50th percentile of time to first byte from shield, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_shield_p75_us' => {
        datatype => 'double',
        base_name => 'ttfb_shield_p75_us',
        description => '75th percentile of time to first byte from shield, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_shield_p95_us' => {
        datatype => 'double',
        base_name => 'ttfb_shield_p95_us',
        description => '95th percentile of time to first byte from shield, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_shield_p99_us' => {
        datatype => 'double',
        base_name => 'ttfb_shield_p99_us',
        description => '99th percentile of time to first byte from shield, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_edge_p25_us' => {
        datatype => 'double',
        base_name => 'ttfb_edge_p25_us',
        description => '25th percentile of time to first byte from edge, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_edge_p50_us' => {
        datatype => 'double',
        base_name => 'ttfb_edge_p50_us',
        description => '50th percentile of time to first byte from edge, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_edge_p75_us' => {
        datatype => 'double',
        base_name => 'ttfb_edge_p75_us',
        description => '75th percentile of time to first byte from edge, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_edge_p95_us' => {
        datatype => 'double',
        base_name => 'ttfb_edge_p95_us',
        description => '95th percentile of time to first byte from edge, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
    'ttfb_edge_p99_us' => {
        datatype => 'double',
        base_name => 'ttfb_edge_p99_us',
        description => '99th percentile of time to first byte from edge, in microseconds.',
        format => 'float',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'timestamp' => 'DateTime',
    'ttfb_origin_p25_us' => 'double',
    'ttfb_origin_p50_us' => 'double',
    'ttfb_origin_p75_us' => 'double',
    'ttfb_origin_p95_us' => 'double',
    'ttfb_origin_p99_us' => 'double',
    'ttfb_shield_p25_us' => 'double',
    'ttfb_shield_p50_us' => 'double',
    'ttfb_shield_p75_us' => 'double',
    'ttfb_shield_p95_us' => 'double',
    'ttfb_shield_p99_us' => 'double',
    'ttfb_edge_p25_us' => 'double',
    'ttfb_edge_p50_us' => 'double',
    'ttfb_edge_p75_us' => 'double',
    'ttfb_edge_p95_us' => 'double',
    'ttfb_edge_p99_us' => 'double'
} );

__PACKAGE__->attribute_map( {
    'timestamp' => 'timestamp',
    'ttfb_origin_p25_us' => 'ttfb_origin_p25_us',
    'ttfb_origin_p50_us' => 'ttfb_origin_p50_us',
    'ttfb_origin_p75_us' => 'ttfb_origin_p75_us',
    'ttfb_origin_p95_us' => 'ttfb_origin_p95_us',
    'ttfb_origin_p99_us' => 'ttfb_origin_p99_us',
    'ttfb_shield_p25_us' => 'ttfb_shield_p25_us',
    'ttfb_shield_p50_us' => 'ttfb_shield_p50_us',
    'ttfb_shield_p75_us' => 'ttfb_shield_p75_us',
    'ttfb_shield_p95_us' => 'ttfb_shield_p95_us',
    'ttfb_shield_p99_us' => 'ttfb_shield_p99_us',
    'ttfb_edge_p25_us' => 'ttfb_edge_p25_us',
    'ttfb_edge_p50_us' => 'ttfb_edge_p50_us',
    'ttfb_edge_p75_us' => 'ttfb_edge_p75_us',
    'ttfb_edge_p95_us' => 'ttfb_edge_p95_us',
    'ttfb_edge_p99_us' => 'ttfb_edge_p99_us'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
