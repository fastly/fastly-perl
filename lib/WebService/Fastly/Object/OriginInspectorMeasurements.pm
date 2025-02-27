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
package WebService::Fastly::Object::OriginInspectorMeasurements;

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
#A measurements object provides a count of the total number of &#x60;responses&#x60; received by Fastly from your origin servers in the reported time period, for the relevant POP and backend name as specified in the [entry](#entry-data-model). It also includes the number of responses for specific HTTP response status codes and for status code ranges. This dataset is sparse: only the keys with non-zero values will be included in the record. Where a specific status code does not have a field in this model (e.g., &#x60;429 Too Many Requests&#x60;), any responses with that code will be counted as part of the range count (&#x60;4xx&#x60; in this case) but will not be separately identified in the data. 
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


__PACKAGE__->class_documentation({description => 'A measurements object provides a count of the total number of &#x60;responses&#x60; received by Fastly from your origin servers in the reported time period, for the relevant POP and backend name as specified in the [entry](#entry-data-model). It also includes the number of responses for specific HTTP response status codes and for status code ranges. This dataset is sparse: only the keys with non-zero values will be included in the record. Where a specific status code does not have a field in this model (e.g., &#x60;429 Too Many Requests&#x60;), any responses with that code will be counted as part of the range count (&#x60;4xx&#x60; in this case) but will not be separately identified in the data. ',
                                  class => 'OriginInspectorMeasurements',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'responses' => {
        datatype => 'int',
        base_name => 'responses',
        description => 'Number of responses from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'resp_header_bytes' => {
        datatype => 'int',
        base_name => 'resp_header_bytes',
        description => 'Number of header bytes from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'resp_body_bytes' => {
        datatype => 'int',
        base_name => 'resp_body_bytes',
        description => 'Number of body bytes from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_1xx' => {
        datatype => 'int',
        base_name => 'status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; status codes delivered from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_2xx' => {
        datatype => 'int',
        base_name => 'status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes delivered from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_3xx' => {
        datatype => 'int',
        base_name => 'status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes delivered from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_4xx' => {
        datatype => 'int',
        base_name => 'status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes delivered from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_5xx' => {
        datatype => 'int',
        base_name => 'status_5xx',
        description => 'Number of 5xx \&quot;Server Error\&quot; codes delivered from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_200' => {
        datatype => 'int',
        base_name => 'status_200',
        description => 'Number of responses received with status code 200 (Success) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_204' => {
        datatype => 'int',
        base_name => 'status_204',
        description => 'Number of responses received with status code 204 (No Content) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_206' => {
        datatype => 'int',
        base_name => 'status_206',
        description => 'Number of responses received with status code 206 (Partial Content) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_301' => {
        datatype => 'int',
        base_name => 'status_301',
        description => 'Number of responses received with status code 301 (Moved Permanently) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_302' => {
        datatype => 'int',
        base_name => 'status_302',
        description => 'Number of responses received with status code 302 (Found) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_304' => {
        datatype => 'int',
        base_name => 'status_304',
        description => 'Number of responses received with status code 304 (Not Modified) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_400' => {
        datatype => 'int',
        base_name => 'status_400',
        description => 'Number of responses received with status code 400 (Bad Request) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_401' => {
        datatype => 'int',
        base_name => 'status_401',
        description => 'Number of responses received with status code 401 (Unauthorized) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_403' => {
        datatype => 'int',
        base_name => 'status_403',
        description => 'Number of responses received with status code 403 (Forbidden) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_404' => {
        datatype => 'int',
        base_name => 'status_404',
        description => 'Number of responses received with status code 404 (Not Found) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_416' => {
        datatype => 'int',
        base_name => 'status_416',
        description => 'Number of responses received with status code 416 (Range Not Satisfiable) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_429' => {
        datatype => 'int',
        base_name => 'status_429',
        description => 'Number of responses received with status code 429 (Too Many Requests) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_500' => {
        datatype => 'int',
        base_name => 'status_500',
        description => 'Number of responses received with status code 500 (Internal Server Error) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_501' => {
        datatype => 'int',
        base_name => 'status_501',
        description => 'Number of responses received with status code 501 (Not Implemented) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_502' => {
        datatype => 'int',
        base_name => 'status_502',
        description => 'Number of responses received with status code 502 (Bad Gateway) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_503' => {
        datatype => 'int',
        base_name => 'status_503',
        description => 'Number of responses received with status code 503 (Service Unavailable) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_504' => {
        datatype => 'int',
        base_name => 'status_504',
        description => 'Number of responses received with status code 504 (Gateway Timeout) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_505' => {
        datatype => 'int',
        base_name => 'status_505',
        description => 'Number of responses received with status code 505 (HTTP Version Not Supported) from origin.',
        format => 'int64',
        read_only => 'false',
            },
    'status_530' => {
        datatype => 'int',
        base_name => 'status_530',
        description => 'Number of responses received from origin with status code 530.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_0_to_1ms' => {
        datatype => 'int',
        base_name => 'latency_0_to_1ms',
        description => 'Number of responses from origin with latency between 0 and 1 millisecond.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_1_to_5ms' => {
        datatype => 'int',
        base_name => 'latency_1_to_5ms',
        description => 'Number of responses from origin with latency between 1 and 5 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_5_to_10ms' => {
        datatype => 'int',
        base_name => 'latency_5_to_10ms',
        description => 'Number of responses from origin with latency between 5 and 10 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_10_to_50ms' => {
        datatype => 'int',
        base_name => 'latency_10_to_50ms',
        description => 'Number of responses from origin with latency between 10 and 50 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_50_to_100ms' => {
        datatype => 'int',
        base_name => 'latency_50_to_100ms',
        description => 'Number of responses from origin with latency between 50 and 100 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_100_to_250ms' => {
        datatype => 'int',
        base_name => 'latency_100_to_250ms',
        description => 'Number of responses from origin with latency between 100 and 250 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_250_to_500ms' => {
        datatype => 'int',
        base_name => 'latency_250_to_500ms',
        description => 'Number of responses from origin with latency between 250 and 500 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_500_to_1000ms' => {
        datatype => 'int',
        base_name => 'latency_500_to_1000ms',
        description => 'Number of responses from origin with latency between 500 and 1,000 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_1000_to_5000ms' => {
        datatype => 'int',
        base_name => 'latency_1000_to_5000ms',
        description => 'Number of responses from origin with latency between 1,000 and 5,000 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_5000_to_10000ms' => {
        datatype => 'int',
        base_name => 'latency_5000_to_10000ms',
        description => 'Number of responses from origin with latency between 5,000 and 10,000 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_10000_to_60000ms' => {
        datatype => 'int',
        base_name => 'latency_10000_to_60000ms',
        description => 'Number of responses from origin with latency between 10,000 and 60,000 milliseconds.',
        format => 'int64',
        read_only => 'false',
            },
    'latency_60000ms' => {
        datatype => 'int',
        base_name => 'latency_60000ms',
        description => 'Number of responses from origin with latency of 60,000 milliseconds and above.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_responses' => {
        datatype => 'int',
        base_name => 'waf_responses',
        description => 'Number of responses received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'waf_resp_header_bytes',
        description => 'Number of header bytes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'waf_resp_body_bytes',
        description => 'Number of body bytes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_1xx' => {
        datatype => 'int',
        base_name => 'waf_status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; status codes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_2xx' => {
        datatype => 'int',
        base_name => 'waf_status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_3xx' => {
        datatype => 'int',
        base_name => 'waf_status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_4xx' => {
        datatype => 'int',
        base_name => 'waf_status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_5xx' => {
        datatype => 'int',
        base_name => 'waf_status_5xx',
        description => 'Number of 5xx \&quot;Server Error\&quot; codes received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_200' => {
        datatype => 'int',
        base_name => 'waf_status_200',
        description => 'Number of responses received with status code 200 (Success) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_204' => {
        datatype => 'int',
        base_name => 'waf_status_204',
        description => 'Number of responses received with status code 204 (No Content) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_206' => {
        datatype => 'int',
        base_name => 'waf_status_206',
        description => 'Number of responses received with status code 206 (Partial Content) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_301' => {
        datatype => 'int',
        base_name => 'waf_status_301',
        description => 'Number of responses received with status code 301 (Moved Permanently) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_302' => {
        datatype => 'int',
        base_name => 'waf_status_302',
        description => 'Number of responses received with status code 302 (Found) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_304' => {
        datatype => 'int',
        base_name => 'waf_status_304',
        description => 'Number of responses received with status code 304 (Not Modified) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_400' => {
        datatype => 'int',
        base_name => 'waf_status_400',
        description => 'Number of responses received with status code 400 (Bad Request) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_401' => {
        datatype => 'int',
        base_name => 'waf_status_401',
        description => 'Number of responses received with status code 401 (Unauthorized) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_403' => {
        datatype => 'int',
        base_name => 'waf_status_403',
        description => 'Number of responses received with status code 403 (Forbidden) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_404' => {
        datatype => 'int',
        base_name => 'waf_status_404',
        description => 'Number of responses received with status code 404 (Not Found) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_416' => {
        datatype => 'int',
        base_name => 'waf_status_416',
        description => 'Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_429' => {
        datatype => 'int',
        base_name => 'waf_status_429',
        description => 'Number of responses received with status code 429 (Too Many Requests) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_500' => {
        datatype => 'int',
        base_name => 'waf_status_500',
        description => 'Number of responses received with status code 500 (Internal Server Error) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_501' => {
        datatype => 'int',
        base_name => 'waf_status_501',
        description => 'Number of responses received with status code 501 (Not Implemented) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_502' => {
        datatype => 'int',
        base_name => 'waf_status_502',
        description => 'Number of responses received with status code 502 (Bad Gateway) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_503' => {
        datatype => 'int',
        base_name => 'waf_status_503',
        description => 'Number of responses received with status code 503 (Service Unavailable) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_504' => {
        datatype => 'int',
        base_name => 'waf_status_504',
        description => 'Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_505' => {
        datatype => 'int',
        base_name => 'waf_status_505',
        description => 'Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_status_530' => {
        datatype => 'int',
        base_name => 'waf_status_530',
        description => 'Number of responses received with status code 530 received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_0_to_1ms' => {
        datatype => 'int',
        base_name => 'waf_latency_0_to_1ms',
        description => 'Number of responses with latency between 0 and 1 millisecond received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_1_to_5ms' => {
        datatype => 'int',
        base_name => 'waf_latency_1_to_5ms',
        description => 'Number of responses with latency between 1 and 5 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_5_to_10ms' => {
        datatype => 'int',
        base_name => 'waf_latency_5_to_10ms',
        description => 'Number of responses with latency between 5 and 10 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_10_to_50ms' => {
        datatype => 'int',
        base_name => 'waf_latency_10_to_50ms',
        description => 'Number of responses with latency between 10 and 50 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_50_to_100ms' => {
        datatype => 'int',
        base_name => 'waf_latency_50_to_100ms',
        description => 'Number of responses with latency between 50 and 100 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_100_to_250ms' => {
        datatype => 'int',
        base_name => 'waf_latency_100_to_250ms',
        description => 'Number of responses with latency between 100 and 250 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_250_to_500ms' => {
        datatype => 'int',
        base_name => 'waf_latency_250_to_500ms',
        description => 'Number of responses with latency between 250 and 500 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_500_to_1000ms' => {
        datatype => 'int',
        base_name => 'waf_latency_500_to_1000ms',
        description => 'Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_1000_to_5000ms' => {
        datatype => 'int',
        base_name => 'waf_latency_1000_to_5000ms',
        description => 'Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_5000_to_10000ms' => {
        datatype => 'int',
        base_name => 'waf_latency_5000_to_10000ms',
        description => 'Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_10000_to_60000ms' => {
        datatype => 'int',
        base_name => 'waf_latency_10000_to_60000ms',
        description => 'Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'waf_latency_60000ms' => {
        datatype => 'int',
        base_name => 'waf_latency_60000ms',
        description => 'Number of responses with latency of 60,000 milliseconds and above received for origin requests made by the Fastly WAF.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_responses' => {
        datatype => 'int',
        base_name => 'compute_responses',
        description => 'Number of responses for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'compute_resp_header_bytes',
        description => 'Number of header bytes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'compute_resp_body_bytes',
        description => 'Number of body bytes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_1xx' => {
        datatype => 'int',
        base_name => 'compute_status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; status codes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_2xx' => {
        datatype => 'int',
        base_name => 'compute_status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_3xx' => {
        datatype => 'int',
        base_name => 'compute_status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_4xx' => {
        datatype => 'int',
        base_name => 'compute_status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_5xx' => {
        datatype => 'int',
        base_name => 'compute_status_5xx',
        description => 'Number of 5xx \&quot;Server Error\&quot; codes for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_200' => {
        datatype => 'int',
        base_name => 'compute_status_200',
        description => 'Number of responses received with status code 200 (Success) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_204' => {
        datatype => 'int',
        base_name => 'compute_status_204',
        description => 'Number of responses received with status code 204 (No Content) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_206' => {
        datatype => 'int',
        base_name => 'compute_status_206',
        description => 'Number of responses received with status code 206 (Partial Content) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_301' => {
        datatype => 'int',
        base_name => 'compute_status_301',
        description => 'Number of responses received with status code 301 (Moved Permanently) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_302' => {
        datatype => 'int',
        base_name => 'compute_status_302',
        description => 'Number of responses received with status code 302 (Found) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_304' => {
        datatype => 'int',
        base_name => 'compute_status_304',
        description => 'Number of responses received with status code 304 (Not Modified) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_400' => {
        datatype => 'int',
        base_name => 'compute_status_400',
        description => 'Number of responses received with status code 400 (Bad Request) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_401' => {
        datatype => 'int',
        base_name => 'compute_status_401',
        description => 'Number of responses received with status code 401 (Unauthorized) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_403' => {
        datatype => 'int',
        base_name => 'compute_status_403',
        description => 'Number of responses received with status code 403 (Forbidden) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_404' => {
        datatype => 'int',
        base_name => 'compute_status_404',
        description => 'Number of responses received with status code 404 (Not Found) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_416' => {
        datatype => 'int',
        base_name => 'compute_status_416',
        description => 'Number of responses received with status code 416 (Range Not Satisfiable) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_429' => {
        datatype => 'int',
        base_name => 'compute_status_429',
        description => 'Number of responses received with status code 429 (Too Many Requests) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_500' => {
        datatype => 'int',
        base_name => 'compute_status_500',
        description => 'Number of responses received with status code 500 (Internal Server Error) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_501' => {
        datatype => 'int',
        base_name => 'compute_status_501',
        description => 'Number of responses received with status code 501 (Not Implemented) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_502' => {
        datatype => 'int',
        base_name => 'compute_status_502',
        description => 'Number of responses received with status code 502 (Bad Gateway) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_503' => {
        datatype => 'int',
        base_name => 'compute_status_503',
        description => 'Number of responses received with status code 503 (Service Unavailable) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_504' => {
        datatype => 'int',
        base_name => 'compute_status_504',
        description => 'Number of responses received with status code 504 (Gateway Timeout) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_505' => {
        datatype => 'int',
        base_name => 'compute_status_505',
        description => 'Number of responses received with status code 505 (HTTP Version Not Supported) for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_status_530' => {
        datatype => 'int',
        base_name => 'compute_status_530',
        description => 'Number of responses received with status code 530 for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_0_to_1ms' => {
        datatype => 'int',
        base_name => 'compute_latency_0_to_1ms',
        description => 'Number of responses with latency between 0 and 1 millisecond for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_1_to_5ms' => {
        datatype => 'int',
        base_name => 'compute_latency_1_to_5ms',
        description => 'Number of responses with latency between 1 and 5 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_5_to_10ms' => {
        datatype => 'int',
        base_name => 'compute_latency_5_to_10ms',
        description => 'Number of responses with latency between 5 and 10 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_10_to_50ms' => {
        datatype => 'int',
        base_name => 'compute_latency_10_to_50ms',
        description => 'Number of responses with latency between 10 and 50 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_50_to_100ms' => {
        datatype => 'int',
        base_name => 'compute_latency_50_to_100ms',
        description => 'Number of responses with latency between 50 and 100 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_100_to_250ms' => {
        datatype => 'int',
        base_name => 'compute_latency_100_to_250ms',
        description => 'Number of responses with latency between 100 and 250 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_250_to_500ms' => {
        datatype => 'int',
        base_name => 'compute_latency_250_to_500ms',
        description => 'Number of responses with latency between 250 and 500 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_500_to_1000ms' => {
        datatype => 'int',
        base_name => 'compute_latency_500_to_1000ms',
        description => 'Number of responses with latency between 500 and 1,000 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_1000_to_5000ms' => {
        datatype => 'int',
        base_name => 'compute_latency_1000_to_5000ms',
        description => 'Number of responses with latency between 1,000 and 5,000 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_5000_to_10000ms' => {
        datatype => 'int',
        base_name => 'compute_latency_5000_to_10000ms',
        description => 'Number of responses with latency between 5,000 and 10,000 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_10000_to_60000ms' => {
        datatype => 'int',
        base_name => 'compute_latency_10000_to_60000ms',
        description => 'Number of responses with latency between 10,000 and 60,000 milliseconds for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'compute_latency_60000ms' => {
        datatype => 'int',
        base_name => 'compute_latency_60000ms',
        description => 'Number of responses with latency of 60,000 milliseconds and above for origin received by the Compute platform.',
        format => 'int64',
        read_only => 'false',
            },
    'all_responses' => {
        datatype => 'int',
        base_name => 'all_responses',
        description => 'Number of responses received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_resp_header_bytes' => {
        datatype => 'int',
        base_name => 'all_resp_header_bytes',
        description => 'Number of header bytes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_resp_body_bytes' => {
        datatype => 'int',
        base_name => 'all_resp_body_bytes',
        description => 'Number of body bytes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_1xx' => {
        datatype => 'int',
        base_name => 'all_status_1xx',
        description => 'Number of 1xx \&quot;Informational\&quot; category status codes delivered received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_2xx' => {
        datatype => 'int',
        base_name => 'all_status_2xx',
        description => 'Number of 2xx \&quot;Success\&quot; status codes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_3xx' => {
        datatype => 'int',
        base_name => 'all_status_3xx',
        description => 'Number of 3xx \&quot;Redirection\&quot; codes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_4xx' => {
        datatype => 'int',
        base_name => 'all_status_4xx',
        description => 'Number of 4xx \&quot;Client Error\&quot; codes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_5xx' => {
        datatype => 'int',
        base_name => 'all_status_5xx',
        description => 'Number of 5xx \&quot;Server Error\&quot; codes received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_200' => {
        datatype => 'int',
        base_name => 'all_status_200',
        description => 'Number of responses received with status code 200 (Success) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_204' => {
        datatype => 'int',
        base_name => 'all_status_204',
        description => 'Number of responses received with status code 204 (No Content) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_206' => {
        datatype => 'int',
        base_name => 'all_status_206',
        description => 'Number of responses received with status code 206 (Partial Content) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_301' => {
        datatype => 'int',
        base_name => 'all_status_301',
        description => 'Number of responses received with status code 301 (Moved Permanently) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_302' => {
        datatype => 'int',
        base_name => 'all_status_302',
        description => 'Number of responses received with status code 302 (Found) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_304' => {
        datatype => 'int',
        base_name => 'all_status_304',
        description => 'Number of responses received with status code 304 (Not Modified) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_400' => {
        datatype => 'int',
        base_name => 'all_status_400',
        description => 'Number of responses received with status code 400 (Bad Request) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_401' => {
        datatype => 'int',
        base_name => 'all_status_401',
        description => 'Number of responses received with status code 401 (Unauthorized) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_403' => {
        datatype => 'int',
        base_name => 'all_status_403',
        description => 'Number of responses received with status code 403 (Forbidden) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_404' => {
        datatype => 'int',
        base_name => 'all_status_404',
        description => 'Number of responses received with status code 404 (Not Found) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_416' => {
        datatype => 'int',
        base_name => 'all_status_416',
        description => 'Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_429' => {
        datatype => 'int',
        base_name => 'all_status_429',
        description => 'Number of responses received with status code 429 (Too Many Requests) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_500' => {
        datatype => 'int',
        base_name => 'all_status_500',
        description => 'Number of responses received with status code 500 (Internal Server Error) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_501' => {
        datatype => 'int',
        base_name => 'all_status_501',
        description => 'Number of responses received with status code 501 (Not Implemented) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_502' => {
        datatype => 'int',
        base_name => 'all_status_502',
        description => 'Number of responses received with status code 502 (Bad Gateway) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_503' => {
        datatype => 'int',
        base_name => 'all_status_503',
        description => 'Number of responses received with status code 503 (Service Unavailable) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_504' => {
        datatype => 'int',
        base_name => 'all_status_504',
        description => 'Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_505' => {
        datatype => 'int',
        base_name => 'all_status_505',
        description => 'Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_status_530' => {
        datatype => 'int',
        base_name => 'all_status_530',
        description => 'Number of responses received with status code 530 received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_0_to_1ms' => {
        datatype => 'int',
        base_name => 'all_latency_0_to_1ms',
        description => 'Number of responses with latency between 0 and 1 millisecond received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_1_to_5ms' => {
        datatype => 'int',
        base_name => 'all_latency_1_to_5ms',
        description => 'Number of responses with latency between 1 and 5 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_5_to_10ms' => {
        datatype => 'int',
        base_name => 'all_latency_5_to_10ms',
        description => 'Number of responses with latency between 5 and 10 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_10_to_50ms' => {
        datatype => 'int',
        base_name => 'all_latency_10_to_50ms',
        description => 'Number of responses with latency between 10 and 50 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_50_to_100ms' => {
        datatype => 'int',
        base_name => 'all_latency_50_to_100ms',
        description => 'Number of responses with latency between 50 and 100 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_100_to_250ms' => {
        datatype => 'int',
        base_name => 'all_latency_100_to_250ms',
        description => 'Number of responses with latency between 100 and 250 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_250_to_500ms' => {
        datatype => 'int',
        base_name => 'all_latency_250_to_500ms',
        description => 'Number of responses with latency between 250 and 500 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_500_to_1000ms' => {
        datatype => 'int',
        base_name => 'all_latency_500_to_1000ms',
        description => 'Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_1000_to_5000ms' => {
        datatype => 'int',
        base_name => 'all_latency_1000_to_5000ms',
        description => 'Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_5000_to_10000ms' => {
        datatype => 'int',
        base_name => 'all_latency_5000_to_10000ms',
        description => 'Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_10000_to_60000ms' => {
        datatype => 'int',
        base_name => 'all_latency_10000_to_60000ms',
        description => 'Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
    'all_latency_60000ms' => {
        datatype => 'int',
        base_name => 'all_latency_60000ms',
        description => 'Number of responses with latency of 60,000 milliseconds and above received for origin requests made by all sources.',
        format => 'int64',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'responses' => 'int',
    'resp_header_bytes' => 'int',
    'resp_body_bytes' => 'int',
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
    'latency_0_to_1ms' => 'int',
    'latency_1_to_5ms' => 'int',
    'latency_5_to_10ms' => 'int',
    'latency_10_to_50ms' => 'int',
    'latency_50_to_100ms' => 'int',
    'latency_100_to_250ms' => 'int',
    'latency_250_to_500ms' => 'int',
    'latency_500_to_1000ms' => 'int',
    'latency_1000_to_5000ms' => 'int',
    'latency_5000_to_10000ms' => 'int',
    'latency_10000_to_60000ms' => 'int',
    'latency_60000ms' => 'int',
    'waf_responses' => 'int',
    'waf_resp_header_bytes' => 'int',
    'waf_resp_body_bytes' => 'int',
    'waf_status_1xx' => 'int',
    'waf_status_2xx' => 'int',
    'waf_status_3xx' => 'int',
    'waf_status_4xx' => 'int',
    'waf_status_5xx' => 'int',
    'waf_status_200' => 'int',
    'waf_status_204' => 'int',
    'waf_status_206' => 'int',
    'waf_status_301' => 'int',
    'waf_status_302' => 'int',
    'waf_status_304' => 'int',
    'waf_status_400' => 'int',
    'waf_status_401' => 'int',
    'waf_status_403' => 'int',
    'waf_status_404' => 'int',
    'waf_status_416' => 'int',
    'waf_status_429' => 'int',
    'waf_status_500' => 'int',
    'waf_status_501' => 'int',
    'waf_status_502' => 'int',
    'waf_status_503' => 'int',
    'waf_status_504' => 'int',
    'waf_status_505' => 'int',
    'waf_status_530' => 'int',
    'waf_latency_0_to_1ms' => 'int',
    'waf_latency_1_to_5ms' => 'int',
    'waf_latency_5_to_10ms' => 'int',
    'waf_latency_10_to_50ms' => 'int',
    'waf_latency_50_to_100ms' => 'int',
    'waf_latency_100_to_250ms' => 'int',
    'waf_latency_250_to_500ms' => 'int',
    'waf_latency_500_to_1000ms' => 'int',
    'waf_latency_1000_to_5000ms' => 'int',
    'waf_latency_5000_to_10000ms' => 'int',
    'waf_latency_10000_to_60000ms' => 'int',
    'waf_latency_60000ms' => 'int',
    'compute_responses' => 'int',
    'compute_resp_header_bytes' => 'int',
    'compute_resp_body_bytes' => 'int',
    'compute_status_1xx' => 'int',
    'compute_status_2xx' => 'int',
    'compute_status_3xx' => 'int',
    'compute_status_4xx' => 'int',
    'compute_status_5xx' => 'int',
    'compute_status_200' => 'int',
    'compute_status_204' => 'int',
    'compute_status_206' => 'int',
    'compute_status_301' => 'int',
    'compute_status_302' => 'int',
    'compute_status_304' => 'int',
    'compute_status_400' => 'int',
    'compute_status_401' => 'int',
    'compute_status_403' => 'int',
    'compute_status_404' => 'int',
    'compute_status_416' => 'int',
    'compute_status_429' => 'int',
    'compute_status_500' => 'int',
    'compute_status_501' => 'int',
    'compute_status_502' => 'int',
    'compute_status_503' => 'int',
    'compute_status_504' => 'int',
    'compute_status_505' => 'int',
    'compute_status_530' => 'int',
    'compute_latency_0_to_1ms' => 'int',
    'compute_latency_1_to_5ms' => 'int',
    'compute_latency_5_to_10ms' => 'int',
    'compute_latency_10_to_50ms' => 'int',
    'compute_latency_50_to_100ms' => 'int',
    'compute_latency_100_to_250ms' => 'int',
    'compute_latency_250_to_500ms' => 'int',
    'compute_latency_500_to_1000ms' => 'int',
    'compute_latency_1000_to_5000ms' => 'int',
    'compute_latency_5000_to_10000ms' => 'int',
    'compute_latency_10000_to_60000ms' => 'int',
    'compute_latency_60000ms' => 'int',
    'all_responses' => 'int',
    'all_resp_header_bytes' => 'int',
    'all_resp_body_bytes' => 'int',
    'all_status_1xx' => 'int',
    'all_status_2xx' => 'int',
    'all_status_3xx' => 'int',
    'all_status_4xx' => 'int',
    'all_status_5xx' => 'int',
    'all_status_200' => 'int',
    'all_status_204' => 'int',
    'all_status_206' => 'int',
    'all_status_301' => 'int',
    'all_status_302' => 'int',
    'all_status_304' => 'int',
    'all_status_400' => 'int',
    'all_status_401' => 'int',
    'all_status_403' => 'int',
    'all_status_404' => 'int',
    'all_status_416' => 'int',
    'all_status_429' => 'int',
    'all_status_500' => 'int',
    'all_status_501' => 'int',
    'all_status_502' => 'int',
    'all_status_503' => 'int',
    'all_status_504' => 'int',
    'all_status_505' => 'int',
    'all_status_530' => 'int',
    'all_latency_0_to_1ms' => 'int',
    'all_latency_1_to_5ms' => 'int',
    'all_latency_5_to_10ms' => 'int',
    'all_latency_10_to_50ms' => 'int',
    'all_latency_50_to_100ms' => 'int',
    'all_latency_100_to_250ms' => 'int',
    'all_latency_250_to_500ms' => 'int',
    'all_latency_500_to_1000ms' => 'int',
    'all_latency_1000_to_5000ms' => 'int',
    'all_latency_5000_to_10000ms' => 'int',
    'all_latency_10000_to_60000ms' => 'int',
    'all_latency_60000ms' => 'int'
} );

__PACKAGE__->attribute_map( {
    'responses' => 'responses',
    'resp_header_bytes' => 'resp_header_bytes',
    'resp_body_bytes' => 'resp_body_bytes',
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
    'latency_0_to_1ms' => 'latency_0_to_1ms',
    'latency_1_to_5ms' => 'latency_1_to_5ms',
    'latency_5_to_10ms' => 'latency_5_to_10ms',
    'latency_10_to_50ms' => 'latency_10_to_50ms',
    'latency_50_to_100ms' => 'latency_50_to_100ms',
    'latency_100_to_250ms' => 'latency_100_to_250ms',
    'latency_250_to_500ms' => 'latency_250_to_500ms',
    'latency_500_to_1000ms' => 'latency_500_to_1000ms',
    'latency_1000_to_5000ms' => 'latency_1000_to_5000ms',
    'latency_5000_to_10000ms' => 'latency_5000_to_10000ms',
    'latency_10000_to_60000ms' => 'latency_10000_to_60000ms',
    'latency_60000ms' => 'latency_60000ms',
    'waf_responses' => 'waf_responses',
    'waf_resp_header_bytes' => 'waf_resp_header_bytes',
    'waf_resp_body_bytes' => 'waf_resp_body_bytes',
    'waf_status_1xx' => 'waf_status_1xx',
    'waf_status_2xx' => 'waf_status_2xx',
    'waf_status_3xx' => 'waf_status_3xx',
    'waf_status_4xx' => 'waf_status_4xx',
    'waf_status_5xx' => 'waf_status_5xx',
    'waf_status_200' => 'waf_status_200',
    'waf_status_204' => 'waf_status_204',
    'waf_status_206' => 'waf_status_206',
    'waf_status_301' => 'waf_status_301',
    'waf_status_302' => 'waf_status_302',
    'waf_status_304' => 'waf_status_304',
    'waf_status_400' => 'waf_status_400',
    'waf_status_401' => 'waf_status_401',
    'waf_status_403' => 'waf_status_403',
    'waf_status_404' => 'waf_status_404',
    'waf_status_416' => 'waf_status_416',
    'waf_status_429' => 'waf_status_429',
    'waf_status_500' => 'waf_status_500',
    'waf_status_501' => 'waf_status_501',
    'waf_status_502' => 'waf_status_502',
    'waf_status_503' => 'waf_status_503',
    'waf_status_504' => 'waf_status_504',
    'waf_status_505' => 'waf_status_505',
    'waf_status_530' => 'waf_status_530',
    'waf_latency_0_to_1ms' => 'waf_latency_0_to_1ms',
    'waf_latency_1_to_5ms' => 'waf_latency_1_to_5ms',
    'waf_latency_5_to_10ms' => 'waf_latency_5_to_10ms',
    'waf_latency_10_to_50ms' => 'waf_latency_10_to_50ms',
    'waf_latency_50_to_100ms' => 'waf_latency_50_to_100ms',
    'waf_latency_100_to_250ms' => 'waf_latency_100_to_250ms',
    'waf_latency_250_to_500ms' => 'waf_latency_250_to_500ms',
    'waf_latency_500_to_1000ms' => 'waf_latency_500_to_1000ms',
    'waf_latency_1000_to_5000ms' => 'waf_latency_1000_to_5000ms',
    'waf_latency_5000_to_10000ms' => 'waf_latency_5000_to_10000ms',
    'waf_latency_10000_to_60000ms' => 'waf_latency_10000_to_60000ms',
    'waf_latency_60000ms' => 'waf_latency_60000ms',
    'compute_responses' => 'compute_responses',
    'compute_resp_header_bytes' => 'compute_resp_header_bytes',
    'compute_resp_body_bytes' => 'compute_resp_body_bytes',
    'compute_status_1xx' => 'compute_status_1xx',
    'compute_status_2xx' => 'compute_status_2xx',
    'compute_status_3xx' => 'compute_status_3xx',
    'compute_status_4xx' => 'compute_status_4xx',
    'compute_status_5xx' => 'compute_status_5xx',
    'compute_status_200' => 'compute_status_200',
    'compute_status_204' => 'compute_status_204',
    'compute_status_206' => 'compute_status_206',
    'compute_status_301' => 'compute_status_301',
    'compute_status_302' => 'compute_status_302',
    'compute_status_304' => 'compute_status_304',
    'compute_status_400' => 'compute_status_400',
    'compute_status_401' => 'compute_status_401',
    'compute_status_403' => 'compute_status_403',
    'compute_status_404' => 'compute_status_404',
    'compute_status_416' => 'compute_status_416',
    'compute_status_429' => 'compute_status_429',
    'compute_status_500' => 'compute_status_500',
    'compute_status_501' => 'compute_status_501',
    'compute_status_502' => 'compute_status_502',
    'compute_status_503' => 'compute_status_503',
    'compute_status_504' => 'compute_status_504',
    'compute_status_505' => 'compute_status_505',
    'compute_status_530' => 'compute_status_530',
    'compute_latency_0_to_1ms' => 'compute_latency_0_to_1ms',
    'compute_latency_1_to_5ms' => 'compute_latency_1_to_5ms',
    'compute_latency_5_to_10ms' => 'compute_latency_5_to_10ms',
    'compute_latency_10_to_50ms' => 'compute_latency_10_to_50ms',
    'compute_latency_50_to_100ms' => 'compute_latency_50_to_100ms',
    'compute_latency_100_to_250ms' => 'compute_latency_100_to_250ms',
    'compute_latency_250_to_500ms' => 'compute_latency_250_to_500ms',
    'compute_latency_500_to_1000ms' => 'compute_latency_500_to_1000ms',
    'compute_latency_1000_to_5000ms' => 'compute_latency_1000_to_5000ms',
    'compute_latency_5000_to_10000ms' => 'compute_latency_5000_to_10000ms',
    'compute_latency_10000_to_60000ms' => 'compute_latency_10000_to_60000ms',
    'compute_latency_60000ms' => 'compute_latency_60000ms',
    'all_responses' => 'all_responses',
    'all_resp_header_bytes' => 'all_resp_header_bytes',
    'all_resp_body_bytes' => 'all_resp_body_bytes',
    'all_status_1xx' => 'all_status_1xx',
    'all_status_2xx' => 'all_status_2xx',
    'all_status_3xx' => 'all_status_3xx',
    'all_status_4xx' => 'all_status_4xx',
    'all_status_5xx' => 'all_status_5xx',
    'all_status_200' => 'all_status_200',
    'all_status_204' => 'all_status_204',
    'all_status_206' => 'all_status_206',
    'all_status_301' => 'all_status_301',
    'all_status_302' => 'all_status_302',
    'all_status_304' => 'all_status_304',
    'all_status_400' => 'all_status_400',
    'all_status_401' => 'all_status_401',
    'all_status_403' => 'all_status_403',
    'all_status_404' => 'all_status_404',
    'all_status_416' => 'all_status_416',
    'all_status_429' => 'all_status_429',
    'all_status_500' => 'all_status_500',
    'all_status_501' => 'all_status_501',
    'all_status_502' => 'all_status_502',
    'all_status_503' => 'all_status_503',
    'all_status_504' => 'all_status_504',
    'all_status_505' => 'all_status_505',
    'all_status_530' => 'all_status_530',
    'all_latency_0_to_1ms' => 'all_latency_0_to_1ms',
    'all_latency_1_to_5ms' => 'all_latency_1_to_5ms',
    'all_latency_5_to_10ms' => 'all_latency_5_to_10ms',
    'all_latency_10_to_50ms' => 'all_latency_10_to_50ms',
    'all_latency_50_to_100ms' => 'all_latency_50_to_100ms',
    'all_latency_100_to_250ms' => 'all_latency_100_to_250ms',
    'all_latency_250_to_500ms' => 'all_latency_250_to_500ms',
    'all_latency_500_to_1000ms' => 'all_latency_500_to_1000ms',
    'all_latency_1000_to_5000ms' => 'all_latency_1000_to_5000ms',
    'all_latency_5000_to_10000ms' => 'all_latency_5000_to_10000ms',
    'all_latency_10000_to_60000ms' => 'all_latency_10000_to_60000ms',
    'all_latency_60000ms' => 'all_latency_60000ms'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
