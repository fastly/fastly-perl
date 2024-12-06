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
package WebService::Fastly::Object::Usagemetric;

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
                                  class => 'Usagemetric',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'month' => {
        datatype => 'string',
        base_name => 'month',
        description => 'The year and month of the usage element.',
        format => '',
        read_only => 'false',
            },
    'usage_type' => {
        datatype => 'string',
        base_name => 'usage_type',
        description => 'The usage type identifier for the usage. This is a single, billable metric for the product.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Full name of the product usage type as it might appear on a customer&#39;s invoice.',
        format => '',
        read_only => 'false',
            },
    'region' => {
        datatype => 'string',
        base_name => 'region',
        description => 'The geographical area applicable for regionally based products.',
        format => '',
        read_only => 'false',
            },
    'unit' => {
        datatype => 'string',
        base_name => 'unit',
        description => 'The unit for the usage as shown on an invoice. If there is no explicit unit, this field will be \&quot;unit\&quot; (e.g., a request with &#x60;product_id&#x60; of &#39;cdn_usage&#39; and &#x60;usage_type&#x60; of &#39;North America Requests&#39; has no unit, and will return \&quot;unit\&quot;).',
        format => '',
        read_only => 'false',
            },
    'quantity' => {
        datatype => 'double',
        base_name => 'quantity',
        description => 'The quantity of the usage for the product.',
        format => '',
        read_only => 'false',
            },
    'raw_quantity' => {
        datatype => 'double',
        base_name => 'raw_quantity',
        description => 'The raw units measured for the product.',
        format => '',
        read_only => 'false',
            },
    'product_id' => {
        datatype => 'string',
        base_name => 'product_id',
        description => 'The product identifier associated with the usage type. This corresponds to a Fastly product offering.',
        format => '',
        read_only => 'false',
            },
    'last_updated_at' => {
        datatype => 'string',
        base_name => 'last_updated_at',
        description => 'The date when the usage metric was last updated.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'month' => 'string',
    'usage_type' => 'string',
    'name' => 'string',
    'region' => 'string',
    'unit' => 'string',
    'quantity' => 'double',
    'raw_quantity' => 'double',
    'product_id' => 'string',
    'last_updated_at' => 'string'
} );

__PACKAGE__->attribute_map( {
    'month' => 'month',
    'usage_type' => 'usage_type',
    'name' => 'name',
    'region' => 'region',
    'unit' => 'unit',
    'quantity' => 'quantity',
    'raw_quantity' => 'raw_quantity',
    'product_id' => 'product_id',
    'last_updated_at' => 'last_updated_at'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
