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
package WebService::Fastly::Object::DdosProtectionRule;

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

use WebService::Fastly::Object::DdosProtectionAction;
use WebService::Fastly::Object::DdosProtectionRuleAllOf;
use WebService::Fastly::Object::TimestampsNoDelete;

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
                                  class => 'DdosProtectionRule',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
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
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'Unique ID of the rule.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'A human-readable name for the rule.',
        format => '',
        read_only => 'false',
            },
    'action' => {
        datatype => 'DdosProtectionAction',
        base_name => 'action',
        description => '',
        format => '',
        read_only => 'false',
            },
    'customer_id' => {
        datatype => 'string',
        base_name => 'customer_id',
        description => 'Alphanumeric string identifying the customer.',
        format => '',
        read_only => 'false',
            },
    'service_id' => {
        datatype => 'string',
        base_name => 'service_id',
        description => 'Alphanumeric string identifying the service.',
        format => '',
        read_only => 'false',
            },
    'source_ip' => {
        datatype => 'string',
        base_name => 'source_ip',
        description => 'Source IP address attribute.',
        format => '',
        read_only => 'false',
            },
    'country_code' => {
        datatype => 'string',
        base_name => 'country_code',
        description => 'Country code attribute.',
        format => '',
        read_only => 'false',
            },
    'host' => {
        datatype => 'string',
        base_name => 'host',
        description => 'Host attribute.',
        format => '',
        read_only => 'false',
            },
    'asn' => {
        datatype => 'string',
        base_name => 'asn',
        description => 'ASN attribute.',
        format => '',
        read_only => 'false',
            },
    'source_ip_prefix' => {
        datatype => 'string',
        base_name => 'source_ip_prefix',
        description => 'Source IP prefix attribute.',
        format => '',
        read_only => 'false',
            },
    'additional_attributes' => {
        datatype => 'ARRAY[string]',
        base_name => 'additional_attributes',
        description => 'Attribute category for additional, unlisted attributes used in a rule.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'id' => 'string',
    'name' => 'string',
    'action' => 'DdosProtectionAction',
    'customer_id' => 'string',
    'service_id' => 'string',
    'source_ip' => 'string',
    'country_code' => 'string',
    'host' => 'string',
    'asn' => 'string',
    'source_ip_prefix' => 'string',
    'additional_attributes' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'id' => 'id',
    'name' => 'name',
    'action' => 'action',
    'customer_id' => 'customer_id',
    'service_id' => 'service_id',
    'source_ip' => 'source_ip',
    'country_code' => 'country_code',
    'host' => 'host',
    'asn' => 'asn',
    'source_ip_prefix' => 'source_ip_prefix',
    'additional_attributes' => 'additional_attributes'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'created_at' => 'true',
    'updated_at' => 'true',
    'source_ip' => 'true',
    'country_code' => 'true',
    'host' => 'true',
    'asn' => 'true',
    'source_ip_prefix' => 'true',
} );


1;
