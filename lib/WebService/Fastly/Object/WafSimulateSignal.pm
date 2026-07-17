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
package WebService::Fastly::Object::WafSimulateSignal;

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
#A signal detected during WAF simulation. The &#x60;type&#x60;, &#x60;detector&#x60;, &#x60;detector_scope&#x60;, and &#x60;redaction&#x60; fields are always present. The &#x60;location&#x60;, &#x60;name&#x60;, and &#x60;value&#x60; fields are present only when applicable to the signal category.
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


__PACKAGE__->class_documentation({description => 'A signal detected during WAF simulation. The &#x60;type&#x60;, &#x60;detector&#x60;, &#x60;detector_scope&#x60;, and &#x60;redaction&#x60; fields are always present. The &#x60;location&#x60;, &#x60;name&#x60;, and &#x60;value&#x60; fields are present only when applicable to the signal category.',
                                  class => 'WafSimulateSignal',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => 'The type of signal detected (e.g., &#x60;SQLI&#x60;, &#x60;XSS&#x60;, &#x60;CMDEXE&#x60;, &#x60;TRAVERSAL&#x60;, &#x60;BACKDOOR&#x60;, &#x60;LOG4J-JNDI&#x60;, &#x60;BLOCKED&#x60;).',
        format => '',
        read_only => 'false',
            },
    'detector' => {
        datatype => 'string',
        base_name => 'detector',
        description => 'The detector engine that identified the signal (e.g., &#x60;SQLI&#x60;, &#x60;LIBINJECTIONV5&#x60;, &#x60;LIBINJECTIONJS&#x60;, or a rule ID).',
        format => '',
        read_only => 'false',
            },
    'detector_scope' => {
        datatype => 'string',
        base_name => 'detector_scope',
        description => 'The scope of the detector that identified the signal. Derived from the signal type and detection type at simulation time. &#x60;system&#x60; — built-in WAF rule (e.g., &#x60;SQLI&#x60;, &#x60;XSS&#x60;). &#x60;workspace&#x60; — workspace-level custom rule or signal (e.g., &#x60;site.*&#x60; prefix). &#x60;account&#x60; — account-level custom signal (e.g., &#x60;corp.*&#x60; prefix). &#x60;unknown&#x60; — scope could not be determined (e.g., tags fetch failed or unrecognized type).',
        format => '',
        read_only => 'false',
            },
    'redaction' => {
        datatype => 'string',
        base_name => 'redaction',
        description => 'The redaction level applied to the detected value. Clients should handle unexpected string values gracefully, as new redaction types may be added.',
        format => '',
        read_only => 'false',
            },
    'location' => {
        datatype => 'string',
        base_name => 'location',
        description => 'Where in the request the signal was detected (e.g., &#x60;QUERYSTRING&#x60;, &#x60;POSTBODY&#x60;, &#x60;HEADER&#x60;, &#x60;HEADEROUT&#x60;, &#x60;POSTARG&#x60;). Present for detection signals; absent for custom and action signals.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The parameter or header name that triggered detection. Present when the WAF engine identifies a specific parameter or header.',
        format => '',
        read_only => 'false',
            },
    'value' => {
        datatype => 'string',
        base_name => 'value',
        description => 'The matched payload value that triggered signal detection. For detection signals, contains the matched content. For &#x60;BLOCKED&#x60; signals, carries the WAF response code as a string. Absent for custom signals.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'type' => 'string',
    'detector' => 'string',
    'detector_scope' => 'string',
    'redaction' => 'string',
    'location' => 'string',
    'name' => 'string',
    'value' => 'string'
} );

__PACKAGE__->attribute_map( {
    'type' => 'type',
    'detector' => 'detector',
    'detector_scope' => 'detector_scope',
    'redaction' => 'redaction',
    'location' => 'location',
    'name' => 'name',
    'value' => 'value'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
} );


1;
