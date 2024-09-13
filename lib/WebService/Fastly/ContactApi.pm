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
package WebService::Fastly::ContactApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WebService::Fastly::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WebService::Fastly::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WebService::Fastly::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_contacts
#
# Add a new customer contact
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param string $user_id The alphanumeric string representing the user for this customer contact. (optional)
# @param string $contact_type The type of contact. (optional)
# @param string $name The name of this contact, when user_id is not provided. (optional)
# @param string $email The email of this contact, when a user_id is not provided. (optional)
# @param string $phone The phone number for this contact. Required for primary, technical, and security contact types. (optional)
# @param string $customer_id The alphanumeric string representing the customer for this customer contact. (optional)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'user_id' => {
        data_type => 'string',
        description => 'The alphanumeric string representing the user for this customer contact.',
        required => '0',
    },
    'contact_type' => {
        data_type => 'string',
        description => 'The type of contact.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of this contact, when user_id is not provided.',
        required => '0',
    },
    'email' => {
        data_type => 'string',
        description => 'The email of this contact, when a user_id is not provided.',
        required => '0',
    },
    'phone' => {
        data_type => 'string',
        description => 'The phone number for this contact. Required for primary, technical, and security contact types.',
        required => '0',
    },
    'customer_id' => {
        data_type => 'string',
        description => 'The alphanumeric string representing the customer for this customer contact.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_contacts' } = {
        summary => 'Add a new customer contact',
        params => $params,
        returns => 'ContactResponse',
        };
}
# @return ContactResponse
#
sub create_contacts {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling create_contacts");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/contacts';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'user_id'} ) {
                $form_params->{'user_id'} = $self->{api_client}->to_form_value($args{'user_id'});
    }

    # form params
    if ( exists $args{'contact_type'} ) {
                $form_params->{'contact_type'} = $self->{api_client}->to_form_value($args{'contact_type'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'email'} ) {
                $form_params->{'email'} = $self->{api_client}->to_form_value($args{'email'});
    }

    # form params
    if ( exists $args{'phone'} ) {
                $form_params->{'phone'} = $self->{api_client}->to_form_value($args{'phone'});
    }

    # form params
    if ( exists $args{'customer_id'} ) {
                $form_params->{'customer_id'} = $self->{api_client}->to_form_value($args{'customer_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ContactResponse', $response);
    return $_response_object;
}

#
# delete_contact
#
# Delete a contact
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param string $contact_id An alphanumeric string identifying the customer contact. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'contact_id' => {
        data_type => 'string',
        description => 'An alphanumeric string identifying the customer contact.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_contact' } = {
        summary => 'Delete a contact',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_contact {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling delete_contact");
    }

    # verify the required parameter 'contact_id' is set
    unless (exists $args{'contact_id'}) {
      croak("Missing the required parameter 'contact_id' when calling delete_contact");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/contacts/{contact_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'contact_id'}) {
        my $_base_variable = "{" . "contact_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'contact_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# list_contacts
#
# List contacts
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_contacts' } = {
        summary => 'List contacts',
        params => $params,
        returns => 'ARRAY[SchemasContactResponse]',
        };
}
# @return ARRAY[SchemasContactResponse]
#
sub list_contacts {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling list_contacts");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/contacts';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'customer_id'}) {
        my $_base_variable = "{" . "customer_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'customer_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(token )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SchemasContactResponse]', $response);
    return $_response_object;
}

1;
