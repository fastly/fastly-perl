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
package WebService::Fastly::Object::DomainInspectorMeasurements;

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
#A measurements object provides a count of the total number of &#x60;requests&#x60; received by Fastly for your domain in the reported time period and for the relevant POP, as specified in the [entry](#entry-data-model). It also includes the number of responses for specific HTTP response status codes and for status code ranges. This dataset is sparse: only the keys with non-zero values will be included in the record. Where a specific status code does not have a field in this model (e.g., &#x60;429 Too Many Requests&#x60;), any responses with that code will be counted as part of the range count (&#x60;4xx&#x60; in this case) but will not be separately identified in the data. 
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


__PACKAGE__->class_documentation({description => 'A measurements object provides a count of the total number of &#x60;requests&#x60; received by Fastly for your domain in the reported time period and for the relevant POP, as specified in the [entry](#entry-data-model). It also includes the number of responses for specific HTTP response status codes and for status code ranges. This dataset is sparse: only the keys with non-zero values will be included in the record. Where a specific status code does not have a field in this model (e.g., &#x60;429 Too Many Requests&#x60;), any responses with that code will be counted as part of the range count (&#x60;4xx&#x60; in this case) but will not be separately identified in the data. ',
                                  class => 'DomainInspectorMeasurements',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'edge_requests' => {
        datatype => 'int',
        base_name => 'edge_requests',
        description => 'Number of requests sent by end users to Fastly.',
        format => 'int64',
        read_only => 'false',
            },
    'edge_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'edge_resp_header_bytes',
        description => 'Total header bytes delivered from Fastly to the end user.',
        format => 'int64',
        read_only => 'false',
            },
    'edge_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'edge_resp_body_bytes',
        description => 'Total body bytes delivered from Fastly to the end user.',
        format => 'int64',
        read_only => 'false',
            },
    'status_1xx' => {
        datatype => 'int',
        base_name => 'status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; category status codes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'status_2xx' => {
        datatype => 'int',
        base_name => 'status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'status_3xx' => {
        datatype => 'int',
        base_name => 'status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'status_4xx' => {
        datatype => 'int',
        base_name => 'status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'status_5xx' => {
        datatype => 'int',
        base_name => 'status_5xx',
        description => 'Number of 5xx \&quot;Server Error\&quot; codes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'status_200' => {
        datatype => 'int',
        base_name => 'status_200',
        description => 'Number of responses delivered with status code 200 (Success).',
        format => 'int64',
        read_only => 'false',
            },
    'status_204' => {
        datatype => 'int',
        base_name => 'status_204',
        description => 'Number of responses delivered with status code 204 (No Content).',
        format => 'int64',
        read_only => 'false',
            },
    'status_206' => {
        datatype => 'int',
        base_name => 'status_206',
        description => 'Number of responses delivered with status code 206 (Partial Content).',
        format => 'int64',
        read_only => 'false',
            },
    'status_301' => {
        datatype => 'int',
        base_name => 'status_301',
        description => 'Number of responses delivered with status code 301 (Moved Permanently).',
        format => 'int64',
        read_only => 'false',
            },
    'status_302' => {
        datatype => 'int',
        base_name => 'status_302',
        description => 'Number of responses delivered with status code 302 (Found).',
        format => 'int64',
        read_only => 'false',
            },
    'status_304' => {
        datatype => 'int',
        base_name => 'status_304',
        description => 'Number of responses delivered with status code 304 (Not Modified).',
        format => 'int64',
        read_only => 'false',
            },
    'status_400' => {
        datatype => 'int',
        base_name => 'status_400',
        description => 'Number of responses delivered with status code 400 (Bad Request).',
        format => 'int64',
        read_only => 'false',
            },
    'status_401' => {
        datatype => 'int',
        base_name => 'status_401',
        description => 'Number of responses delivered with status code 401 (Unauthorized).',
        format => 'int64',
        read_only => 'false',
            },
    'status_403' => {
        datatype => 'int',
        base_name => 'status_403',
        description => 'Number of responses delivered with status code 403 (Forbidden).',
        format => 'int64',
        read_only => 'false',
            },
    'status_404' => {
        datatype => 'int',
        base_name => 'status_404',
        description => 'Number of responses delivered with status code 404 (Not Found).',
        format => 'int64',
        read_only => 'false',
            },
    'status_416' => {
        datatype => 'int',
        base_name => 'status_416',
        description => 'Number of responses delivered with status code 416 (Range Not Satisfiable).',
        format => 'int64',
        read_only => 'false',
            },
    'status_429' => {
        datatype => 'int',
        base_name => 'status_429',
        description => 'Number of responses delivered with status code 429 (Too Many Requests).',
        format => 'int64',
        read_only => 'false',
            },
    'status_500' => {
        datatype => 'int',
        base_name => 'status_500',
        description => 'Number of responses delivered with status code 500 (Internal Server Error).',
        format => 'int64',
        read_only => 'false',
            },
    'status_501' => {
        datatype => 'int',
        base_name => 'status_501',
        description => 'Number of responses delivered with status code 501 (Not Implemented).',
        format => 'int64',
        read_only => 'false',
            },
    'status_502' => {
        datatype => 'int',
        base_name => 'status_502',
        description => 'Number of responses delivered with status code 502 (Bad Gateway).',
        format => 'int64',
        read_only => 'false',
            },
    'status_503' => {
        datatype => 'int',
        base_name => 'status_503',
        description => 'Number of responses delivered with status code 503 (Service Unavailable).',
        format => 'int64',
        read_only => 'false',
            },
    'status_504' => {
        datatype => 'int',
        base_name => 'status_504',
        description => 'Number of responses delivered with status code 504 (Gateway Timeout).',
        format => 'int64',
        read_only => 'false',
            },
    'status_505' => {
        datatype => 'int',
        base_name => 'status_505',
        description => 'Number of responses delivered with status code 505 (HTTP Version Not Supported).',
        format => 'int64',
        read_only => 'false',
            },
    'status_530' => {
        datatype => 'int',
        base_name => 'status_530',
        description => 'Number of responses delivered with status code 530.',
        format => 'int64',
        read_only => 'false',
            },
    'requests' => {
        datatype => 'int',
        base_name => 'requests',
        description => 'Number of requests processed.',
        format => 'int64',
        read_only => 'false',
            },
    'resp_header_bytes' => {
        datatype => 'int',
        base_name => 'resp_header_bytes',
        description => 'Total header bytes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'resp_body_bytes' => {
        datatype => 'int',
        base_name => 'resp_body_bytes',
        description => 'Total body bytes delivered.',
        format => 'int64',
        read_only => 'false',
            },
    'bereq_header_bytes' => {
        datatype => 'int',
        base_name => 'bereq_header_bytes',
        description => 'Total header bytes sent to origin.',
        format => 'int64',
        read_only => 'false',
            },
    'bereq_body_bytes' => {
        datatype => 'int',
        base_name => 'bereq_body_bytes',
        description => 'Total body bytes sent to origin.',
        format => 'int64',
        read_only => 'false',
            },
    'edge_hit_requests' => {
        datatype => 'int',
        base_name => 'edge_hit_requests',
        description => 'Number of requests sent by end users to Fastly that resulted in a hit at the edge.',
        format => 'int64',
        read_only => 'false',
            },
    'edge_miss_requests' => {
        datatype => 'int',
        base_name => 'edge_miss_requests',
        description => 'Number of requests sent by end users to Fastly that resulted in a miss at the edge.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_fetches' => {
        datatype => 'int',
        base_name => 'origin_fetches',
        description => 'Number of requests sent to origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_fetch_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'origin_fetch_resp_header_bytes',
        description => 'Total header bytes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_fetch_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'origin_fetch_resp_body_bytes',
        description => 'Total body bytes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'bandwidth' => {
        datatype => 'int',
        base_name => 'bandwidth',
        description => 'Total bytes delivered (&#x60;resp_header_bytes&#x60; + &#x60;resp_body_bytes&#x60; + &#x60;bereq_header_bytes&#x60; + &#x60;bereq_body_bytes&#x60;).',
        format => 'int64',
        read_only => 'false',
            },
    'edge_hit_ratio' => {
        datatype => 'double',
        base_name => 'edge_hit_ratio',
        description => 'Ratio of cache hits to cache misses at the edge, between 0 and 1 (&#x60;edge_hit_requests&#x60; / (&#x60;edge_hit_requests&#x60; + &#x60;edge_miss_requests&#x60;)).',
        format => '',
        read_only => 'false',
            },
    'origin_offload' => {
        datatype => 'double',
        base_name => 'origin_offload',
        description => 'Origin Offload measures the ratio of bytes served to end users that were cached by Fastly, over the bytes served to end users, between 0 and 1. ((&#x60;edge_resp_body_bytes&#x60; + &#x60;edge_resp_header_bytes&#x60;) - (&#x60;origin_fetch_resp_body_bytes&#x60; + &#x60;origin_fetch_resp_header_bytes&#x60;)) / (&#x60;edge_resp_body_bytes&#x60; + &#x60;edge_resp_header_bytes&#x60;). Previously, Origin Offload used a different formula. [Learn more](https://www.fastly.com/documentation/reference/changes/2024/06/add-origin_offload-metric).',
        format => '',
        read_only => 'false',
            },
    'origin_status_200' => {
        datatype => 'int',
        base_name => 'origin_status_200',
        description => 'Number of responses received from origin with status code 200 (Success).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_204' => {
        datatype => 'int',
        base_name => 'origin_status_204',
        description => 'Number of responses received from origin with status code 204 (No Content).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_206' => {
        datatype => 'int',
        base_name => 'origin_status_206',
        description => 'Number of responses received from origin with status code 206 (Partial Content).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_301' => {
        datatype => 'int',
        base_name => 'origin_status_301',
        description => 'Number of responses received from origin with status code 301 (Moved Permanently).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_302' => {
        datatype => 'int',
        base_name => 'origin_status_302',
        description => 'Number of responses received from origin with status code 302 (Found).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_304' => {
        datatype => 'int',
        base_name => 'origin_status_304',
        description => 'Number of responses received from origin with status code 304 (Not Modified).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_400' => {
        datatype => 'int',
        base_name => 'origin_status_400',
        description => 'Number of responses received from origin with status code 400 (Bad Request).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_401' => {
        datatype => 'int',
        base_name => 'origin_status_401',
        description => 'Number of responses received from origin with status code 401 (Unauthorized).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_403' => {
        datatype => 'int',
        base_name => 'origin_status_403',
        description => 'Number of responses received from origin with status code 403 (Forbidden).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_404' => {
        datatype => 'int',
        base_name => 'origin_status_404',
        description => 'Number of responses received from origin with status code 404 (Not Found).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_416' => {
        datatype => 'int',
        base_name => 'origin_status_416',
        description => 'Number of responses received from origin with status code 416 (Range Not Satisfiable).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_429' => {
        datatype => 'int',
        base_name => 'origin_status_429',
        description => 'Number of responses received from origin with status code 429 (Too Many Requests).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_500' => {
        datatype => 'int',
        base_name => 'origin_status_500',
        description => 'Number of responses received from origin with status code 500 (Internal Server Error).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_501' => {
        datatype => 'int',
        base_name => 'origin_status_501',
        description => 'Number of responses received from origin with status code 501 (Not Implemented).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_502' => {
        datatype => 'int',
        base_name => 'origin_status_502',
        description => 'Number of responses received from origin with status code 502 (Bad Gateway).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_503' => {
        datatype => 'int',
        base_name => 'origin_status_503',
        description => 'Number of responses received from origin with status code 503 (Service Unavailable).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_504' => {
        datatype => 'int',
        base_name => 'origin_status_504',
        description => 'Number of responses received from origin with status code 504 (Gateway Timeout).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_505' => {
        datatype => 'int',
        base_name => 'origin_status_505',
        description => 'Number of responses received from origin with status code 505 (HTTP Version Not Supported).',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_530' => {
        datatype => 'int',
        base_name => 'origin_status_530',
        description => 'Number of responses received from origin with status code 530.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_1xx' => {
        datatype => 'int',
        base_name => 'origin_status_1xx',
        description => 'Number of \&quot;Informational\&quot; category status codes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_2xx' => {
        datatype => 'int',
        base_name => 'origin_status_2xx',
        description => 'Number of \&quot;Success\&quot; status codes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_3xx' => {
        datatype => 'int',
        base_name => 'origin_status_3xx',
        description => 'Number of \&quot;Redirection\&quot; codes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_4xx' => {
        datatype => 'int',
        base_name => 'origin_status_4xx',
        description => 'Number of \&quot;Client Error\&quot; codes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'origin_status_5xx' => {
        datatype => 'int',
        base_name => 'origin_status_5xx',
        description => 'Number of \&quot;Server Error\&quot; codes received from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_bereq_body_bytes' => {
        datatype => 'int',
        base_name => 'compute_bereq_body_bytes',
        description => 'Total body bytes sent to backends (origins) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_bereq_errors' => {
        datatype => 'int',
        base_name => 'compute_bereq_errors',
        description => 'Number of backend request errors, including timeouts, by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_bereq_header_bytes' => {
        datatype => 'int',
        base_name => 'compute_bereq_header_bytes',
        description => 'Total header bytes sent to backends (origins) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_bereqs' => {
        datatype => 'int',
        base_name => 'compute_bereqs',
        description => 'Number of backend requests started by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_beresp_body_bytes' => {
        datatype => 'int',
        base_name => 'compute_beresp_body_bytes',
        description => 'Total body bytes received from backends (origins) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_beresp_header_bytes' => {
        datatype => 'int',
        base_name => 'compute_beresp_header_bytes',
        description => 'Total header bytes received from backends (origins) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_execution_time_ms' => {
        datatype => 'int',
        base_name => 'compute_execution_time_ms',
        description => 'The amount of active CPU time used to process your requests (in milliseconds).',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_1xx' => {
        datatype => 'int',
        base_name => 'compute_origin_status_1xx',
        description => 'Number of \&quot;Informational\&quot; category status codes received from origin by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_200' => {
        datatype => 'int',
        base_name => 'compute_origin_status_200',
        description => 'Number of responses received from origin with status code 200 (Success) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_204' => {
        datatype => 'int',
        base_name => 'compute_origin_status_204',
        description => 'Number of responses received from origin with status code 204 (No Content) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_206' => {
        datatype => 'int',
        base_name => 'compute_origin_status_206',
        description => 'Number of responses received from origin with status code 206 (Partial Content) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_2xx' => {
        datatype => 'int',
        base_name => 'compute_origin_status_2xx',
        description => 'Number of \&quot;Success\&quot; status codes received from origin by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_301' => {
        datatype => 'int',
        base_name => 'compute_origin_status_301',
        description => 'Number of responses received from origin with status code 301 (Moved Permanently) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_302' => {
        datatype => 'int',
        base_name => 'compute_origin_status_302',
        description => 'Number of responses received from origin with status code 302 (Found) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_304' => {
        datatype => 'int',
        base_name => 'compute_origin_status_304',
        description => 'Number of responses received from origin with status code 304 (Not Modified) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_3xx' => {
        datatype => 'int',
        base_name => 'compute_origin_status_3xx',
        description => 'Number of \&quot;Redirection\&quot; codes received from origin by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_400' => {
        datatype => 'int',
        base_name => 'compute_origin_status_400',
        description => 'Number of responses received from origin with status code 400 (Bad Request) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_401' => {
        datatype => 'int',
        base_name => 'compute_origin_status_401',
        description => 'Number of responses received from origin with status code 401 (Unauthorized) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_403' => {
        datatype => 'int',
        base_name => 'compute_origin_status_403',
        description => 'Number of responses received from origin with status code 403 (Forbidden) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_404' => {
        datatype => 'int',
        base_name => 'compute_origin_status_404',
        description => 'Number of responses received from origin with status code 404 (Not Found) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_416' => {
        datatype => 'int',
        base_name => 'compute_origin_status_416',
        description => 'Number of responses received from origin with status code 416 (Range Not Satisfiable) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_429' => {
        datatype => 'int',
        base_name => 'compute_origin_status_429',
        description => 'Number of responses received from origin with status code 429 (Too Many Requests) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_4xx' => {
        datatype => 'int',
        base_name => 'compute_origin_status_4xx',
        description => 'Number of \&quot;Client Error\&quot; codes received from origin by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_500' => {
        datatype => 'int',
        base_name => 'compute_origin_status_500',
        description => 'Number of responses received from origin with status code 500 (Internal Server Error) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_501' => {
        datatype => 'int',
        base_name => 'compute_origin_status_501',
        description => 'Number of responses received from origin with status code 501 (Not Implemented) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_502' => {
        datatype => 'int',
        base_name => 'compute_origin_status_502',
        description => 'Number of responses received from origin with status code 502 (Bad Gateway) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_503' => {
        datatype => 'int',
        base_name => 'compute_origin_status_503',
        description => 'Number of responses received from origin with status code 503 (Service Unavailable) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_504' => {
        datatype => 'int',
        base_name => 'compute_origin_status_504',
        description => 'Number of responses received from origin with status code 504 (Gateway Timeout) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_505' => {
        datatype => 'int',
        base_name => 'compute_origin_status_505',
        description => 'Number of responses received from origin with status code 505 (HTTP Version Not Supported) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_530' => {
        datatype => 'int',
        base_name => 'compute_origin_status_530',
        description => 'Number of responses received from origin with status code 530 by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_origin_status_5xx' => {
        datatype => 'int',
        base_name => 'compute_origin_status_5xx',
        description => 'Number of \&quot;Server Error\&quot; codes received from origin by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_req_body_bytes' => {
        datatype => 'int',
        base_name => 'compute_req_body_bytes',
        description => 'Total body bytes received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_req_header_bytes' => {
        datatype => 'int',
        base_name => 'compute_req_header_bytes',
        description => 'Total header bytes received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_request_time_billed_ms' => {
        datatype => 'int',
        base_name => 'compute_request_time_billed_ms',
        description => 'The total amount of request processing time you will be billed for, measured in 50 millisecond increments.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_request_time_ms' => {
        datatype => 'int',
        base_name => 'compute_request_time_ms',
        description => 'The total amount of time used to process your requests, including active CPU time (in milliseconds).',
        format => 'int64',
        read_only => 'false',
            },
    'compute_request' => {
        datatype => 'int',
        base_name => 'compute_request',
        description => 'The total number of requests that were received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'compute_resp_body_bytes',
        description => 'Total body bytes sent from Compute to the end user.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'compute_resp_header_bytes',
        description => 'Total header bytes sent from Compute to the end user.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_103' => {
        datatype => 'int',
        base_name => 'compute_resp_status_103',
        description => 'Number of responses delivered with status code 103 (Early Hints) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_1xx' => {
        datatype => 'int',
        base_name => 'compute_resp_status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; category status codes delivered by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_200' => {
        datatype => 'int',
        base_name => 'compute_resp_status_200',
        description => 'Number of responses delivered with status code 200 (Success) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_204' => {
        datatype => 'int',
        base_name => 'compute_resp_status_204',
        description => 'Number of responses delivered with status code 204 (No Content) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_206' => {
        datatype => 'int',
        base_name => 'compute_resp_status_206',
        description => 'Number of responses delivered with status code 206 (Partial Content) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_2xx' => {
        datatype => 'int',
        base_name => 'compute_resp_status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes delivered by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_301' => {
        datatype => 'int',
        base_name => 'compute_resp_status_301',
        description => 'Number of responses delivered with status code 301 (Moved Permanently) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_302' => {
        datatype => 'int',
        base_name => 'compute_resp_status_302',
        description => 'Number of responses delivered with status code 302 (Found) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_304' => {
        datatype => 'int',
        base_name => 'compute_resp_status_304',
        description => 'Number of responses delivered with status code 304 (Not Modified) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_3xx' => {
        datatype => 'int',
        base_name => 'compute_resp_status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes delivered by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_400' => {
        datatype => 'int',
        base_name => 'compute_resp_status_400',
        description => 'Number of responses delivered with status code 400 (Bad Request) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_401' => {
        datatype => 'int',
        base_name => 'compute_resp_status_401',
        description => 'Number of responses delivered with status code 401 (Unauthorized) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_403' => {
        datatype => 'int',
        base_name => 'compute_resp_status_403',
        description => 'Number of responses delivered with status code 403 (Forbidden) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_404' => {
        datatype => 'int',
        base_name => 'compute_resp_status_404',
        description => 'Number of responses delivered with status code 404 (Not Found) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_416' => {
        datatype => 'int',
        base_name => 'compute_resp_status_416',
        description => 'Number of responses delivered with status code 416 (Range Not Satisfiable) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_429' => {
        datatype => 'int',
        base_name => 'compute_resp_status_429',
        description => 'Number of responses delivered with status code 429 (Too Many Requests) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_4xx' => {
        datatype => 'int',
        base_name => 'compute_resp_status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes delivered by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_500' => {
        datatype => 'int',
        base_name => 'compute_resp_status_500',
        description => 'Number of responses delivered with status code 500 (Internal Server Error) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_501' => {
        datatype => 'int',
        base_name => 'compute_resp_status_501',
        description => 'Number of responses delivered with status code 501 (Not Implemented) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_502' => {
        datatype => 'int',
        base_name => 'compute_resp_status_502',
        description => 'Number of responses delivered with status code 502 (Bad Gateway) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_503' => {
        datatype => 'int',
        base_name => 'compute_resp_status_503',
        description => 'Number of responses delivered with status code 503 (Service Unavailable) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_504' => {
        datatype => 'int',
        base_name => 'compute_resp_status_504',
        description => 'Number of responses delivered with status code 504 (Gateway Timeout) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_505' => {
        datatype => 'int',
        base_name => 'compute_resp_status_505',
        description => 'Number of responses delivered with status code 505 (HTTP Version Not Supported) by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_530' => {
        datatype => 'int',
        base_name => 'compute_resp_status_530',
        description => 'Number of responses delivered with status code 530 by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_status_5xx' => {
        datatype => 'int',
        base_name => 'compute_resp_status_5xx',
        description => 'Number of \&quot;Server Error\&quot; category status codes delivered by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'edge_requests' => 'int',
    'edge_resp_header_bytes' => 'int',
    'edge_resp_body_bytes' => 'int',
    'status_1xx' => 'int',
    'status_2xx' => 'int',
    'status_3xx' => 'int',
    'status_4xx' => 'int',
    'status_5xx' => 'int',
    'status_200' => 'int',
    'status_204' => 'int',
    'status_206' => 'int',
    'status_301' => 'int',
    'status_302' => 'int',
    'status_304' => 'int',
    'status_400' => 'int',
    'status_401' => 'int',
    'status_403' => 'int',
    'status_404' => 'int',
    'status_416' => 'int',
    'status_429' => 'int',
    'status_500' => 'int',
    'status_501' => 'int',
    'status_502' => 'int',
    'status_503' => 'int',
    'status_504' => 'int',
    'status_505' => 'int',
    'status_530' => 'int',
    'requests' => 'int',
    'resp_header_bytes' => 'int',
    'resp_body_bytes' => 'int',
    'bereq_header_bytes' => 'int',
    'bereq_body_bytes' => 'int',
    'edge_hit_requests' => 'int',
    'edge_miss_requests' => 'int',
    'origin_fetches' => 'int',
    'origin_fetch_resp_header_bytes' => 'int',
    'origin_fetch_resp_body_bytes' => 'int',
    'bandwidth' => 'int',
    'edge_hit_ratio' => 'double',
    'origin_offload' => 'double',
    'origin_status_200' => 'int',
    'origin_status_204' => 'int',
    'origin_status_206' => 'int',
    'origin_status_301' => 'int',
    'origin_status_302' => 'int',
    'origin_status_304' => 'int',
    'origin_status_400' => 'int',
    'origin_status_401' => 'int',
    'origin_status_403' => 'int',
    'origin_status_404' => 'int',
    'origin_status_416' => 'int',
    'origin_status_429' => 'int',
    'origin_status_500' => 'int',
    'origin_status_501' => 'int',
    'origin_status_502' => 'int',
    'origin_status_503' => 'int',
    'origin_status_504' => 'int',
    'origin_status_505' => 'int',
    'origin_status_530' => 'int',
    'origin_status_1xx' => 'int',
    'origin_status_2xx' => 'int',
    'origin_status_3xx' => 'int',
    'origin_status_4xx' => 'int',
    'origin_status_5xx' => 'int',
    'compute_bereq_body_bytes' => 'int',
    'compute_bereq_errors' => 'int',
    'compute_bereq_header_bytes' => 'int',
    'compute_bereqs' => 'int',
    'compute_beresp_body_bytes' => 'int',
    'compute_beresp_header_bytes' => 'int',
    'compute_execution_time_ms' => 'int',
    'compute_origin_status_1xx' => 'int',
    'compute_origin_status_200' => 'int',
    'compute_origin_status_204' => 'int',
    'compute_origin_status_206' => 'int',
    'compute_origin_status_2xx' => 'int',
    'compute_origin_status_301' => 'int',
    'compute_origin_status_302' => 'int',
    'compute_origin_status_304' => 'int',
    'compute_origin_status_3xx' => 'int',
    'compute_origin_status_400' => 'int',
    'compute_origin_status_401' => 'int',
    'compute_origin_status_403' => 'int',
    'compute_origin_status_404' => 'int',
    'compute_origin_status_416' => 'int',
    'compute_origin_status_429' => 'int',
    'compute_origin_status_4xx' => 'int',
    'compute_origin_status_500' => 'int',
    'compute_origin_status_501' => 'int',
    'compute_origin_status_502' => 'int',
    'compute_origin_status_503' => 'int',
    'compute_origin_status_504' => 'int',
    'compute_origin_status_505' => 'int',
    'compute_origin_status_530' => 'int',
    'compute_origin_status_5xx' => 'int',
    'compute_req_body_bytes' => 'int',
    'compute_req_header_bytes' => 'int',
    'compute_request_time_billed_ms' => 'int',
    'compute_request_time_ms' => 'int',
    'compute_request' => 'int',
    'compute_resp_body_bytes' => 'int',
    'compute_resp_header_bytes' => 'int',
    'compute_resp_status_103' => 'int',
    'compute_resp_status_1xx' => 'int',
    'compute_resp_status_200' => 'int',
    'compute_resp_status_204' => 'int',
    'compute_resp_status_206' => 'int',
    'compute_resp_status_2xx' => 'int',
    'compute_resp_status_301' => 'int',
    'compute_resp_status_302' => 'int',
    'compute_resp_status_304' => 'int',
    'compute_resp_status_3xx' => 'int',
    'compute_resp_status_400' => 'int',
    'compute_resp_status_401' => 'int',
    'compute_resp_status_403' => 'int',
    'compute_resp_status_404' => 'int',
    'compute_resp_status_416' => 'int',
    'compute_resp_status_429' => 'int',
    'compute_resp_status_4xx' => 'int',
    'compute_resp_status_500' => 'int',
    'compute_resp_status_501' => 'int',
    'compute_resp_status_502' => 'int',
    'compute_resp_status_503' => 'int',
    'compute_resp_status_504' => 'int',
    'compute_resp_status_505' => 'int',
    'compute_resp_status_530' => 'int',
    'compute_resp_status_5xx' => 'int'
} );

__PACKAGE__->attribute_map( {
    'edge_requests' => 'edge_requests',
    'edge_resp_header_bytes' => 'edge_resp_header_bytes',
    'edge_resp_body_bytes' => 'edge_resp_body_bytes',
    'status_1xx' => 'status_1xx',
    'status_2xx' => 'status_2xx',
    'status_3xx' => 'status_3xx',
    'status_4xx' => 'status_4xx',
    'status_5xx' => 'status_5xx',
    'status_200' => 'status_200',
    'status_204' => 'status_204',
    'status_206' => 'status_206',
    'status_301' => 'status_301',
    'status_302' => 'status_302',
    'status_304' => 'status_304',
    'status_400' => 'status_400',
    'status_401' => 'status_401',
    'status_403' => 'status_403',
    'status_404' => 'status_404',
    'status_416' => 'status_416',
    'status_429' => 'status_429',
    'status_500' => 'status_500',
    'status_501' => 'status_501',
    'status_502' => 'status_502',
    'status_503' => 'status_503',
    'status_504' => 'status_504',
    'status_505' => 'status_505',
    'status_530' => 'status_530',
    'requests' => 'requests',
    'resp_header_bytes' => 'resp_header_bytes',
    'resp_body_bytes' => 'resp_body_bytes',
    'bereq_header_bytes' => 'bereq_header_bytes',
    'bereq_body_bytes' => 'bereq_body_bytes',
    'edge_hit_requests' => 'edge_hit_requests',
    'edge_miss_requests' => 'edge_miss_requests',
    'origin_fetches' => 'origin_fetches',
    'origin_fetch_resp_header_bytes' => 'origin_fetch_resp_header_bytes',
    'origin_fetch_resp_body_bytes' => 'origin_fetch_resp_body_bytes',
    'bandwidth' => 'bandwidth',
    'edge_hit_ratio' => 'edge_hit_ratio',
    'origin_offload' => 'origin_offload',
    'origin_status_200' => 'origin_status_200',
    'origin_status_204' => 'origin_status_204',
    'origin_status_206' => 'origin_status_206',
    'origin_status_301' => 'origin_status_301',
    'origin_status_302' => 'origin_status_302',
    'origin_status_304' => 'origin_status_304',
    'origin_status_400' => 'origin_status_400',
    'origin_status_401' => 'origin_status_401',
    'origin_status_403' => 'origin_status_403',
    'origin_status_404' => 'origin_status_404',
    'origin_status_416' => 'origin_status_416',
    'origin_status_429' => 'origin_status_429',
    'origin_status_500' => 'origin_status_500',
    'origin_status_501' => 'origin_status_501',
    'origin_status_502' => 'origin_status_502',
    'origin_status_503' => 'origin_status_503',
    'origin_status_504' => 'origin_status_504',
    'origin_status_505' => 'origin_status_505',
    'origin_status_530' => 'origin_status_530',
    'origin_status_1xx' => 'origin_status_1xx',
    'origin_status_2xx' => 'origin_status_2xx',
    'origin_status_3xx' => 'origin_status_3xx',
    'origin_status_4xx' => 'origin_status_4xx',
    'origin_status_5xx' => 'origin_status_5xx',
    'compute_bereq_body_bytes' => 'compute_bereq_body_bytes',
    'compute_bereq_errors' => 'compute_bereq_errors',
    'compute_bereq_header_bytes' => 'compute_bereq_header_bytes',
    'compute_bereqs' => 'compute_bereqs',
    'compute_beresp_body_bytes' => 'compute_beresp_body_bytes',
    'compute_beresp_header_bytes' => 'compute_beresp_header_bytes',
    'compute_execution_time_ms' => 'compute_execution_time_ms',
    'compute_origin_status_1xx' => 'compute_origin_status_1xx',
    'compute_origin_status_200' => 'compute_origin_status_200',
    'compute_origin_status_204' => 'compute_origin_status_204',
    'compute_origin_status_206' => 'compute_origin_status_206',
    'compute_origin_status_2xx' => 'compute_origin_status_2xx',
    'compute_origin_status_301' => 'compute_origin_status_301',
    'compute_origin_status_302' => 'compute_origin_status_302',
    'compute_origin_status_304' => 'compute_origin_status_304',
    'compute_origin_status_3xx' => 'compute_origin_status_3xx',
    'compute_origin_status_400' => 'compute_origin_status_400',
    'compute_origin_status_401' => 'compute_origin_status_401',
    'compute_origin_status_403' => 'compute_origin_status_403',
    'compute_origin_status_404' => 'compute_origin_status_404',
    'compute_origin_status_416' => 'compute_origin_status_416',
    'compute_origin_status_429' => 'compute_origin_status_429',
    'compute_origin_status_4xx' => 'compute_origin_status_4xx',
    'compute_origin_status_500' => 'compute_origin_status_500',
    'compute_origin_status_501' => 'compute_origin_status_501',
    'compute_origin_status_502' => 'compute_origin_status_502',
    'compute_origin_status_503' => 'compute_origin_status_503',
    'compute_origin_status_504' => 'compute_origin_status_504',
    'compute_origin_status_505' => 'compute_origin_status_505',
    'compute_origin_status_530' => 'compute_origin_status_530',
    'compute_origin_status_5xx' => 'compute_origin_status_5xx',
    'compute_req_body_bytes' => 'compute_req_body_bytes',
    'compute_req_header_bytes' => 'compute_req_header_bytes',
    'compute_request_time_billed_ms' => 'compute_request_time_billed_ms',
    'compute_request_time_ms' => 'compute_request_time_ms',
    'compute_request' => 'compute_request',
    'compute_resp_body_bytes' => 'compute_resp_body_bytes',
    'compute_resp_header_bytes' => 'compute_resp_header_bytes',
    'compute_resp_status_103' => 'compute_resp_status_103',
    'compute_resp_status_1xx' => 'compute_resp_status_1xx',
    'compute_resp_status_200' => 'compute_resp_status_200',
    'compute_resp_status_204' => 'compute_resp_status_204',
    'compute_resp_status_206' => 'compute_resp_status_206',
    'compute_resp_status_2xx' => 'compute_resp_status_2xx',
    'compute_resp_status_301' => 'compute_resp_status_301',
    'compute_resp_status_302' => 'compute_resp_status_302',
    'compute_resp_status_304' => 'compute_resp_status_304',
    'compute_resp_status_3xx' => 'compute_resp_status_3xx',
    'compute_resp_status_400' => 'compute_resp_status_400',
    'compute_resp_status_401' => 'compute_resp_status_401',
    'compute_resp_status_403' => 'compute_resp_status_403',
    'compute_resp_status_404' => 'compute_resp_status_404',
    'compute_resp_status_416' => 'compute_resp_status_416',
    'compute_resp_status_429' => 'compute_resp_status_429',
    'compute_resp_status_4xx' => 'compute_resp_status_4xx',
    'compute_resp_status_500' => 'compute_resp_status_500',
    'compute_resp_status_501' => 'compute_resp_status_501',
    'compute_resp_status_502' => 'compute_resp_status_502',
    'compute_resp_status_503' => 'compute_resp_status_503',
    'compute_resp_status_504' => 'compute_resp_status_504',
    'compute_resp_status_505' => 'compute_resp_status_505',
    'compute_resp_status_530' => 'compute_resp_status_530',
    'compute_resp_status_5xx' => 'compute_resp_status_5xx'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
