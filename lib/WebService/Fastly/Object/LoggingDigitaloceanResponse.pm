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
package WebService::Fastly::Object::LoggingDigitaloceanResponse;

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

use WebService::Fastly::Object::LoggingCommonResponse;
use WebService::Fastly::Object::LoggingDigitaloceanAdditional;
use WebService::Fastly::Object::LoggingGenericCommonResponse;
use WebService::Fastly::Object::ServiceIdAndVersionString;
use WebService::Fastly::Object::Timestamps;

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
                                  class => 'LoggingDigitaloceanResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The name for the real-time logging configuration.',
        format => '',
        read_only => 'false',
            },
    'placement' => {
        datatype => 'string',
        base_name => 'placement',
        description => 'Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. ',
        format => '',
        read_only => 'false',
            },
    'response_condition' => {
        datatype => 'string',
        base_name => 'response_condition',
        description => 'The name of an existing condition in the configured endpoint, or leave blank to always execute.',
        format => '',
        read_only => 'false',
            },
    'format' => {
        datatype => 'string',
        base_name => 'format',
        description => 'A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).',
        format => '',
        read_only => 'false',
            },
    'log_processing_region' => {
        datatype => 'string',
        base_name => 'log_processing_region',
        description => 'The geographic region where the logs will be processed before streaming. Valid values are &#x60;us&#x60;, &#x60;eu&#x60;, and &#x60;none&#x60; for global.',
        format => '',
        read_only => 'false',
            },
    'format_version' => {
        datatype => 'string',
        base_name => 'format_version',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;. ',
        format => '',
        read_only => 'false',
            },
    'message_type' => {
        datatype => 'string',
        base_name => 'message_type',
        description => 'How the message should be formatted.',
        format => '',
        read_only => 'false',
            },
    'timestamp_format' => {
        datatype => 'string',
        base_name => 'timestamp_format',
        description => 'A timestamp format',
        format => '',
        read_only => 'true',
            },
    'compression_codec' => {
        datatype => 'string',
        base_name => 'compression_codec',
        description => 'The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
        format => '',
        read_only => 'false',
            },
    'period' => {
        datatype => 'string',
        base_name => 'period',
        description => 'How frequently log files are finalized so they can be available for reading (in seconds).',
        format => '',
        read_only => 'false',
            },
    'gzip_level' => {
        datatype => 'string',
        base_name => 'gzip_level',
        description => 'The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.',
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
    'version' => {
        datatype => 'string',
        base_name => 'version',
        description => '',
        format => '',
        read_only => 'true',
            },
    'bucket_name' => {
        datatype => 'string',
        base_name => 'bucket_name',
        description => 'The name of the DigitalOcean Space.',
        format => '',
        read_only => 'false',
            },
    'access_key' => {
        datatype => 'string',
        base_name => 'access_key',
        description => 'Your DigitalOcean Spaces account access key.',
        format => '',
        read_only => 'false',
            },
    'secret_key' => {
        datatype => 'string',
        base_name => 'secret_key',
        description => 'Your DigitalOcean Spaces account secret key.',
        format => '',
        read_only => 'false',
            },
    'domain' => {
        datatype => 'string',
        base_name => 'domain',
        description => 'The domain of the DigitalOcean Spaces endpoint.',
        format => '',
        read_only => 'false',
            },
    'path' => {
        datatype => 'string',
        base_name => 'path',
        description => 'The path to upload logs to.',
        format => '',
        read_only => 'false',
            },
    'public_key' => {
        datatype => 'string',
        base_name => 'public_key',
        description => 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'name' => 'string',
    'placement' => 'string',
    'response_condition' => 'string',
    'format' => 'string',
    'log_processing_region' => 'string',
    'format_version' => 'string',
    'message_type' => 'string',
    'timestamp_format' => 'string',
    'compression_codec' => 'string',
    'period' => 'string',
    'gzip_level' => 'string',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'service_id' => 'string',
    'version' => 'string',
    'bucket_name' => 'string',
    'access_key' => 'string',
    'secret_key' => 'string',
    'domain' => 'string',
    'path' => 'string',
    'public_key' => 'string'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'placement' => 'placement',
    'response_condition' => 'response_condition',
    'format' => 'format',
    'log_processing_region' => 'log_processing_region',
    'format_version' => 'format_version',
    'message_type' => 'message_type',
    'timestamp_format' => 'timestamp_format',
    'compression_codec' => 'compression_codec',
    'period' => 'period',
    'gzip_level' => 'gzip_level',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'service_id' => 'service_id',
    'version' => 'version',
    'bucket_name' => 'bucket_name',
    'access_key' => 'access_key',
    'secret_key' => 'secret_key',
    'domain' => 'domain',
    'path' => 'path',
    'public_key' => 'public_key'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'placement' => 'true',
    'response_condition' => 'true',
    'timestamp_format' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
    'path' => 'true',
    'public_key' => 'true',
} );


1;
