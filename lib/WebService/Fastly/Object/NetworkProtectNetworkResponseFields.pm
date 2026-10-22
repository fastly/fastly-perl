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
package WebService::Fastly::Object::NetworkProtectNetworkResponseFields;

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

use WebService::Fastly::Object::NetworkProtectLoaStatus;
use WebService::Fastly::Object::NetworkProtectRoaStatus;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Read-only fields and required fields in a network response.
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


__PACKAGE__->class_documentation({description => 'Read-only fields and required fields in a network response.',
                                  class => 'NetworkProtectNetworkResponseFields',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'A read-only unique identifier for a Network Protect resource.',
        format => '',
        read_only => 'true',
            },
    'roa_status' => {
        datatype => 'NetworkProtectRoaStatus',
        base_name => 'roa_status',
        description => '',
        format => '',
        read_only => 'false',
            },
    'roa_checked_at' => {
        datatype => 'DateTime',
        base_name => 'roa_checked_at',
        description => 'When Fastly last completed a ROA check. Null while the status is pending. A failed check leaves this unchanged; an old value can indicate delayed or failing checks. Null also means the controller did not report a check time.',
        format => 'date-time',
        read_only => 'true',
            },
    'roa_data_as_of' => {
        datatype => 'DateTime',
        base_name => 'roa_data_as_of',
        description => 'When the RPKI dataset used by the last check was built. This is not the same as &#x60;roa_checked_at&#x60;; a recent check can use an older dataset. Null while the status is pending or when no dataset build time was reported.',
        format => 'date-time',
        read_only => 'true',
            },
    'loa_status' => {
        datatype => 'NetworkProtectLoaStatus',
        base_name => 'loa_status',
        description => '',
        format => '',
        read_only => 'false',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
        description => 'An ISO 8601 timestamp in UTC.',
        format => 'date-time',
        read_only => 'true',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updated_at',
        description => 'An ISO 8601 timestamp in UTC.',
        format => 'date-time',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'roa_status' => 'NetworkProtectRoaStatus',
    'roa_checked_at' => 'DateTime',
    'roa_data_as_of' => 'DateTime',
    'loa_status' => 'NetworkProtectLoaStatus',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'roa_status' => 'roa_status',
    'roa_checked_at' => 'roa_checked_at',
    'roa_data_as_of' => 'roa_data_as_of',
    'loa_status' => 'loa_status',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'roa_checked_at' => 'true',
    'roa_data_as_of' => 'true',
} );


1;
