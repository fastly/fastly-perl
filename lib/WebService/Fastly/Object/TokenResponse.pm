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
package WebService::Fastly::Object::TokenResponse;

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

use WebService::Fastly::Object::Timestamps;
use WebService::Fastly::Object::Token;
use WebService::Fastly::Object::TokenResponseAllOf;

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
                                  class => 'TokenResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'services' => {
        datatype => 'ARRAY[string]',
        base_name => 'services',
        description => 'List of alphanumeric strings identifying services (optional). If no services are specified, the token will have access to all services on the account. ',
        format => '',
        read_only => 'true',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Name of the token.',
        format => '',
        read_only => 'false',
            },
    'scope' => {
        datatype => 'string',
        base_name => 'scope',
        description => 'Space-delimited list of authorization scope.',
        format => '',
        read_only => 'false',
            },
    'created_at' => {
        datatype => 'string',
        base_name => 'created_at',
        description => 'Time-stamp (UTC) of when the token was created.',
        format => '',
        read_only => 'false',
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
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => 'true',
            },
    'user_id' => {
        datatype => 'string',
        base_name => 'user_id',
        description => '',
        format => '',
        read_only => 'true',
            },
    'last_used_at' => {
        datatype => 'string',
        base_name => 'last_used_at',
        description => 'Time-stamp (UTC) of when the token was last used.',
        format => '',
        read_only => 'true',
            },
    'expires_at' => {
        datatype => 'string',
        base_name => 'expires_at',
        description => 'Time-stamp (UTC) of when the token will expire (optional).',
        format => '',
        read_only => 'false',
            },
    'ip' => {
        datatype => 'string',
        base_name => 'ip',
        description => 'IP Address of the client that last used the token.',
        format => '',
        read_only => 'false',
            },
    'user_agent' => {
        datatype => 'string',
        base_name => 'user_agent',
        description => 'User-Agent header of the client that last used the token.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'services' => 'ARRAY[string]',
    'name' => 'string',
    'scope' => 'string',
    'created_at' => 'string',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'id' => 'string',
    'user_id' => 'string',
    'last_used_at' => 'string',
    'expires_at' => 'string',
    'ip' => 'string',
    'user_agent' => 'string'
} );

__PACKAGE__->attribute_map( {
    'services' => 'services',
    'name' => 'name',
    'scope' => 'scope',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'id' => 'id',
    'user_id' => 'user_id',
    'last_used_at' => 'last_used_at',
    'expires_at' => 'expires_at',
    'ip' => 'ip',
    'user_agent' => 'user_agent'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'deleted_at' => 'true',
    'updated_at' => 'true',
} );


1;
