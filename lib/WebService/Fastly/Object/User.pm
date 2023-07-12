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
package WebService::Fastly::Object::User;

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

use WebService::Fastly::Object::RoleUser;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
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
                                  class => 'User',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'login' => {
        datatype => 'string',
        base_name => 'login',
        description => '',
        format => '',
        read_only => 'true',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The real life name of the user.',
        format => '',
        read_only => 'false',
            },
    'limit_services' => {
        datatype => 'boolean',
        base_name => 'limit_services',
        description => 'Indicates that the user has limited access to the customer&#39;s services.',
        format => '',
        read_only => 'false',
            },
    'locked' => {
        datatype => 'boolean',
        base_name => 'locked',
        description => 'Indicates whether the is account is locked for editing or not.',
        format => '',
        read_only => 'false',
            },
    'require_new_password' => {
        datatype => 'boolean',
        base_name => 'require_new_password',
        description => 'Indicates if a new password is required at next login.',
        format => '',
        read_only => 'false',
            },
    'role' => {
        datatype => 'RoleUser',
        base_name => 'role',
        description => '',
        format => '',
        read_only => 'false',
            },
    'two_factor_auth_enabled' => {
        datatype => 'boolean',
        base_name => 'two_factor_auth_enabled',
        description => 'Indicates if 2FA is enabled on the user.',
        format => '',
        read_only => 'false',
            },
    'two_factor_setup_required' => {
        datatype => 'boolean',
        base_name => 'two_factor_setup_required',
        description => 'Indicates if 2FA is required by the user&#39;s customer account.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'login' => 'string',
    'name' => 'string',
    'limit_services' => 'boolean',
    'locked' => 'boolean',
    'require_new_password' => 'boolean',
    'role' => 'RoleUser',
    'two_factor_auth_enabled' => 'boolean',
    'two_factor_setup_required' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'login' => 'login',
    'name' => 'name',
    'limit_services' => 'limit_services',
    'locked' => 'locked',
    'require_new_password' => 'require_new_password',
    'role' => 'role',
    'two_factor_auth_enabled' => 'two_factor_auth_enabled',
    'two_factor_setup_required' => 'two_factor_setup_required'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'locked' => 'true',
    'require_new_password' => 'true',
    'two_factor_auth_enabled' => 'true',
} );


1;
