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
package WebService::Fastly::Object::LogRecord;

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

use WebService::Fastly::Object::LogPropertyServiceId;

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
                                  class => 'LogRecord',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'customer_id' => {
        datatype => 'string',
        base_name => 'customer_id',
        description => 'The ID of the Fastly customer that owns the service.',
        format => '',
        read_only => 'true',
            },
    'service_id' => {
        datatype => 'LogPropertyServiceId',
        base_name => 'service_id',
        description => '',
        format => '',
        read_only => 'false',
            },
    'timestamp' => {
        datatype => 'DateTime',
        base_name => 'timestamp',
        description => 'Timestamp of the request in ISO 8601 format.',
        format => 'date-time',
        read_only => 'false',
            },
    'client_as_number' => {
        datatype => 'int',
        base_name => 'client_as_number',
        description => 'The autonomous system (AS) number of the client.',
        format => '',
        read_only => 'true',
            },
    'client_region' => {
        datatype => 'string',
        base_name => 'client_region',
        description => 'The client&#39;s country subdivision code as found in ISO 3166-2.',
        format => '',
        read_only => 'true',
            },
    'client_country_code' => {
        datatype => 'string',
        base_name => 'client_country_code',
        description => 'The two-letter ISO 3166-1 country code for the client.',
        format => '',
        read_only => 'true',
            },
    'client_os_name' => {
        datatype => 'string',
        base_name => 'client_os_name',
        description => 'The name of the operating system installed on the client device.',
        format => '',
        read_only => 'true',
            },
    'client_device_type' => {
        datatype => 'string',
        base_name => 'client_device_type',
        description => 'The type of the client&#39;s device.',
        format => '',
        read_only => 'true',
            },
    'client_browser_name' => {
        datatype => 'string',
        base_name => 'client_browser_name',
        description => 'The name of the browser in use on the client device.',
        format => '',
        read_only => 'true',
            },
    'client_browser_version' => {
        datatype => 'string',
        base_name => 'client_browser_version',
        description => 'The version of the browser in use on client device.',
        format => '',
        read_only => 'true',
            },
    'fastly_pop' => {
        datatype => 'string',
        base_name => 'fastly_pop',
        description => 'The name of the Fastly POP that served this request.',
        format => '',
        read_only => 'true',
            },
    'origin_host' => {
        datatype => 'string',
        base_name => 'origin_host',
        description => 'The name of the origin host that served this request.',
        format => '',
        read_only => 'true',
            },
    'request_protocol' => {
        datatype => 'string',
        base_name => 'request_protocol',
        description => 'HTTP protocol version in use for this request. For example, HTTP/1.1.',
        format => '',
        read_only => 'true',
            },
    'request_host' => {
        datatype => 'string',
        base_name => 'request_host',
        description => 'The name of the request host used for this request.',
        format => '',
        read_only => 'true',
            },
    'request_path' => {
        datatype => 'string',
        base_name => 'request_path',
        description => 'The URL path supplied for this request.',
        format => '',
        read_only => 'true',
            },
    'request_method' => {
        datatype => 'string',
        base_name => 'request_method',
        description => 'HTTP method sent by the client such as \&quot;GET\&quot; or \&quot;POST\&quot;.',
        format => '',
        read_only => 'true',
            },
    'response_bytes_body' => {
        datatype => 'int',
        base_name => 'response_bytes_body',
        description => 'Body bytes sent to the client in the response.',
        format => '',
        read_only => 'true',
            },
    'response_bytes_header' => {
        datatype => 'int',
        base_name => 'response_bytes_header',
        description => 'Header bytes sent to the client in the response.',
        format => '',
        read_only => 'true',
            },
    'response_content_length' => {
        datatype => 'int',
        base_name => 'response_content_length',
        description => 'Total bytes sent to the client in the response.',
        format => '',
        read_only => 'true',
            },
    'response_content_type' => {
        datatype => 'string',
        base_name => 'response_content_type',
        description => 'The content type of the response sent to the client.',
        format => '',
        read_only => 'true',
            },
    'response_reason' => {
        datatype => 'string',
        base_name => 'response_reason',
        description => 'The HTTP reason phrase returned for this request, if any.',
        format => '',
        read_only => 'true',
            },
    'response_state' => {
        datatype => 'string',
        base_name => 'response_state',
        description => 'The state of the request with optional suffixes describing special cases.',
        format => '',
        read_only => 'true',
            },
    'response_status' => {
        datatype => 'int',
        base_name => 'response_status',
        description => 'The HTTP response code returned for this request.',
        format => '',
        read_only => 'true',
            },
    'response_time' => {
        datatype => 'double',
        base_name => 'response_time',
        description => 'The time since the request started in seconds.',
        format => 'float',
        read_only => 'true',
            },
    'response_x_cache' => {
        datatype => 'string',
        base_name => 'response_x_cache',
        description => 'Indicates whether the request was a HIT or a MISS.',
        format => '',
        read_only => 'true',
            },
    'is_cache_hit' => {
        datatype => 'boolean',
        base_name => 'is_cache_hit',
        description => 'Indicates whether this request was fulfilled from cache.',
        format => '',
        read_only => 'true',
            },
    'is_edge' => {
        datatype => 'boolean',
        base_name => 'is_edge',
        description => 'Indicates whether the request was handled by a Fastly edge POP.',
        format => '',
        read_only => 'true',
            },
    'is_shield' => {
        datatype => 'boolean',
        base_name => 'is_shield',
        description => 'Indicates whether the request was handled by a Fastly shield POP.',
        format => '',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'customer_id' => 'string',
    'service_id' => 'LogPropertyServiceId',
    'timestamp' => 'DateTime',
    'client_as_number' => 'int',
    'client_region' => 'string',
    'client_country_code' => 'string',
    'client_os_name' => 'string',
    'client_device_type' => 'string',
    'client_browser_name' => 'string',
    'client_browser_version' => 'string',
    'fastly_pop' => 'string',
    'origin_host' => 'string',
    'request_protocol' => 'string',
    'request_host' => 'string',
    'request_path' => 'string',
    'request_method' => 'string',
    'response_bytes_body' => 'int',
    'response_bytes_header' => 'int',
    'response_content_length' => 'int',
    'response_content_type' => 'string',
    'response_reason' => 'string',
    'response_state' => 'string',
    'response_status' => 'int',
    'response_time' => 'double',
    'response_x_cache' => 'string',
    'is_cache_hit' => 'boolean',
    'is_edge' => 'boolean',
    'is_shield' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'customer_id' => 'customer_id',
    'service_id' => 'service_id',
    'timestamp' => 'timestamp',
    'client_as_number' => 'client_as_number',
    'client_region' => 'client_region',
    'client_country_code' => 'client_country_code',
    'client_os_name' => 'client_os_name',
    'client_device_type' => 'client_device_type',
    'client_browser_name' => 'client_browser_name',
    'client_browser_version' => 'client_browser_version',
    'fastly_pop' => 'fastly_pop',
    'origin_host' => 'origin_host',
    'request_protocol' => 'request_protocol',
    'request_host' => 'request_host',
    'request_path' => 'request_path',
    'request_method' => 'request_method',
    'response_bytes_body' => 'response_bytes_body',
    'response_bytes_header' => 'response_bytes_header',
    'response_content_length' => 'response_content_length',
    'response_content_type' => 'response_content_type',
    'response_reason' => 'response_reason',
    'response_state' => 'response_state',
    'response_status' => 'response_status',
    'response_time' => 'response_time',
    'response_x_cache' => 'response_x_cache',
    'is_cache_hit' => 'is_cache_hit',
    'is_edge' => 'is_edge',
    'is_shield' => 'is_shield'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
