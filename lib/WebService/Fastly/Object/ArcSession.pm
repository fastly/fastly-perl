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
package WebService::Fastly::Object::ArcSession;

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

use WebService::Fastly::Object::ArcSessionLogEntry;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A session log. Other than &#x60;firewall_enabled&#x60; (always present), &#x60;firewall_*&#x60; fields are only present when AI Firewall ran on a request in this session. They&#39;re absent (not merely empty) otherwise, so their absence and an empty value mean different things. 
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


__PACKAGE__->class_documentation({description => 'A session log. Other than &#x60;firewall_enabled&#x60; (always present), &#x60;firewall_*&#x60; fields are only present when AI Firewall ran on a request in this session. They&#39;re absent (not merely empty) otherwise, so their absence and an empty value mean different things. ',
                                  class => 'ArcSession',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'The unique identifier of the session.',
        format => '',
        read_only => 'true',
            },
    'virtual_key_id' => {
        datatype => 'string',
        base_name => 'virtual_key_id',
        description => 'The ID of the virtual key used for this session.',
        format => '',
        read_only => 'false',
            },
    'virtual_key_name' => {
        datatype => 'string',
        base_name => 'virtual_key_name',
        description => 'The display name of the virtual key used for this session.',
        format => '',
        read_only => 'false',
            },
    'model' => {
        datatype => 'string',
        base_name => 'model',
        description => 'The AI model identifier used.',
        format => '',
        read_only => 'false',
            },
    'provider' => {
        datatype => 'string',
        base_name => 'provider',
        description => 'The name of the provider connection that ultimately served the session.',
        format => '',
        read_only => 'false',
            },
    'provider_connection_id' => {
        datatype => 'string',
        base_name => 'provider_connection_id',
        description => 'The ID of the provider connection that ultimately served the session.',
        format => '',
        read_only => 'false',
            },
    'primary_provider' => {
        datatype => 'string',
        base_name => 'primary_provider',
        description => 'The ID of the provider connection originally requested, before any failover occurred.',
        format => '',
        read_only => 'false',
            },
    'requests' => {
        datatype => 'int',
        base_name => 'requests',
        description => 'The number of requests made in this session.',
        format => '',
        read_only => 'false',
            },
    'input_tokens' => {
        datatype => 'int',
        base_name => 'input_tokens',
        description => 'The total input tokens consumed in this session.',
        format => '',
        read_only => 'false',
            },
    'output_tokens' => {
        datatype => 'int',
        base_name => 'output_tokens',
        description => 'The total output tokens generated in this session.',
        format => '',
        read_only => 'false',
            },
    'violations' => {
        datatype => 'int',
        base_name => 'violations',
        description => 'The number of AI Firewall violations detected in this session.',
        format => '',
        read_only => 'false',
            },
    'firewall_enabled' => {
        datatype => 'boolean',
        base_name => 'firewall_enabled',
        description => 'Whether AI Firewall was enabled for this session&#39;s virtual key.',
        format => '',
        read_only => 'false',
            },
    'firewall_outcome' => {
        datatype => 'string',
        base_name => 'firewall_outcome',
        description => 'The outcome AI Firewall reached for this session. Present only when AI Firewall ran.',
        format => '',
        read_only => 'false',
            },
    'firewall_stage' => {
        datatype => 'string',
        base_name => 'firewall_stage',
        description => 'The AI Firewall stage that produced the outcome (for example, the request or response stage). Present only when AI Firewall ran.',
        format => '',
        read_only => 'false',
            },
    'firewall_policy' => {
        datatype => 'string',
        base_name => 'firewall_policy',
        description => 'The AI Firewall policy that was applied. Present only when AI Firewall ran.',
        format => '',
        read_only => 'false',
            },
    'firewall_incomplete_reason' => {
        datatype => 'string',
        base_name => 'firewall_incomplete_reason',
        description => 'Why AI Firewall inspection was incomplete, if applicable. Present only when AI Firewall ran and inspection didn&#39;t complete.',
        format => '',
        read_only => 'false',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
        description => 'The date and time the session was created, in RFC 3339 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updated_at',
        description => 'The date and time the session was last updated, in RFC 3339 format.',
        format => 'date-time',
        read_only => 'true',
            },
    'logs' => {
        datatype => 'ARRAY[ArcSessionLogEntry]',
        base_name => 'logs',
        description => 'The request and response pairs recorded for this session.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'virtual_key_id' => 'string',
    'virtual_key_name' => 'string',
    'model' => 'string',
    'provider' => 'string',
    'provider_connection_id' => 'string',
    'primary_provider' => 'string',
    'requests' => 'int',
    'input_tokens' => 'int',
    'output_tokens' => 'int',
    'violations' => 'int',
    'firewall_enabled' => 'boolean',
    'firewall_outcome' => 'string',
    'firewall_stage' => 'string',
    'firewall_policy' => 'string',
    'firewall_incomplete_reason' => 'string',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'logs' => 'ARRAY[ArcSessionLogEntry]'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'virtual_key_id' => 'virtual_key_id',
    'virtual_key_name' => 'virtual_key_name',
    'model' => 'model',
    'provider' => 'provider',
    'provider_connection_id' => 'provider_connection_id',
    'primary_provider' => 'primary_provider',
    'requests' => 'requests',
    'input_tokens' => 'input_tokens',
    'output_tokens' => 'output_tokens',
    'violations' => 'violations',
    'firewall_enabled' => 'firewall_enabled',
    'firewall_outcome' => 'firewall_outcome',
    'firewall_stage' => 'firewall_stage',
    'firewall_policy' => 'firewall_policy',
    'firewall_incomplete_reason' => 'firewall_incomplete_reason',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'logs' => 'logs'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
