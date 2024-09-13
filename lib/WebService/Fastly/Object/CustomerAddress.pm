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
package WebService::Fastly::Object::CustomerAddress;

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
                                  class => 'CustomerAddress',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => 'The type of the address.',
        format => '',
        read_only => 'false',
            },
    'address_1' => {
        datatype => 'string',
        base_name => 'address_1',
        description => 'The street number and name of the address.',
        format => '',
        read_only => 'false',
            },
    'address_2' => {
        datatype => 'string',
        base_name => 'address_2',
        description => 'Additional address line for unit number, P.O. Box, etc.',
        format => '',
        read_only => 'false',
            },
    'locality' => {
        datatype => 'string',
        base_name => 'locality',
        description => 'City, town, or locality name the address is located.',
        format => '',
        read_only => 'false',
            },
    'region' => {
        datatype => 'string',
        base_name => 'region',
        description => 'State, province, or region of the address.',
        format => '',
        read_only => 'false',
            },
    'country' => {
        datatype => 'string',
        base_name => 'country',
        description => 'ISO 3166-1 alpha-2 country code (e.g., \&quot;US\&quot;, \&quot;CA\&quot;, \&quot;NZ\&quot;)',
        format => '',
        read_only => 'false',
            },
    'postal_code' => {
        datatype => 'string',
        base_name => 'postal_code',
        description => 'Postal or Zip code of the address.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'type' => 'string',
    'address_1' => 'string',
    'address_2' => 'string',
    'locality' => 'string',
    'region' => 'string',
    'country' => 'string',
    'postal_code' => 'string'
} );

__PACKAGE__->attribute_map( {
    'type' => 'type',
    'address_1' => 'address_1',
    'address_2' => 'address_2',
    'locality' => 'locality',
    'region' => 'region',
    'country' => 'country',
    'postal_code' => 'postal_code'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
