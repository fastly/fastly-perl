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
package WebService::Fastly::Object::LoggingS3Additional;

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
                                  class => 'LoggingS3Additional',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'access_key' => {
        datatype => 'string',
        base_name => 'access_key',
        description => 'The access key for your S3 account. Not required if &#x60;iam_role&#x60; is provided.',
        format => '',
        read_only => 'false',
            },
    'acl' => {
        datatype => 'string',
        base_name => 'acl',
        description => 'The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.',
        format => '',
        read_only => 'false',
            },
    'bucket_name' => {
        datatype => 'string',
        base_name => 'bucket_name',
        description => 'The bucket name for S3 account.',
        format => '',
        read_only => 'false',
            },
    'domain' => {
        datatype => 'string',
        base_name => 'domain',
        description => 'The domain of the Amazon S3 endpoint.',
        format => '',
        read_only => 'false',
            },
    'iam_role' => {
        datatype => 'string',
        base_name => 'iam_role',
        description => 'The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if &#x60;access_key&#x60; and &#x60;secret_key&#x60; are provided.',
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
    'redundancy' => {
        datatype => 'string',
        base_name => 'redundancy',
        description => 'The S3 redundancy level.',
        format => '',
        read_only => 'false',
            },
    'secret_key' => {
        datatype => 'string',
        base_name => 'secret_key',
        description => 'The secret key for your S3 account. Not required if &#x60;iam_role&#x60; is provided.',
        format => '',
        read_only => 'false',
            },
    'server_side_encryption_kms_key_id' => {
        datatype => 'string',
        base_name => 'server_side_encryption_kms_key_id',
        description => 'Optional server-side KMS Key Id. Must be set if &#x60;server_side_encryption&#x60; is set to &#x60;aws:kms&#x60; or &#x60;AES256&#x60;.',
        format => '',
        read_only => 'false',
            },
    'server_side_encryption' => {
        datatype => 'string',
        base_name => 'server_side_encryption',
        description => 'Set this to &#x60;AES256&#x60; or &#x60;aws:kms&#x60; to enable S3 Server Side Encryption.',
        format => '',
        read_only => 'false',
            },
});

__PACKAGE__->openapi_types( {
    'access_key' => 'string',
    'acl' => 'string',
    'bucket_name' => 'string',
    'domain' => 'string',
    'iam_role' => 'string',
    'path' => 'string',
    'public_key' => 'string',
    'redundancy' => 'string',
    'secret_key' => 'string',
    'server_side_encryption_kms_key_id' => 'string',
    'server_side_encryption' => 'string'
} );

__PACKAGE__->attribute_map( {
    'access_key' => 'access_key',
    'acl' => 'acl',
    'bucket_name' => 'bucket_name',
    'domain' => 'domain',
    'iam_role' => 'iam_role',
    'path' => 'path',
    'public_key' => 'public_key',
    'redundancy' => 'redundancy',
    'secret_key' => 'secret_key',
    'server_side_encryption_kms_key_id' => 'server_side_encryption_kms_key_id',
    'server_side_encryption' => 'server_side_encryption'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'access_key' => 'true',
    'iam_role' => 'true',
    'path' => 'true',
    'public_key' => 'true',
    'redundancy' => 'true',
    'secret_key' => 'true',
    'server_side_encryption_kms_key_id' => 'true',
    'server_side_encryption' => 'true',
} );


1;
