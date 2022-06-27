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
package WebService::Fastly::Object::LoggingHttpsResponse;

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

use WebService::Fastly::Object::LoggingHttps;
use WebService::Fastly::Object::LoggingMessageType;
use WebService::Fastly::Object::ServiceIdAndVersion;
use WebService::Fastly::Object::Timestamps;

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


__PACKAGE__->class_documentation({description => '',
                                  class => 'LoggingHttpsResponse',
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
    'format_version' => {
        datatype => 'int',
        base_name => 'format_version',
        description => 'The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  ',
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
        description => 'A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).',
        format => '',
        read_only => 'false',
            },
    'tls_ca_cert' => {
        datatype => 'string',
        base_name => 'tls_ca_cert',
        description => 'A secure certificate to authenticate a server with. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_client_cert' => {
        datatype => 'string',
        base_name => 'tls_client_cert',
        description => 'The client certificate used to make authenticated requests. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_client_key' => {
        datatype => 'string',
        base_name => 'tls_client_key',
        description => 'The client private key used to make authenticated requests. Must be in PEM format.',
        format => '',
        read_only => 'false',
            },
    'tls_hostname' => {
        datatype => 'string',
        base_name => 'tls_hostname',
        description => 'The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.',
        format => '',
        read_only => 'false',
            },
    'request_max_entries' => {
        datatype => 'int',
        base_name => 'request_max_entries',
        description => 'The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k).',
        format => '',
        read_only => 'false',
            },
    'request_max_bytes' => {
        datatype => 'int',
        base_name => 'request_max_bytes',
        description => 'The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB).',
        format => '',
        read_only => 'false',
            },
    'url' => {
        datatype => 'string',
        base_name => 'url',
        description => 'The URL to send logs to. Must use HTTPS. Required.',
        format => '',
        read_only => 'false',
            },
    'content_type' => {
        datatype => 'string',
        base_name => 'content_type',
        description => 'Content type of the header sent with the request.',
        format => '',
        read_only => 'false',
            },
    'header_name' => {
        datatype => 'string',
        base_name => 'header_name',
        description => 'Name of the custom header sent with the request.',
        format => '',
        read_only => 'false',
            },
    'message_type' => {
        datatype => 'LoggingMessageType',
        base_name => 'message_type',
        description => '',
        format => '',
        read_only => 'false',
            },
    'header_value' => {
        datatype => 'string',
        base_name => 'header_value',
        description => 'Value of the custom header sent with the request.',
        format => '',
        read_only => 'false',
            },
    'method' => {
        datatype => 'string',
        base_name => 'method',
        description => 'HTTP method used for request.',
        format => '',
        read_only => 'false',
            },
    'json_format' => {
        datatype => 'string',
        base_name => 'json_format',
        description => 'Enforces valid JSON formatting for log entries.',
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
        datatype => 'int',
        base_name => 'version',
        description => '',
        format => '',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'name' => 'string',
    'placement' => 'string',
    'format_version' => 'int',
    'response_condition' => 'string',
    'format' => 'string',
    'tls_ca_cert' => 'string',
    'tls_client_cert' => 'string',
    'tls_client_key' => 'string',
    'tls_hostname' => 'string',
    'request_max_entries' => 'int',
    'request_max_bytes' => 'int',
    'url' => 'string',
    'content_type' => 'string',
    'header_name' => 'string',
    'message_type' => 'LoggingMessageType',
    'header_value' => 'string',
    'method' => 'string',
    'json_format' => 'string',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'service_id' => 'string',
    'version' => 'int'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'placement' => 'placement',
    'format_version' => 'format_version',
    'response_condition' => 'response_condition',
    'format' => 'format',
    'tls_ca_cert' => 'tls_ca_cert',
    'tls_client_cert' => 'tls_client_cert',
    'tls_client_key' => 'tls_client_key',
    'tls_hostname' => 'tls_hostname',
    'request_max_entries' => 'request_max_entries',
    'request_max_bytes' => 'request_max_bytes',
    'url' => 'url',
    'content_type' => 'content_type',
    'header_name' => 'header_name',
    'message_type' => 'message_type',
    'header_value' => 'header_value',
    'method' => 'method',
    'json_format' => 'json_format',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'service_id' => 'service_id',
    'version' => 'version'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'placement' => 'true',
    'response_condition' => 'true',
    'tls_ca_cert' => 'true',
    'tls_client_cert' => 'true',
    'tls_client_key' => 'true',
    'tls_hostname' => 'true',
    'content_type' => 'true',
    'header_name' => 'true',
    'header_value' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
    'service_id' => 'true',
    'version' => 'true',
} );


1;
