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
package WebService::Fastly::Object::LineItemData;

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

use WebService::Fastly::Object::LineItemDataReadOnlyInvoiceId;

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
                                  class => 'LineItemData',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'amount' => {
        datatype => 'double',
        base_name => 'amount',
        description => '',
        format => '',
        read_only => 'false',
            },
    'aria_invoice_id' => {
        datatype => 'LineItemDataReadOnlyInvoiceId',
        base_name => 'aria_invoice_id',
        description => '',
        format => '',
        read_only => 'false',
            },
    'client_service_id' => {
        datatype => 'string',
        base_name => 'client_service_id',
        description => '',
        format => '',
        read_only => 'false',
            },
    'credit_coupon_code' => {
        datatype => 'string',
        base_name => 'credit_coupon_code',
        description => '',
        format => '',
        read_only => 'false',
            },
    'description' => {
        datatype => 'string',
        base_name => 'description',
        description => '',
        format => '',
        read_only => 'false',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => 'false',
            },
    'line_number' => {
        datatype => 'int',
        base_name => 'line_number',
        description => '',
        format => '',
        read_only => 'false',
            },
    'plan_name' => {
        datatype => 'string',
        base_name => 'plan_name',
        description => '',
        format => '',
        read_only => 'false',
            },
    'plan_no' => {
        datatype => 'double',
        base_name => 'plan_no',
        description => '',
        format => '',
        read_only => 'false',
            },
    'rate_per_unit' => {
        datatype => 'double',
        base_name => 'rate_per_unit',
        description => '',
        format => '',
        read_only => 'false',
            },
    'rate_schedule_no' => {
        datatype => 'double',
        base_name => 'rate_schedule_no',
        description => '',
        format => '',
        read_only => 'false',
            },
    'rate_schedule_tier_no' => {
        datatype => 'double',
        base_name => 'rate_schedule_tier_no',
        description => '',
        format => '',
        read_only => 'false',
            },
    'service_name' => {
        datatype => 'string',
        base_name => 'service_name',
        description => '',
        format => '',
        read_only => 'false',
            },
    'service_no' => {
        datatype => 'double',
        base_name => 'service_no',
        description => '',
        format => '',
        read_only => 'false',
            },
    'units' => {
        datatype => 'double',
        base_name => 'units',
        description => '',
        format => '',
        read_only => 'false',
            },
    'usage_type_cd' => {
        datatype => 'string',
        base_name => 'usage_type_cd',
        description => '',
        format => '',
        read_only => 'false',
            },
    'usage_type_no' => {
        datatype => 'double',
        base_name => 'usage_type_no',
        description => '',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'amount' => 'double',
    'aria_invoice_id' => 'LineItemDataReadOnlyInvoiceId',
    'client_service_id' => 'string',
    'credit_coupon_code' => 'string',
    'description' => 'string',
    'id' => 'string',
    'line_number' => 'int',
    'plan_name' => 'string',
    'plan_no' => 'double',
    'rate_per_unit' => 'double',
    'rate_schedule_no' => 'double',
    'rate_schedule_tier_no' => 'double',
    'service_name' => 'string',
    'service_no' => 'double',
    'units' => 'double',
    'usage_type_cd' => 'string',
    'usage_type_no' => 'double'
} );

__PACKAGE__->attribute_map( {
    'amount' => 'amount',
    'aria_invoice_id' => 'aria_invoice_id',
    'client_service_id' => 'client_service_id',
    'credit_coupon_code' => 'credit_coupon_code',
    'description' => 'description',
    'id' => 'id',
    'line_number' => 'line_number',
    'plan_name' => 'plan_name',
    'plan_no' => 'plan_no',
    'rate_per_unit' => 'rate_per_unit',
    'rate_schedule_no' => 'rate_schedule_no',
    'rate_schedule_tier_no' => 'rate_schedule_tier_no',
    'service_name' => 'service_name',
    'service_no' => 'service_no',
    'units' => 'units',
    'usage_type_cd' => 'usage_type_cd',
    'usage_type_no' => 'usage_type_no'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'credit_coupon_code' => 'true',
    'rate_schedule_no' => 'true',
    'rate_schedule_tier_no' => 'true',
    'usage_type_cd' => 'true',
    'usage_type_no' => 'true',
} );


1;
