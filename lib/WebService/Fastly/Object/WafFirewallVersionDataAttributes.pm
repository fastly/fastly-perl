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
package WebService::Fastly::Object::WafFirewallVersionDataAttributes;

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
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
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
                                  class => 'WafFirewallVersionDataAttributes',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'allowed_http_versions' => {
        datatype => 'string',
        base_name => 'allowed_http_versions',
        description => 'Allowed HTTP versions.',
        format => '',
        read_only => 'false',
            },
    'allowed_methods' => {
        datatype => 'string',
        base_name => 'allowed_methods',
        description => 'A space-separated list of HTTP method names.',
        format => '',
        read_only => 'false',
            },
    'allowed_request_content_type' => {
        datatype => 'string',
        base_name => 'allowed_request_content_type',
        description => 'Allowed request content types.',
        format => '',
        read_only => 'false',
            },
    'allowed_request_content_type_charset' => {
        datatype => 'string',
        base_name => 'allowed_request_content_type_charset',
        description => 'Allowed request content type charset.',
        format => '',
        read_only => 'false',
            },
    'arg_name_length' => {
        datatype => 'int',
        base_name => 'arg_name_length',
        description => 'The maximum allowed argument name length.',
        format => '',
        read_only => 'false',
            },
    'arg_length' => {
        datatype => 'int',
        base_name => 'arg_length',
        description => 'The maximum number of arguments allowed.',
        format => '',
        read_only => 'false',
            },
    'combined_file_sizes' => {
        datatype => 'int',
        base_name => 'combined_file_sizes',
        description => 'The maximum allowed size of all files (in bytes).',
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
    'critical_anomaly_score' => {
        datatype => 'int',
        base_name => 'critical_anomaly_score',
        description => 'Score value to add for critical anomalies.',
        format => '',
        read_only => 'false',
            },
    'crs_validate_utf8_encoding' => {
        datatype => 'boolean',
        base_name => 'crs_validate_utf8_encoding',
        description => 'CRS validate UTF8 encoding.',
        format => '',
        read_only => 'false',
            },
    'error_anomaly_score' => {
        datatype => 'int',
        base_name => 'error_anomaly_score',
        description => 'Score value to add for error anomalies.',
        format => '',
        read_only => 'false',
            },
    'high_risk_country_codes' => {
        datatype => 'string',
        base_name => 'high_risk_country_codes',
        description => 'A space-separated list of country codes in ISO 3166-1 (two-letter) format.',
        format => '',
        read_only => 'false',
            },
    'http_violation_score_threshold' => {
        datatype => 'int',
        base_name => 'http_violation_score_threshold',
        description => 'HTTP violation threshold.',
        format => '',
        read_only => 'false',
            },
    'inbound_anomaly_score_threshold' => {
        datatype => 'int',
        base_name => 'inbound_anomaly_score_threshold',
        description => 'Inbound anomaly threshold.',
        format => '',
        read_only => 'false',
            },
    'lfi_score_threshold' => {
        datatype => 'int',
        base_name => 'lfi_score_threshold',
        description => 'Local file inclusion attack threshold.',
        format => '',
        read_only => 'false',
            },
    'locked' => {
        datatype => 'boolean',
        base_name => 'locked',
        description => 'Whether a specific firewall version is locked from being modified.',
        format => '',
        read_only => 'false',
            },
    'max_file_size' => {
        datatype => 'int',
        base_name => 'max_file_size',
        description => 'The maximum allowed file size, in bytes.',
        format => '',
        read_only => 'false',
            },
    'max_num_args' => {
        datatype => 'int',
        base_name => 'max_num_args',
        description => 'The maximum number of arguments allowed.',
        format => '',
        read_only => 'false',
            },
    'notice_anomaly_score' => {
        datatype => 'int',
        base_name => 'notice_anomaly_score',
        description => 'Score value to add for notice anomalies.',
        format => '',
        read_only => 'false',
            },
    'number' => {
        datatype => 'int',
        base_name => 'number',
        description => '',
        format => '',
        read_only => 'true',
            },
    'paranoia_level' => {
        datatype => 'int',
        base_name => 'paranoia_level',
        description => 'The configured paranoia level.',
        format => '',
        read_only => 'false',
            },
    'php_injection_score_threshold' => {
        datatype => 'int',
        base_name => 'php_injection_score_threshold',
        description => 'PHP injection threshold.',
        format => '',
        read_only => 'false',
            },
    'rce_score_threshold' => {
        datatype => 'int',
        base_name => 'rce_score_threshold',
        description => 'Remote code execution threshold.',
        format => '',
        read_only => 'false',
            },
    'restricted_extensions' => {
        datatype => 'string',
        base_name => 'restricted_extensions',
        description => 'A space-separated list of allowed file extensions.',
        format => '',
        read_only => 'false',
            },
    'restricted_headers' => {
        datatype => 'string',
        base_name => 'restricted_headers',
        description => 'A space-separated list of allowed header names.',
        format => '',
        read_only => 'false',
            },
    'rfi_score_threshold' => {
        datatype => 'int',
        base_name => 'rfi_score_threshold',
        description => 'Remote file inclusion attack threshold.',
        format => '',
        read_only => 'false',
            },
    'session_fixation_score_threshold' => {
        datatype => 'int',
        base_name => 'session_fixation_score_threshold',
        description => 'Session fixation attack threshold.',
        format => '',
        read_only => 'false',
            },
    'sql_injection_score_threshold' => {
        datatype => 'int',
        base_name => 'sql_injection_score_threshold',
        description => 'SQL injection attack threshold.',
        format => '',
        read_only => 'false',
            },
    'total_arg_length' => {
        datatype => 'int',
        base_name => 'total_arg_length',
        description => 'The maximum size of argument names and values.',
        format => '',
        read_only => 'false',
            },
    'warning_anomaly_score' => {
        datatype => 'int',
        base_name => 'warning_anomaly_score',
        description => 'Score value to add for warning anomalies.',
        format => '',
        read_only => 'false',
            },
    'xss_score_threshold' => {
        datatype => 'int',
        base_name => 'xss_score_threshold',
        description => 'XSS attack threshold.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'allowed_http_versions' => 'string',
    'allowed_methods' => 'string',
    'allowed_request_content_type' => 'string',
    'allowed_request_content_type_charset' => 'string',
    'arg_name_length' => 'int',
    'arg_length' => 'int',
    'combined_file_sizes' => 'int',
    'comment' => 'string',
    'critical_anomaly_score' => 'int',
    'crs_validate_utf8_encoding' => 'boolean',
    'error_anomaly_score' => 'int',
    'high_risk_country_codes' => 'string',
    'http_violation_score_threshold' => 'int',
    'inbound_anomaly_score_threshold' => 'int',
    'lfi_score_threshold' => 'int',
    'locked' => 'boolean',
    'max_file_size' => 'int',
    'max_num_args' => 'int',
    'notice_anomaly_score' => 'int',
    'number' => 'int',
    'paranoia_level' => 'int',
    'php_injection_score_threshold' => 'int',
    'rce_score_threshold' => 'int',
    'restricted_extensions' => 'string',
    'restricted_headers' => 'string',
    'rfi_score_threshold' => 'int',
    'session_fixation_score_threshold' => 'int',
    'sql_injection_score_threshold' => 'int',
    'total_arg_length' => 'int',
    'warning_anomaly_score' => 'int',
    'xss_score_threshold' => 'int'
} );

__PACKAGE__->attribute_map( {
    'allowed_http_versions' => 'allowed_http_versions',
    'allowed_methods' => 'allowed_methods',
    'allowed_request_content_type' => 'allowed_request_content_type',
    'allowed_request_content_type_charset' => 'allowed_request_content_type_charset',
    'arg_name_length' => 'arg_name_length',
    'arg_length' => 'arg_length',
    'combined_file_sizes' => 'combined_file_sizes',
    'comment' => 'comment',
    'critical_anomaly_score' => 'critical_anomaly_score',
    'crs_validate_utf8_encoding' => 'crs_validate_utf8_encoding',
    'error_anomaly_score' => 'error_anomaly_score',
    'high_risk_country_codes' => 'high_risk_country_codes',
    'http_violation_score_threshold' => 'http_violation_score_threshold',
    'inbound_anomaly_score_threshold' => 'inbound_anomaly_score_threshold',
    'lfi_score_threshold' => 'lfi_score_threshold',
    'locked' => 'locked',
    'max_file_size' => 'max_file_size',
    'max_num_args' => 'max_num_args',
    'notice_anomaly_score' => 'notice_anomaly_score',
    'number' => 'number',
    'paranoia_level' => 'paranoia_level',
    'php_injection_score_threshold' => 'php_injection_score_threshold',
    'rce_score_threshold' => 'rce_score_threshold',
    'restricted_extensions' => 'restricted_extensions',
    'restricted_headers' => 'restricted_headers',
    'rfi_score_threshold' => 'rfi_score_threshold',
    'session_fixation_score_threshold' => 'session_fixation_score_threshold',
    'sql_injection_score_threshold' => 'sql_injection_score_threshold',
    'total_arg_length' => 'total_arg_length',
    'warning_anomaly_score' => 'warning_anomaly_score',
    'xss_score_threshold' => 'xss_score_threshold'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'comment' => 'true',
    'number' => 'true',
} );


1;
