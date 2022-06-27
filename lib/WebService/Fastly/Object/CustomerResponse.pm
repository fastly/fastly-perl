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
package WebService::Fastly::Object::CustomerResponse;

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

use WebService::Fastly::Object::Customer;
use WebService::Fastly::Object::CustomerResponseAllOf;
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
                                  class => 'CustomerResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'billing_contact_id' => {
        datatype => 'string',
        base_name => 'billing_contact_id',
        description => 'The alphanumeric string representing the primary billing contact.',
        format => '',
        read_only => 'false',
            },
    'billing_network_type' => {
        datatype => 'string',
        base_name => 'billing_network_type',
        description => 'Customer&#39;s current network revenue type.',
        format => '',
        read_only => 'false',
            },
    'billing_ref' => {
        datatype => 'string',
        base_name => 'billing_ref',
        description => 'Used for adding purchased orders to customer&#39;s account.',
        format => '',
        read_only => 'false',
            },
    'can_configure_wordpress' => {
        datatype => 'boolean',
        base_name => 'can_configure_wordpress',
        description => 'Whether this customer can view or edit wordpress.',
        format => '',
        read_only => 'true',
            },
    'can_reset_passwords' => {
        datatype => 'boolean',
        base_name => 'can_reset_passwords',
        description => 'Whether this customer can reset passwords.',
        format => '',
        read_only => 'true',
            },
    'can_upload_vcl' => {
        datatype => 'boolean',
        base_name => 'can_upload_vcl',
        description => 'Whether this customer can upload VCL.',
        format => '',
        read_only => 'true',
            },
    'force_2fa' => {
        datatype => 'boolean',
        base_name => 'force_2fa',
        description => 'Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.',
        format => '',
        read_only => 'false',
            },
    'force_sso' => {
        datatype => 'boolean',
        base_name => 'force_sso',
        description => 'Specifies whether SSO is forced or not forced on the customer account.',
        format => '',
        read_only => 'false',
            },
    'has_account_panel' => {
        datatype => 'boolean',
        base_name => 'has_account_panel',
        description => 'Specifies whether the account has access or does not have access to the account panel.',
        format => '',
        read_only => 'false',
            },
    'has_improved_events' => {
        datatype => 'boolean',
        base_name => 'has_improved_events',
        description => 'Specifies whether the account has access or does not have access to the improved events.',
        format => '',
        read_only => 'false',
            },
    'has_improved_ssl_config' => {
        datatype => 'boolean',
        base_name => 'has_improved_ssl_config',
        description => 'Whether this customer can view or edit the SSL config.',
        format => '',
        read_only => 'true',
            },
    'has_openstack_logging' => {
        datatype => 'boolean',
        base_name => 'has_openstack_logging',
        description => 'Specifies whether the account has enabled or not enabled openstack logging.',
        format => '',
        read_only => 'false',
            },
    'has_pci' => {
        datatype => 'boolean',
        base_name => 'has_pci',
        description => 'Specifies whether the account can edit PCI for a service.',
        format => '',
        read_only => 'false',
            },
    'has_pci_passwords' => {
        datatype => 'boolean',
        base_name => 'has_pci_passwords',
        description => 'Specifies whether PCI passwords are required for the account.',
        format => '',
        read_only => 'true',
            },
    'ip_whitelist' => {
        datatype => 'string',
        base_name => 'ip_whitelist',
        description => 'The range of IP addresses authorized to access the customer account.',
        format => '',
        read_only => 'false',
            },
    'legal_contact_id' => {
        datatype => 'string',
        base_name => 'legal_contact_id',
        description => 'The alphanumeric string identifying the account&#39;s legal contact.',
        format => '',
        read_only => 'false',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'The name of the customer, generally the company name.',
        format => '',
        read_only => 'false',
            },
    'owner_id' => {
        datatype => 'string',
        base_name => 'owner_id',
        description => 'The alphanumeric string identifying the account owner.',
        format => '',
        read_only => 'false',
            },
    'phone_number' => {
        datatype => 'string',
        base_name => 'phone_number',
        description => 'The phone number associated with the account.',
        format => '',
        read_only => 'false',
            },
    'postal_address' => {
        datatype => 'string',
        base_name => 'postal_address',
        description => 'The postal address associated with the account.',
        format => '',
        read_only => 'false',
            },
    'pricing_plan' => {
        datatype => 'string',
        base_name => 'pricing_plan',
        description => 'The pricing plan this customer is under.',
        format => '',
        read_only => 'false',
            },
    'pricing_plan_id' => {
        datatype => 'string',
        base_name => 'pricing_plan_id',
        description => 'The alphanumeric string identifying the pricing plan.',
        format => '',
        read_only => 'false',
            },
    'security_contact_id' => {
        datatype => 'string',
        base_name => 'security_contact_id',
        description => 'The alphanumeric string identifying the account&#39;s security contact.',
        format => '',
        read_only => 'false',
            },
    'technical_contact_id' => {
        datatype => 'string',
        base_name => 'technical_contact_id',
        description => 'The alphanumeric string identifying the account&#39;s technical contact.',
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
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => 'true',
            },
});

__PACKAGE__->openapi_types( {
    'billing_contact_id' => 'string',
    'billing_network_type' => 'string',
    'billing_ref' => 'string',
    'can_configure_wordpress' => 'boolean',
    'can_reset_passwords' => 'boolean',
    'can_upload_vcl' => 'boolean',
    'force_2fa' => 'boolean',
    'force_sso' => 'boolean',
    'has_account_panel' => 'boolean',
    'has_improved_events' => 'boolean',
    'has_improved_ssl_config' => 'boolean',
    'has_openstack_logging' => 'boolean',
    'has_pci' => 'boolean',
    'has_pci_passwords' => 'boolean',
    'ip_whitelist' => 'string',
    'legal_contact_id' => 'string',
    'name' => 'string',
    'owner_id' => 'string',
    'phone_number' => 'string',
    'postal_address' => 'string',
    'pricing_plan' => 'string',
    'pricing_plan_id' => 'string',
    'security_contact_id' => 'string',
    'technical_contact_id' => 'string',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'id' => 'string'
} );

__PACKAGE__->attribute_map( {
    'billing_contact_id' => 'billing_contact_id',
    'billing_network_type' => 'billing_network_type',
    'billing_ref' => 'billing_ref',
    'can_configure_wordpress' => 'can_configure_wordpress',
    'can_reset_passwords' => 'can_reset_passwords',
    'can_upload_vcl' => 'can_upload_vcl',
    'force_2fa' => 'force_2fa',
    'force_sso' => 'force_sso',
    'has_account_panel' => 'has_account_panel',
    'has_improved_events' => 'has_improved_events',
    'has_improved_ssl_config' => 'has_improved_ssl_config',
    'has_openstack_logging' => 'has_openstack_logging',
    'has_pci' => 'has_pci',
    'has_pci_passwords' => 'has_pci_passwords',
    'ip_whitelist' => 'ip_whitelist',
    'legal_contact_id' => 'legal_contact_id',
    'name' => 'name',
    'owner_id' => 'owner_id',
    'phone_number' => 'phone_number',
    'postal_address' => 'postal_address',
    'pricing_plan' => 'pricing_plan',
    'pricing_plan_id' => 'pricing_plan_id',
    'security_contact_id' => 'security_contact_id',
    'technical_contact_id' => 'technical_contact_id',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    'updated_at' => 'updated_at',
    'id' => 'id'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

__PACKAGE__->openapi_nullable( {
    'billing_contact_id' => 'true',
    'billing_ref' => 'true',
    'can_configure_wordpress' => 'true',
    'legal_contact_id' => 'true',
    'postal_address' => 'true',
    'security_contact_id' => 'true',
    'technical_contact_id' => 'true',
    'created_at' => 'true',
    'deleted_at' => 'true',
    'updated_at' => 'true',
    'id' => 'true',
} );


1;
