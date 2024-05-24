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
package WebService::Fastly::Object::ServiceVersionDetailOrNull;

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

use WebService::Fastly::Object::BackendResponse;
use WebService::Fastly::Object::CacheSettingResponse;
use WebService::Fastly::Object::ConditionResponse;
use WebService::Fastly::Object::Director;
use WebService::Fastly::Object::DomainResponse;
use WebService::Fastly::Object::GzipResponse;
use WebService::Fastly::Object::HeaderResponse;
use WebService::Fastly::Object::HealthcheckResponse;
use WebService::Fastly::Object::RequestSettingsResponse;
use WebService::Fastly::Object::ResponseObjectResponse;
use WebService::Fastly::Object::SchemasSnippetResponse;
use WebService::Fastly::Object::SchemasVclResponse;
use WebService::Fastly::Object::SchemasVersionResponse;
use WebService::Fastly::Object::VersionDetail;
use WebService::Fastly::Object::VersionDetailSettings;

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
                                  class => 'ServiceVersionDetailOrNull',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'active' => {
        datatype => 'boolean',
        base_name => 'active',
        description => 'Whether this is the active version or not.',
        format => '',
        read_only => 'false',
            },
    'comment' => {
        datatype => 'string',
        base_name => 'comment',
        description => 'A freeform descriptive note.',
        format => '',
        read_only => 'false',
            },
    'deployed' => {
        datatype => 'boolean',
        base_name => 'deployed',
        description => 'Unused at this time.',
        format => '',
        read_only => 'false',
            },
    'locked' => {
        datatype => 'boolean',
        base_name => 'locked',
        description => 'Whether this version is locked or not. Objects can not be added or edited on locked versions.',
        format => '',
        read_only => 'false',
            },
    'number' => {
        datatype => 'int',
        base_name => 'number',
        description => 'The number of this version.',
        format => '',
        read_only => 'true',
            },
    'staging' => {
        datatype => 'boolean',
        base_name => 'staging',
        description => 'Unused at this time.',
        format => '',
        read_only => 'false',
            },
    'testing' => {
        datatype => 'boolean',
        base_name => 'testing',
        description => 'Unused at this time.',
        format => '',
        read_only => 'false',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'created_at',
        description => 'Date and time in ISO 8601 format.',
        format => 'date-time',
        read_only => 'true',
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
    'service_id' => {
        datatype => 'string',
        base_name => 'service_id',
        description => '',
        format => '',
        read_only => 'true',
            },
    'backends' => {
        datatype => 'ARRAY[BackendResponse]',
        base_name => 'backends',
        description => 'List of backends associated to this service.',
        format => '',
        read_only => 'false',
            },
    'cache_settings' => {
        datatype => 'ARRAY[CacheSettingResponse]',
        base_name => 'cache_settings',
        description => 'List of cache settings associated to this service.',
        format => '',
        read_only => 'false',
            },
    'conditions' => {
        datatype => 'ARRAY[ConditionResponse]',
        base_name => 'conditions',
        description => 'List of conditions associated to this service.',
        format => '',
        read_only => 'false',
            },
    'directors' => {
        datatype => 'ARRAY[Director]',
        base_name => 'directors',
        description => 'List of directors associated to this service.',
        format => '',
        read_only => 'false',
            },
    'domains' => {
        datatype => 'ARRAY[DomainResponse]',
        base_name => 'domains',
        description => 'List of domains associated to this service.',
        format => '',
        read_only => 'false',
            },
    'gzips' => {
        datatype => 'ARRAY[GzipResponse]',
        base_name => 'gzips',
        description => 'List of gzip rules associated to this service.',
        format => '',
        read_only => 'false',
            },
    'headers' => {
        datatype => 'ARRAY[HeaderResponse]',
        base_name => 'headers',
        description => 'List of headers associated to this service.',
        format => '',
        read_only => 'false',
            },
    'healthchecks' => {
        datatype => 'ARRAY[HealthcheckResponse]',
        base_name => 'healthchecks',
        description => 'List of healthchecks associated to this service.',
        format => '',
        read_only => 'false',
            },
    'request_settings' => {
        datatype => 'ARRAY[RequestSettingsResponse]',
        base_name => 'request_settings',
        description => 'List of request settings for this service.',
        format => '',
        read_only => 'false',
            },
    'response_objects' => {
        datatype => 'ARRAY[ResponseObjectResponse]',
        base_name => 'response_objects',
        description => 'List of response objects for this service.',
        format => '',
        read_only => 'false',
            },
    'settings' => {
        datatype => 'VersionDetailSettings',
        base_name => 'settings',
        description => '',
        format => '',
        read_only => 'false',
            },
    'snippets' => {
        datatype => 'ARRAY[SchemasSnippetResponse]',
        base_name => 'snippets',
        description => 'List of VCL snippets for this service.',
        format => '',
        read_only => 'false',
            },
    'vcls' => {
        datatype => 'ARRAY[SchemasVclResponse]',
        base_name => 'vcls',
        description => 'List of VCL files for this service.',
        format => '',
        read_only => 'false',
            },
    'wordpress' => {
        datatype => 'ARRAY[object]',
        base_name => 'wordpress',
        description => 'A list of Wordpress rules with this service.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'active' => 'boolean',
    'comment' => 'string',
    'deployed' => 'boolean',
    'locked' => 'boolean',
    'number' => 'int',
    'staging' => 'boolean',
    'testing' => 'boolean',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'service_id' => 'string',
    'backends' => 'ARRAY[BackendResponse]',
    'cache_settings' => 'ARRAY[CacheSettingResponse]',
    'conditions' => 'ARRAY[ConditionResponse]',
    'directors' => 'ARRAY[Director]',
    'domains' => 'ARRAY[DomainResponse]',
    'gzips' => 'ARRAY[GzipResponse]',
    'headers' => 'ARRAY[HeaderResponse]',
    'healthchecks' => 'ARRAY[HealthcheckResponse]',
    'request_settings' => 'ARRAY[RequestSettingsResponse]',
    'response_objects' => 'ARRAY[ResponseObjectResponse]',
    'settings' => 'VersionDetailSettings',
    'snippets' => 'ARRAY[SchemasSnippetResponse]',
    'vcls' => 'ARRAY[SchemasVclResponse]',
    'wordpress' => 'ARRAY[object]'
} );

__PACKAGE__->attribute_map( {
    'active' => 'active',
    'comment' => 'comment',
    'deployed' => 'deployed',
    'locked' => 'locked',
    'number' => 'number',
    'staging' => 'staging',
    'testing' => 'testing',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'service_id' => 'service_id',
    'backends' => 'backends',
    'cache_settings' => 'cache_settings',
    'conditions' => 'conditions',
    'directors' => 'directors',
    'domains' => 'domains',
    'gzips' => 'gzips',
    'headers' => 'headers',
    'healthchecks' => 'healthchecks',
    'request_settings' => 'request_settings',
    'response_objects' => 'response_objects',
    'settings' => 'settings',
    'snippets' => 'snippets',
    'vcls' => 'vcls',
    'wordpress' => 'wordpress'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'comment' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
} );


1;
