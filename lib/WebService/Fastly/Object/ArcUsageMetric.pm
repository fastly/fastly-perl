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
package WebService::Fastly::Object::ArcUsageMetric;

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
#A usage metric measured for a single date (or hour, when &#x60;granularity&#x60; is &#x60;hourly&#x60;).
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


__PACKAGE__->class_documentation({description => 'A usage metric measured for a single date (or hour, when &#x60;granularity&#x60; is &#x60;hourly&#x60;).',
                                  class => 'ArcUsageMetric',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'date' => {
        datatype => 'string',
        base_name => 'date',
        description => 'The date (or hour) the usage was measured. Formatted as &#x60;YYYY-MM-DD&#x60; when &#x60;granularity&#x60; is &#x60;daily&#x60;, or &#x60;YYYY-MM-DD HH:00:00&#x60; when &#x60;granularity&#x60; is &#x60;hourly&#x60;. ',
        format => '',
        read_only => 'false',
            },
    'usage_type' => {
        datatype => 'string',
        base_name => 'usage_type',
        description => 'The type of usage being measured.',
        format => '',
        read_only => 'false',
            },
    'quantity' => {
        datatype => 'int',
        base_name => 'quantity',
        description => 'The quantity of the usage type for this date.',
        format => '',
        read_only => 'false',
            },
    'virtual_key_id' => {
        datatype => 'string',
        base_name => 'virtual_key_id',
        description => 'The ID of the virtual key this usage is attributed to.',
        format => '',
        read_only => 'false',
            },
    'virtual_key_name' => {
        datatype => 'string',
        base_name => 'virtual_key_name',
        description => 'The display name of the virtual key this usage is attributed to.',
        format => '',
        read_only => 'false',
            },
    'primary_provider' => {
        datatype => 'string',
        base_name => 'primary_provider',
        description => 'The ID of the provider connection originally requested, before any failover occurred.',
        format => '',
        read_only => 'false',
            },
    'provider' => {
        datatype => 'string',
        base_name => 'provider',
        description => 'The name of the provider connection that ultimately served the request.',
        format => '',
        read_only => 'false',
            },
    'provider_connection_id' => {
        datatype => 'string',
        base_name => 'provider_connection_id',
        description => 'The ID of the provider connection that ultimately served the request.',
        format => '',
        read_only => 'false',
            },
    'model' => {
        datatype => 'string',
        base_name => 'model',
        description => 'The AI model identifier used.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'date' => 'string',
    'usage_type' => 'string',
    'quantity' => 'int',
    'virtual_key_id' => 'string',
    'virtual_key_name' => 'string',
    'primary_provider' => 'string',
    'provider' => 'string',
    'provider_connection_id' => 'string',
    'model' => 'string'
} );

__PACKAGE__->attribute_map( {
    'date' => 'date',
    'usage_type' => 'usage_type',
    'quantity' => 'quantity',
    'virtual_key_id' => 'virtual_key_id',
    'virtual_key_name' => 'virtual_key_name',
    'primary_provider' => 'primary_provider',
    'provider' => 'provider',
    'provider_connection_id' => 'provider_connection_id',
    'model' => 'model'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
