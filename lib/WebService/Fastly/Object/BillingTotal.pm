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
package WebService::Fastly::Object::BillingTotal;

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

use WebService::Fastly::Object::BillingTotalExtras;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Complete summary of the billing information.
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


__PACKAGE__->class_documentation({description => 'Complete summary of the billing information.',
                                  class => 'BillingTotal',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'bandwidth' => {
        datatype => 'double',
        base_name => 'bandwidth',
        description => 'The total amount of bandwidth used this month (See bandwidth_units for measurement).',
        format => '',
        read_only => 'false',
            },
    'bandwidth_cost' => {
        datatype => 'double',
        base_name => 'bandwidth_cost',
        description => 'The cost of the bandwidth used this month in USD.',
        format => '',
        read_only => 'false',
            },
    'bandwidth_units' => {
        datatype => 'string',
        base_name => 'bandwidth_units',
        description => 'Bandwidth measurement units based on billing plan.',
        format => '',
        read_only => 'false',
            },
    'cost' => {
        datatype => 'double',
        base_name => 'cost',
        description => 'The final amount to be paid.',
        format => '',
        read_only => 'false',
            },
    'cost_before_discount' => {
        datatype => 'double',
        base_name => 'cost_before_discount',
        description => 'Total incurred cost plus extras cost.',
        format => '',
        read_only => 'false',
            },
    'discount' => {
        datatype => 'double',
        base_name => 'discount',
        description => 'Calculated discount rate.',
        format => '',
        read_only => 'false',
            },
    'extras' => {
        datatype => 'ARRAY[BillingTotalExtras]',
        base_name => 'extras',
        description => 'A list of any extras for this invoice.',
        format => '',
        read_only => 'false',
            },
    'extras_cost' => {
        datatype => 'double',
        base_name => 'extras_cost',
        description => 'Total cost of all extras.',
        format => '',
        read_only => 'false',
            },
    'incurred_cost' => {
        datatype => 'double',
        base_name => 'incurred_cost',
        description => 'The total cost of bandwidth and requests used this month.',
        format => '',
        read_only => 'false',
            },
    'overage' => {
        datatype => 'double',
        base_name => 'overage',
        description => 'How much over the plan minimum has been incurred.',
        format => '',
        read_only => 'false',
            },
    'plan_code' => {
        datatype => 'string',
        base_name => 'plan_code',
        description => 'The short code the plan this invoice was generated under.',
        format => '',
        read_only => 'false',
            },
    'plan_minimum' => {
        datatype => 'double',
        base_name => 'plan_minimum',
        description => 'The minimum cost of this plan.',
        format => '',
        read_only => 'false',
            },
    'plan_name' => {
        datatype => 'string',
        base_name => 'plan_name',
        description => 'The name of the plan this invoice was generated under.',
        format => '',
        read_only => 'false',
            },
    'requests' => {
        datatype => 'double',
        base_name => 'requests',
        description => 'The total number of requests used this month.',
        format => '',
        read_only => 'false',
            },
    'requests_cost' => {
        datatype => 'double',
        base_name => 'requests_cost',
        description => 'The cost of the requests used this month.',
        format => '',
        read_only => 'false',
            },
    'terms' => {
        datatype => 'string',
        base_name => 'terms',
        description => 'Payment terms. Almost always Net15.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'bandwidth' => 'double',
    'bandwidth_cost' => 'double',
    'bandwidth_units' => 'string',
    'cost' => 'double',
    'cost_before_discount' => 'double',
    'discount' => 'double',
    'extras' => 'ARRAY[BillingTotalExtras]',
    'extras_cost' => 'double',
    'incurred_cost' => 'double',
    'overage' => 'double',
    'plan_code' => 'string',
    'plan_minimum' => 'double',
    'plan_name' => 'string',
    'requests' => 'double',
    'requests_cost' => 'double',
    'terms' => 'string'
} );

__PACKAGE__->attribute_map( {
    'bandwidth' => 'bandwidth',
    'bandwidth_cost' => 'bandwidth_cost',
    'bandwidth_units' => 'bandwidth_units',
    'cost' => 'cost',
    'cost_before_discount' => 'cost_before_discount',
    'discount' => 'discount',
    'extras' => 'extras',
    'extras_cost' => 'extras_cost',
    'incurred_cost' => 'incurred_cost',
    'overage' => 'overage',
    'plan_code' => 'plan_code',
    'plan_minimum' => 'plan_minimum',
    'plan_name' => 'plan_name',
    'requests' => 'requests',
    'requests_cost' => 'requests_cost',
    'terms' => 'terms'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'bandwidth_units' => 'true',
} );


1;
