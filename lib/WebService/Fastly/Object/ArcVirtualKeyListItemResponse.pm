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
package WebService::Fastly::Object::ArcVirtualKeyListItemResponse;

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

use WebService::Fastly::Object::ArcVirtualKey;
use WebService::Fastly::Object::ArcVirtualKeyListItemResponseExtra;

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
                                  class => 'ArcVirtualKeyListItemResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'A display name for the virtual key.',
        format => '',
        read_only => 'false',
            },
    'expires_at' => {
        datatype => 'DateTime',
        base_name => 'expires_at',
        description => 'The date and time the key expires, in RFC 3339 format. Omit for a key that doesn&#39;t expire.',
        format => 'date-time',
        read_only => 'false',
            },
    'security_enabled' => {
        datatype => 'boolean',
        base_name => 'security_enabled',
        description => 'Whether AI Firewall security is enabled for requests made with this key.',
        format => '',
        read_only => 'false',
            },
    'security_action' => {
        datatype => 'string',
        base_name => 'security_action',
        description => 'The action AI Firewall takes when it detects a violation on a request made with this key. Only meaningful when &#x60;security_enabled&#x60; is &#x60;true&#x60;.',
        format => '',
        read_only => 'false',
            },
    'rpm_limit' => {
        datatype => 'int',
        base_name => 'rpm_limit',
        description => 'The requests-per-minute limit for this key. Omit for no limit.',
        format => '',
        read_only => 'false',
            },
    'tpm_limit' => {
        datatype => 'int',
        base_name => 'tpm_limit',
        description => 'The tokens-per-minute limit for this key. Omit for no limit.',
        format => '',
        read_only => 'false',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'The unique identifier of the virtual key.',
        format => '',
        read_only => 'true',
            },
    'customer_id' => {
        datatype => 'string',
        base_name => 'customer_id',
        description => 'The ID of the customer account that owns the key.',
        format => '',
        read_only => 'true',
            },
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => 'The type of the resource.',
        format => '',
        read_only => 'true',
            },
    'user_id' => {
        datatype => 'string',
        base_name => 'user_id',
        description => 'The ID of the user who created the key.',
        format => '',
        read_only => 'true',
            },
    'user_name' => {
        datatype => 'string',
        base_name => 'user_name',
        description => 'The display name of the user who created the key.',
        format => '',
        read_only => 'true',
            },
    'last_used_at' => {
        datatype => 'DateTime',
        base_name => 'last_used_at',
        description => 'The date and time the key was last used to make a request, in RFC 3339 format. &#x60;null&#x60; if the key has never been used.',
        format => 'date-time',
        read_only => 'true',
            },
    'deleted_at' => {
        datatype => 'DateTime',
        base_name => 'deleted_at',
        description => 'The date and time the key was deleted, in RFC 3339 format. &#x60;null&#x60; unless the key was deleted and &#x60;include_deleted&#x60; was used to retrieve it.',
        format => 'date-time',
        read_only => 'true',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
        description => 'The date and time the key was created, in RFC 3339 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updated_at',
        description => 'The date and time the key was last updated, in RFC 3339 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'spend_limit_enabled' => {
        datatype => 'boolean',
        base_name => 'spend_limit_enabled',
        description => 'Whether a spend limit is enabled for this key.',
        format => '',
        read_only => 'true',
            },
    'spend_limit_enabled_on' => {
        datatype => 'DateTime',
        base_name => 'spend_limit_enabled_on',
        description => 'The date and time &#x60;spend_limit_enabled&#x60; was last set to &#x60;true&#x60;, in RFC 3339 format. &#x60;null&#x60; if the spend limit has never been enabled. This timestamp is not cleared when &#x60;spend_limit_enabled&#x60; is later set back to &#x60;false&#x60;, so it can be non-null even when the spend limit is currently disabled. ',
        format => 'date-time',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'name' => 'string',
    'expires_at' => 'DateTime',
    'security_enabled' => 'boolean',
    'security_action' => 'string',
    'rpm_limit' => 'int',
    'tpm_limit' => 'int',
    'id' => 'string',
    'customer_id' => 'string',
    'type' => 'string',
    'user_id' => 'string',
    'user_name' => 'string',
    'last_used_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'spend_limit_enabled' => 'boolean',
    'spend_limit_enabled_on' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'expires_at' => 'expires_at',
    'security_enabled' => 'security_enabled',
    'security_action' => 'security_action',
    'rpm_limit' => 'rpm_limit',
    'tpm_limit' => 'tpm_limit',
    'id' => 'id',
    'customer_id' => 'customer_id',
    'type' => 'type',
    'user_id' => 'user_id',
    'user_name' => 'user_name',
    'last_used_at' => 'last_used_at',
    'deleted_at' => 'deleted_at',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'spend_limit_enabled' => 'spend_limit_enabled',
    'spend_limit_enabled_on' => 'spend_limit_enabled_on'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'expires_at' => 'true',
    'rpm_limit' => 'true',
    'tpm_limit' => 'true',
    'last_used_at' => 'true',
    'deleted_at' => 'true',
    'spend_limit_enabled_on' => 'true',
} );


1;
