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
package WebService::Fastly::Object::LogInsightsValues;

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

use WebService::Fastly::Object::Values503Responses;
use WebService::Fastly::Object::ValuesBandwidth;
use WebService::Fastly::Object::ValuesBrowser;
use WebService::Fastly::Object::ValuesCacheHitRatio;
use WebService::Fastly::Object::ValuesCountryStats;
use WebService::Fastly::Object::ValuesDuration;
use WebService::Fastly::Object::ValuesMisses;
use WebService::Fastly::Object::ValuesRate;
use WebService::Fastly::Object::ValuesRequests;
use WebService::Fastly::Object::ValuesStatusCodes;

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
                                  class => 'LogInsightsValues',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'cache_hit_ratio' => {
        datatype => 'double',
        base_name => 'cache_hit_ratio',
        description => 'The cache hit ratio for the URL specified in the dimension.',
        format => 'float',
        read_only => 'false',
            },
    'region' => {
        datatype => 'string',
        base_name => 'region',
        description => 'The client&#39;s country subdivision code as defined by ISO 3166-2.',
        format => '',
        read_only => 'false',
            },
    'region_chr' => {
        datatype => 'double',
        base_name => 'region_chr',
        description => 'The cache hit ratio for the region.',
        format => 'float',
        read_only => 'false',
            },
    'region_error_rate' => {
        datatype => 'double',
        base_name => 'region_error_rate',
        description => 'The error rate for the region.',
        format => 'float',
        read_only => 'false',
            },
    'url' => {
        datatype => 'string',
        base_name => 'url',
        description => 'The HTTP request path.',
        format => '',
        read_only => 'false',
            },
    'rate_per_status' => {
        datatype => 'double',
        base_name => 'rate_per_status',
        description => 'The URL accounts for this percentage of the status code in this dimension.',
        format => 'float',
        read_only => 'false',
            },
    'rate_per_url' => {
        datatype => 'double',
        base_name => 'rate_per_url',
        description => 'The rate at which the reason in this dimension occurs among responses to this URL with a 503 status code.',
        format => 'float',
        read_only => 'false',
            },
    '_503_rate_per_url' => {
        datatype => 'double',
        base_name => '503_rate_per_url',
        description => 'The rate at which 503 status codes are returned for this URL.',
        format => 'float',
        read_only => 'false',
            },
    'browser_version' => {
        datatype => 'string',
        base_name => 'browser_version',
        description => 'The version of the client&#39;s browser.',
        format => '',
        read_only => 'false',
            },
    'rate' => {
        datatype => 'double',
        base_name => 'rate',
        description => 'The percentage of requests matching the value in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'average_bandwidth_bytes' => {
        datatype => 'double',
        base_name => 'average_bandwidth_bytes',
        description => 'The average bandwidth in bytes for responses to requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'bandwidth_percentage' => {
        datatype => 'double',
        base_name => 'bandwidth_percentage',
        description => 'The total bandwidth percentage for all responses to requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'average_response_time' => {
        datatype => 'double',
        base_name => 'average_response_time',
        description => 'The average time in seconds to respond to requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'p95_response_time' => {
        datatype => 'double',
        base_name => 'p95_response_time',
        description => 'The P95 time in seconds to respond to requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'response_time_percentage' => {
        datatype => 'double',
        base_name => 'response_time_percentage',
        description => 'The total percentage of time to respond to all requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'miss_rate' => {
        datatype => 'double',
        base_name => 'miss_rate',
        description => 'The miss rate for requests to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
    'request_percentage' => {
        datatype => 'double',
        base_name => 'request_percentage',
        description => 'The percentage of all requests made to the URL in the current dimension.',
        format => 'float',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'cache_hit_ratio' => 'double',
    'region' => 'string',
    'region_chr' => 'double',
    'region_error_rate' => 'double',
    'url' => 'string',
    'rate_per_status' => 'double',
    'rate_per_url' => 'double',
    '_503_rate_per_url' => 'double',
    'browser_version' => 'string',
    'rate' => 'double',
    'average_bandwidth_bytes' => 'double',
    'bandwidth_percentage' => 'double',
    'average_response_time' => 'double',
    'p95_response_time' => 'double',
    'response_time_percentage' => 'double',
    'miss_rate' => 'double',
    'request_percentage' => 'double'
} );

__PACKAGE__->attribute_map( {
    'cache_hit_ratio' => 'cache_hit_ratio',
    'region' => 'region',
    'region_chr' => 'region_chr',
    'region_error_rate' => 'region_error_rate',
    'url' => 'url',
    'rate_per_status' => 'rate_per_status',
    'rate_per_url' => 'rate_per_url',
    '_503_rate_per_url' => '503_rate_per_url',
    'browser_version' => 'browser_version',
    'rate' => 'rate',
    'average_bandwidth_bytes' => 'average_bandwidth_bytes',
    'bandwidth_percentage' => 'bandwidth_percentage',
    'average_response_time' => 'average_response_time',
    'p95_response_time' => 'p95_response_time',
    'response_time_percentage' => 'response_time_percentage',
    'miss_rate' => 'miss_rate',
    'request_percentage' => 'request_percentage'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
