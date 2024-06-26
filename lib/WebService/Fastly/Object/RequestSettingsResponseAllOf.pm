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
package WebService::Fastly::Object::RequestSettingsResponseAllOf;

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
                                  class => 'RequestSettingsResponseAllOf',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'bypass_busy_wait' => {
        datatype => 'string',
        base_name => 'bypass_busy_wait',
        description => 'Disable collapsed forwarding, so you don&#39;t wait for other objects to origin.',
        format => '',
        read_only => 'false',
            },
    'force_miss' => {
        datatype => 'string',
        base_name => 'force_miss',
        description => 'Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.',
        format => '',
        read_only => 'false',
            },
    'force_ssl' => {
        datatype => 'string',
        base_name => 'force_ssl',
        description => 'Forces the request use SSL (redirects a non-SSL to SSL).',
        format => '',
        read_only => 'false',
            },
    'geo_headers' => {
        datatype => 'string',
        base_name => 'geo_headers',
        description => 'Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.',
        format => '',
        read_only => 'false',
            },
    'max_stale_age' => {
        datatype => 'string',
        base_name => 'max_stale_age',
        description => 'How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.',
        format => '',
        read_only => 'false',
            },
    'timer_support' => {
        datatype => 'string',
        base_name => 'timer_support',
        description => 'Injects the X-Timer info into the request for viewing origin fetch durations.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'bypass_busy_wait' => 'string',
    'force_miss' => 'string',
    'force_ssl' => 'string',
    'geo_headers' => 'string',
    'max_stale_age' => 'string',
    'timer_support' => 'string'
} );

__PACKAGE__->attribute_map( {
    'bypass_busy_wait' => 'bypass_busy_wait',
    'force_miss' => 'force_miss',
    'force_ssl' => 'force_ssl',
    'geo_headers' => 'geo_headers',
    'max_stale_age' => 'max_stale_age',
    'timer_support' => 'timer_support'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'bypass_busy_wait' => 'true',
    'force_miss' => 'true',
    'geo_headers' => 'true',
    'max_stale_age' => 'true',
    'timer_support' => 'true',
} );


1;
