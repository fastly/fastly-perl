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
package WebService::Fastly::CustomerApi;

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
# delete_customer
#
# Delete a customer
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
    __PACKAGE__->method_documentation->{ 'delete_customer' } = {
        summary => 'Delete a customer',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub delete_customer {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling delete_customer");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}';

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
# get_customer
#
# Get a customer
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
    __PACKAGE__->method_documentation->{ 'get_customer' } = {
        summary => 'Get a customer',
        params => $params,
        returns => 'CustomerResponse',
        };
}
# @return CustomerResponse
#
sub get_customer {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling get_customer");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}';

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
    my $_response_object = $self->{api_client}->deserialize('CustomerResponse', $response);
    return $_response_object;
}

#
# get_logged_in_customer
#
# Get the logged in customer
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_logged_in_customer' } = {
        summary => 'Get the logged in customer',
        params => $params,
        returns => 'CustomerResponse',
        };
}
# @return CustomerResponse
#
sub get_logged_in_customer {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/current_customer';

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
    my $_response_object = $self->{api_client}->deserialize('CustomerResponse', $response);
    return $_response_object;
}

#
# list_users
#
# List users
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
    __PACKAGE__->method_documentation->{ 'list_users' } = {
        summary => 'List users',
        params => $params,
        returns => 'ARRAY[SchemasUserResponse]',
        };
}
# @return ARRAY[SchemasUserResponse]
#
sub list_users {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling list_users");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}/users';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SchemasUserResponse]', $response);
    return $_response_object;
}

#
# update_customer
#
# Update a customer
#
# @param string $customer_id Alphanumeric string identifying the customer. (required)
# @param string $billing_contact_id The alphanumeric string representing the primary billing contact. (optional)
# @param string $billing_network_type Customer&#39;s current network revenue type. (optional)
# @param string $billing_ref Used for adding purchased orders to customer&#39;s account. (optional)
# @param boolean $can_configure_wordpress Whether this customer can view or edit wordpress. (optional)
# @param boolean $can_reset_passwords Whether this customer can reset passwords. (optional)
# @param boolean $can_upload_vcl Whether this customer can upload VCL. (optional)
# @param boolean $force_2fa Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled. (optional)
# @param boolean $force_sso Specifies whether SSO is forced or not forced on the customer account. (optional)
# @param boolean $has_account_panel Specifies whether the account has access or does not have access to the account panel. (optional)
# @param boolean $has_improved_events Specifies whether the account has access or does not have access to the improved events. (optional)
# @param boolean $has_improved_ssl_config Whether this customer can view or edit the SSL config. (optional)
# @param boolean $has_openstack_logging Specifies whether the account has enabled or not enabled openstack logging. (optional)
# @param boolean $has_pci Specifies whether the account can edit PCI for a service. (optional)
# @param boolean $has_pci_passwords Specifies whether PCI passwords are required for the account. (optional)
# @param string $ip_whitelist The range of IP addresses authorized to access the customer account. (optional)
# @param string $legal_contact_id The alphanumeric string identifying the account&#39;s legal contact. (optional)
# @param string $name The name of the customer, generally the company name. (optional)
# @param string $owner_id The alphanumeric string identifying the account owner. (optional)
# @param string $phone_number The phone number associated with the account. (optional)
# @param string $postal_address The postal address associated with the account. (optional)
# @param string $pricing_plan The pricing plan this customer is under. (optional)
# @param string $pricing_plan_id The alphanumeric string identifying the pricing plan. (optional)
# @param string $security_contact_id The alphanumeric string identifying the account&#39;s security contact. (optional)
# @param string $technical_contact_id The alphanumeric string identifying the account&#39;s technical contact. (optional)
{
    my $params = {
    'customer_id' => {
        data_type => 'string',
        description => 'Alphanumeric string identifying the customer.',
        required => '1',
    },
    'billing_contact_id' => {
        data_type => 'string',
        description => 'The alphanumeric string representing the primary billing contact.',
        required => '0',
    },
    'billing_network_type' => {
        data_type => 'string',
        description => 'Customer&#39;s current network revenue type.',
        required => '0',
    },
    'billing_ref' => {
        data_type => 'string',
        description => 'Used for adding purchased orders to customer&#39;s account.',
        required => '0',
    },
    'can_configure_wordpress' => {
        data_type => 'boolean',
        description => 'Whether this customer can view or edit wordpress.',
        required => '0',
    },
    'can_reset_passwords' => {
        data_type => 'boolean',
        description => 'Whether this customer can reset passwords.',
        required => '0',
    },
    'can_upload_vcl' => {
        data_type => 'boolean',
        description => 'Whether this customer can upload VCL.',
        required => '0',
    },
    'force_2fa' => {
        data_type => 'boolean',
        description => 'Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.',
        required => '0',
    },
    'force_sso' => {
        data_type => 'boolean',
        description => 'Specifies whether SSO is forced or not forced on the customer account.',
        required => '0',
    },
    'has_account_panel' => {
        data_type => 'boolean',
        description => 'Specifies whether the account has access or does not have access to the account panel.',
        required => '0',
    },
    'has_improved_events' => {
        data_type => 'boolean',
        description => 'Specifies whether the account has access or does not have access to the improved events.',
        required => '0',
    },
    'has_improved_ssl_config' => {
        data_type => 'boolean',
        description => 'Whether this customer can view or edit the SSL config.',
        required => '0',
    },
    'has_openstack_logging' => {
        data_type => 'boolean',
        description => 'Specifies whether the account has enabled or not enabled openstack logging.',
        required => '0',
    },
    'has_pci' => {
        data_type => 'boolean',
        description => 'Specifies whether the account can edit PCI for a service.',
        required => '0',
    },
    'has_pci_passwords' => {
        data_type => 'boolean',
        description => 'Specifies whether PCI passwords are required for the account.',
        required => '0',
    },
    'ip_whitelist' => {
        data_type => 'string',
        description => 'The range of IP addresses authorized to access the customer account.',
        required => '0',
    },
    'legal_contact_id' => {
        data_type => 'string',
        description => 'The alphanumeric string identifying the account&#39;s legal contact.',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'The name of the customer, generally the company name.',
        required => '0',
    },
    'owner_id' => {
        data_type => 'string',
        description => 'The alphanumeric string identifying the account owner.',
        required => '0',
    },
    'phone_number' => {
        data_type => 'string',
        description => 'The phone number associated with the account.',
        required => '0',
    },
    'postal_address' => {
        data_type => 'string',
        description => 'The postal address associated with the account.',
        required => '0',
    },
    'pricing_plan' => {
        data_type => 'string',
        description => 'The pricing plan this customer is under.',
        required => '0',
    },
    'pricing_plan_id' => {
        data_type => 'string',
        description => 'The alphanumeric string identifying the pricing plan.',
        required => '0',
    },
    'security_contact_id' => {
        data_type => 'string',
        description => 'The alphanumeric string identifying the account&#39;s security contact.',
        required => '0',
    },
    'technical_contact_id' => {
        data_type => 'string',
        description => 'The alphanumeric string identifying the account&#39;s technical contact.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_customer' } = {
        summary => 'Update a customer',
        params => $params,
        returns => 'CustomerResponse',
        };
}
# @return CustomerResponse
#
sub update_customer {
    my ($self, %args) = @_;

    # verify the required parameter 'customer_id' is set
    unless (exists $args{'customer_id'}) {
      croak("Missing the required parameter 'customer_id' when calling update_customer");
    }

    # parse inputs
    my $_resource_path = '/customer/{customer_id}';

    my $_method = 'PUT';
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
    if ( exists $args{'billing_contact_id'} ) {
                $form_params->{'billing_contact_id'} = $self->{api_client}->to_form_value($args{'billing_contact_id'});
    }

    # form params
    if ( exists $args{'billing_network_type'} ) {
                $form_params->{'billing_network_type'} = $self->{api_client}->to_form_value($args{'billing_network_type'});
    }

    # form params
    if ( exists $args{'billing_ref'} ) {
                $form_params->{'billing_ref'} = $self->{api_client}->to_form_value($args{'billing_ref'});
    }

    # form params
    if ( exists $args{'can_configure_wordpress'} ) {
                $form_params->{'can_configure_wordpress'} = $self->{api_client}->to_form_value($args{'can_configure_wordpress'});
    }

    # form params
    if ( exists $args{'can_reset_passwords'} ) {
                $form_params->{'can_reset_passwords'} = $self->{api_client}->to_form_value($args{'can_reset_passwords'});
    }

    # form params
    if ( exists $args{'can_upload_vcl'} ) {
                $form_params->{'can_upload_vcl'} = $self->{api_client}->to_form_value($args{'can_upload_vcl'});
    }

    # form params
    if ( exists $args{'force_2fa'} ) {
                $form_params->{'force_2fa'} = $self->{api_client}->to_form_value($args{'force_2fa'});
    }

    # form params
    if ( exists $args{'force_sso'} ) {
                $form_params->{'force_sso'} = $self->{api_client}->to_form_value($args{'force_sso'});
    }

    # form params
    if ( exists $args{'has_account_panel'} ) {
                $form_params->{'has_account_panel'} = $self->{api_client}->to_form_value($args{'has_account_panel'});
    }

    # form params
    if ( exists $args{'has_improved_events'} ) {
                $form_params->{'has_improved_events'} = $self->{api_client}->to_form_value($args{'has_improved_events'});
    }

    # form params
    if ( exists $args{'has_improved_ssl_config'} ) {
                $form_params->{'has_improved_ssl_config'} = $self->{api_client}->to_form_value($args{'has_improved_ssl_config'});
    }

    # form params
    if ( exists $args{'has_openstack_logging'} ) {
                $form_params->{'has_openstack_logging'} = $self->{api_client}->to_form_value($args{'has_openstack_logging'});
    }

    # form params
    if ( exists $args{'has_pci'} ) {
                $form_params->{'has_pci'} = $self->{api_client}->to_form_value($args{'has_pci'});
    }

    # form params
    if ( exists $args{'has_pci_passwords'} ) {
                $form_params->{'has_pci_passwords'} = $self->{api_client}->to_form_value($args{'has_pci_passwords'});
    }

    # form params
    if ( exists $args{'ip_whitelist'} ) {
                $form_params->{'ip_whitelist'} = $self->{api_client}->to_form_value($args{'ip_whitelist'});
    }

    # form params
    if ( exists $args{'legal_contact_id'} ) {
                $form_params->{'legal_contact_id'} = $self->{api_client}->to_form_value($args{'legal_contact_id'});
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }

    # form params
    if ( exists $args{'owner_id'} ) {
                $form_params->{'owner_id'} = $self->{api_client}->to_form_value($args{'owner_id'});
    }

    # form params
    if ( exists $args{'phone_number'} ) {
                $form_params->{'phone_number'} = $self->{api_client}->to_form_value($args{'phone_number'});
    }

    # form params
    if ( exists $args{'postal_address'} ) {
                $form_params->{'postal_address'} = $self->{api_client}->to_form_value($args{'postal_address'});
    }

    # form params
    if ( exists $args{'pricing_plan'} ) {
                $form_params->{'pricing_plan'} = $self->{api_client}->to_form_value($args{'pricing_plan'});
    }

    # form params
    if ( exists $args{'pricing_plan_id'} ) {
                $form_params->{'pricing_plan_id'} = $self->{api_client}->to_form_value($args{'pricing_plan_id'});
    }

    # form params
    if ( exists $args{'security_contact_id'} ) {
                $form_params->{'security_contact_id'} = $self->{api_client}->to_form_value($args{'security_contact_id'});
    }

    # form params
    if ( exists $args{'technical_contact_id'} ) {
                $form_params->{'technical_contact_id'} = $self->{api_client}->to_form_value($args{'technical_contact_id'});
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
    my $_response_object = $self->{api_client}->deserialize('CustomerResponse', $response);
    return $_response_object;
}

1;
