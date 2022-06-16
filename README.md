# NAME

Fastly::Role - a Moose role for the Fastly API

Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports.
The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts.
For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/)


    > ⚠️ This client library (`2.0.0-alpha1`)  is an early-access release. Features may change without notice. Use at your own risk.

**We strongly recommend that you do not install alpha and beta releases on live production services.** No official support is provided for such releases. Please try out the library in a test environment, see what breaks without worrying about consequences, and give us [feedback](#issues).

Read about the [Fastly Product Lifecycle](https://docs.fastly.com/products/fastly-product-lifecycle).


# VERSION

Automatically generated:

- API version: 1.0.0
- Package version: 2.0.0-alpha1
- Build package: org.openapitools.codegen.languages.PerlClientCodegen
For more information, please visit [https://www.fastly.com/open-source/](https://www.fastly.com/open-source/)

## A note on Moose

This role is the only component of the library that uses Moose. See
Fastly::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'Fastly::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<Fastly::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a Fastly::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://openapi-generator.tech` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/openapitools/openapi-generator
          $ cd openapi-generator
          $ mvn package
          $ java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
    -i [URL or file path to JSON OpenAPI API spec] \
    -g perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the OpenAPI
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# Installation Prerequisites

Use [cpanm](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm) to install the module dependencies:

```
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm --quiet --no-interactive Class::Accessor Test::Exception Test::More Log::Any LWP::UserAgent URI::Query Module::Runtime DateTime Module::Find Moose::Role JSON
```

# LOAD THE MODULES

To load the API packages:
```perl
use Fastly::AclApi;
use Fastly::AclEntryApi;
use Fastly::ApexRedirectApi;
use Fastly::BackendApi;
use Fastly::BillingApi;
use Fastly::BillingAddressApi;
use Fastly::CacheSettingsApi;
use Fastly::ConditionApi;
use Fastly::ContactApi;
use Fastly::ContentApi;
use Fastly::CustomerApi;
use Fastly::DictionaryApi;
use Fastly::DictionaryInfoApi;
use Fastly::DictionaryItemApi;
use Fastly::DiffApi;
use Fastly::DirectorApi;
use Fastly::DirectorBackendApi;
use Fastly::DocsApi;
use Fastly::DomainApi;
use Fastly::DomainOwnershipsApi;
use Fastly::EventsApi;
use Fastly::GzipApi;
use Fastly::HeaderApi;
use Fastly::HealthcheckApi;
use Fastly::HistoricalApi;
use Fastly::Http3Api;
use Fastly::IamPermissionsApi;
use Fastly::IamRolesApi;
use Fastly::IamServiceGroupsApi;
use Fastly::IamUserGroupsApi;
use Fastly::InvitationsApi;
use Fastly::LoggingAzureblobApi;
use Fastly::LoggingBigqueryApi;
use Fastly::LoggingCloudfilesApi;
use Fastly::LoggingDatadogApi;
use Fastly::LoggingDigitaloceanApi;
use Fastly::LoggingElasticsearchApi;
use Fastly::LoggingFtpApi;
use Fastly::LoggingGcsApi;
use Fastly::LoggingHerokuApi;
use Fastly::LoggingHoneycombApi;
use Fastly::LoggingHttpsApi;
use Fastly::LoggingKafkaApi;
use Fastly::LoggingKinesisApi;
use Fastly::LoggingLogentriesApi;
use Fastly::LoggingLogglyApi;
use Fastly::LoggingLogshuttleApi;
use Fastly::LoggingNewrelicApi;
use Fastly::LoggingOpenstackApi;
use Fastly::LoggingPapertrailApi;
use Fastly::LoggingPubsubApi;
use Fastly::LoggingS3Api;
use Fastly::LoggingScalyrApi;
use Fastly::LoggingSftpApi;
use Fastly::LoggingSplunkApi;
use Fastly::LoggingSumologicApi;
use Fastly::LoggingSyslogApi;
use Fastly::PackageApi;
use Fastly::PoolApi;
use Fastly::PopApi;
use Fastly::PublicIpListApi;
use Fastly::PurgeApi;
use Fastly::RateLimiterApi;
use Fastly::RealtimeApi;
use Fastly::RequestSettingsApi;
use Fastly::ResourceApi;
use Fastly::ResponseObjectApi;
use Fastly::ServerApi;
use Fastly::ServiceApi;
use Fastly::ServiceAuthorizationsApi;
use Fastly::SettingsApi;
use Fastly::SnippetApi;
use Fastly::StarApi;
use Fastly::StatsApi;
use Fastly::TlsActivationsApi;
use Fastly::TlsBulkCertificatesApi;
use Fastly::TlsCertificatesApi;
use Fastly::TlsConfigurationsApi;
use Fastly::TlsDomainsApi;
use Fastly::TlsPrivateKeysApi;
use Fastly::TlsSubscriptionsApi;
use Fastly::TokensApi;
use Fastly::UserApi;
use Fastly::VclApi;
use Fastly::VclDiffApi;
use Fastly::VersionApi;
use Fastly::WafActiveRulesApi;
use Fastly::WafExclusionsApi;
use Fastly::WafFirewallVersionsApi;
use Fastly::WafFirewallsApi;
use Fastly::WafRuleRevisionsApi;
use Fastly::WafRulesApi;
use Fastly::WafTagsApi;

```

To load the models:
```perl
use Fastly::Object::Acl;
use Fastly::Object::AclEntry;
use Fastly::Object::AclEntryResponse;
use Fastly::Object::AclEntryResponseAllOf;
use Fastly::Object::AclResponse;
use Fastly::Object::AclResponseAllOf;
use Fastly::Object::ApexRedirect;
use Fastly::Object::ApexRedirectAllOf;
use Fastly::Object::Backend;
use Fastly::Object::BackendResponse;
use Fastly::Object::BackendResponseAllOf;
use Fastly::Object::Billing;
use Fastly::Object::BillingAddressAttributes;
use Fastly::Object::BillingAddressRequest;
use Fastly::Object::BillingAddressRequestData;
use Fastly::Object::BillingAddressResponse;
use Fastly::Object::BillingAddressResponseData;
use Fastly::Object::BillingEstimateResponse;
use Fastly::Object::BillingEstimateResponseAllOf;
use Fastly::Object::BillingEstimateResponseAllOfLine;
use Fastly::Object::BillingEstimateResponseAllOfLines;
use Fastly::Object::BillingRegionsValue;
use Fastly::Object::BillingRegionsValueValue;
use Fastly::Object::BillingRegionsValueValueTiersInner;
use Fastly::Object::BillingResponse;
use Fastly::Object::BillingResponseAllOf;
use Fastly::Object::BillingResponseLineItem;
use Fastly::Object::BillingResponseLineItemAllOf;
use Fastly::Object::BillingStatus;
use Fastly::Object::BillingTotal;
use Fastly::Object::BillingTotalExtrasInner;
use Fastly::Object::BulkUpdateAclEntriesRequest;
use Fastly::Object::BulkUpdateAclEntry;
use Fastly::Object::BulkUpdateAclEntryAllOf;
use Fastly::Object::BulkUpdateDictionaryItem;
use Fastly::Object::BulkUpdateDictionaryItemAllOf;
use Fastly::Object::BulkUpdateDictionaryListRequest;
use Fastly::Object::BulkWafActiveRules;
use Fastly::Object::CacheSetting;
use Fastly::Object::CacheSettingResponse;
use Fastly::Object::Condition;
use Fastly::Object::ConditionResponse;
use Fastly::Object::Contact;
use Fastly::Object::ContactResponse;
use Fastly::Object::ContactResponseAllOf;
use Fastly::Object::Content;
use Fastly::Object::Customer;
use Fastly::Object::CustomerResponse;
use Fastly::Object::CustomerResponseAllOf;
use Fastly::Object::DeleteAcl200Response;
use Fastly::Object::Dictionary;
use Fastly::Object::DictionaryInfoResponse;
use Fastly::Object::DictionaryItem;
use Fastly::Object::DictionaryItemResponse;
use Fastly::Object::DictionaryItemResponseAllOf;
use Fastly::Object::DictionaryResponse;
use Fastly::Object::DictionaryResponseAllOf;
use Fastly::Object::DiffResponse;
use Fastly::Object::Director;
use Fastly::Object::DirectorBackend;
use Fastly::Object::DirectorBackendAllOf;
use Fastly::Object::DirectorResponse;
use Fastly::Object::Domain;
use Fastly::Object::DomainCheckItem;
use Fastly::Object::DomainResponse;
use Fastly::Object::Event;
use Fastly::Object::EventAttributes;
use Fastly::Object::EventResponse;
use Fastly::Object::EventsResponse;
use Fastly::Object::EventsResponseAllOf;
use Fastly::Object::GenericTokenError;
use Fastly::Object::Gzip;
use Fastly::Object::GzipResponse;
use Fastly::Object::Header;
use Fastly::Object::HeaderResponse;
use Fastly::Object::Healthcheck;
use Fastly::Object::HealthcheckResponse;
use Fastly::Object::Historical;
use Fastly::Object::HistoricalAggregateResponse;
use Fastly::Object::HistoricalAggregateResponseAllOf;
use Fastly::Object::HistoricalFieldAggregateResponse;
use Fastly::Object::HistoricalFieldAggregateResponseAllOf;
use Fastly::Object::HistoricalFieldResponse;
use Fastly::Object::HistoricalFieldResponseAllOf;
use Fastly::Object::HistoricalFieldResultsInner;
use Fastly::Object::HistoricalMeta;
use Fastly::Object::HistoricalRegionsResponse;
use Fastly::Object::HistoricalRegionsResponseAllOf;
use Fastly::Object::HistoricalResponse;
use Fastly::Object::HistoricalResponseAllOf;
use Fastly::Object::HistoricalServicesValue;
use Fastly::Object::HistoricalUsageAggregateResponse;
use Fastly::Object::HistoricalUsageMonthResponse;
use Fastly::Object::HistoricalUsageMonthResponseAllOf;
use Fastly::Object::HistoricalUsageMonthResponseAllOfData;
use Fastly::Object::HistoricalUsageResults;
use Fastly::Object::HistoricalUsageServiceResponse;
use Fastly::Object::HistoricalUsageServiceResponseAllOf;
use Fastly::Object::Http3;
use Fastly::Object::Http3AllOf;
use Fastly::Object::IamPermission;
use Fastly::Object::IamRole;
use Fastly::Object::IamRoleAllOf;
use Fastly::Object::IamServiceGroup;
use Fastly::Object::IamServiceGroupAllOf;
use Fastly::Object::IamUserGroup;
use Fastly::Object::IamUserGroupAllOf;
use Fastly::Object::IncludedWithWafActiveRuleItem;
use Fastly::Object::IncludedWithWafExclusionItem;
use Fastly::Object::IncludedWithWafFirewallVersionItem;
use Fastly::Object::IncludedWithWafRuleItem;
use Fastly::Object::Invitation;
use Fastly::Object::InvitationData;
use Fastly::Object::InvitationDataAttributes;
use Fastly::Object::InvitationResponse;
use Fastly::Object::InvitationResponseAllOf;
use Fastly::Object::InvitationResponseData;
use Fastly::Object::InvitationResponseDataAllOf;
use Fastly::Object::InvitationsResponse;
use Fastly::Object::InvitationsResponseAllOf;
use Fastly::Object::ListDomainOwnerships200Response;
use Fastly::Object::ListServiceStars200Response;
use Fastly::Object::ListServiceStars200ResponseAllOf;
use Fastly::Object::ListServiceStars200ResponseAllOfDataInner;
use Fastly::Object::ListServiceStars200ResponseAllOfDataInnerAllOf;
use Fastly::Object::LoggingAddressAndPort;
use Fastly::Object::LoggingAzureblob;
use Fastly::Object::LoggingAzureblobAllOf;
use Fastly::Object::LoggingAzureblobResponse;
use Fastly::Object::LoggingBigquery;
use Fastly::Object::LoggingBigqueryAllOf;
use Fastly::Object::LoggingBigqueryResponse;
use Fastly::Object::LoggingCloudfiles;
use Fastly::Object::LoggingCloudfilesAllOf;
use Fastly::Object::LoggingCloudfilesResponse;
use Fastly::Object::LoggingCommon;
use Fastly::Object::LoggingDatadog;
use Fastly::Object::LoggingDatadogAllOf;
use Fastly::Object::LoggingDatadogResponse;
use Fastly::Object::LoggingDigitalocean;
use Fastly::Object::LoggingDigitaloceanAllOf;
use Fastly::Object::LoggingDigitaloceanResponse;
use Fastly::Object::LoggingElasticsearch;
use Fastly::Object::LoggingElasticsearchAllOf;
use Fastly::Object::LoggingElasticsearchResponse;
use Fastly::Object::LoggingFormatVersion;
use Fastly::Object::LoggingFtp;
use Fastly::Object::LoggingFtpAllOf;
use Fastly::Object::LoggingFtpResponse;
use Fastly::Object::LoggingGcs;
use Fastly::Object::LoggingGcsAllOf;
use Fastly::Object::LoggingGcsCommon;
use Fastly::Object::LoggingGcsResponse;
use Fastly::Object::LoggingGenericCommon;
use Fastly::Object::LoggingGooglePubsub;
use Fastly::Object::LoggingGooglePubsubAllOf;
use Fastly::Object::LoggingGooglePubsubResponse;
use Fastly::Object::LoggingHeroku;
use Fastly::Object::LoggingHerokuAllOf;
use Fastly::Object::LoggingHerokuResponse;
use Fastly::Object::LoggingHoneycomb;
use Fastly::Object::LoggingHoneycombAllOf;
use Fastly::Object::LoggingHoneycombResponse;
use Fastly::Object::LoggingHttps;
use Fastly::Object::LoggingHttpsAllOf;
use Fastly::Object::LoggingHttpsResponse;
use Fastly::Object::LoggingKafka;
use Fastly::Object::LoggingKafkaAllOf;
use Fastly::Object::LoggingKafkaResponse;
use Fastly::Object::LoggingKinesis;
use Fastly::Object::LoggingKinesisResponse;
use Fastly::Object::LoggingLogentries;
use Fastly::Object::LoggingLogentriesAllOf;
use Fastly::Object::LoggingLogentriesResponse;
use Fastly::Object::LoggingLoggly;
use Fastly::Object::LoggingLogglyAllOf;
use Fastly::Object::LoggingLogglyResponse;
use Fastly::Object::LoggingLogshuttle;
use Fastly::Object::LoggingLogshuttleAllOf;
use Fastly::Object::LoggingLogshuttleResponse;
use Fastly::Object::LoggingMessageType;
use Fastly::Object::LoggingNewrelic;
use Fastly::Object::LoggingNewrelicAllOf;
use Fastly::Object::LoggingNewrelicResponse;
use Fastly::Object::LoggingOpenstack;
use Fastly::Object::LoggingOpenstackAllOf;
use Fastly::Object::LoggingOpenstackResponse;
use Fastly::Object::LoggingPapertrail;
use Fastly::Object::LoggingPapertrailResponse;
use Fastly::Object::LoggingPlacement;
use Fastly::Object::LoggingRequestCapsCommon;
use Fastly::Object::LoggingS3;
use Fastly::Object::LoggingS3AllOf;
use Fastly::Object::LoggingS3Response;
use Fastly::Object::LoggingScalyr;
use Fastly::Object::LoggingScalyrAllOf;
use Fastly::Object::LoggingScalyrResponse;
use Fastly::Object::LoggingSftp;
use Fastly::Object::LoggingSftpAllOf;
use Fastly::Object::LoggingSftpResponse;
use Fastly::Object::LoggingSplunk;
use Fastly::Object::LoggingSplunkAllOf;
use Fastly::Object::LoggingSplunkResponse;
use Fastly::Object::LoggingSumologic;
use Fastly::Object::LoggingSumologicAllOf;
use Fastly::Object::LoggingSumologicResponse;
use Fastly::Object::LoggingSyslog;
use Fastly::Object::LoggingSyslogAllOf;
use Fastly::Object::LoggingSyslogResponse;
use Fastly::Object::LoggingTlsCommon;
use Fastly::Object::LoggingUseTls;
use Fastly::Object::ModelPackage;
use Fastly::Object::PackageMetadata;
use Fastly::Object::PackageResponse;
use Fastly::Object::PackageResponseAllOf;
use Fastly::Object::Pagination;
use Fastly::Object::PaginationLinks;
use Fastly::Object::PaginationMeta;
use Fastly::Object::Permission;
use Fastly::Object::Pool;
use Fastly::Object::PoolAllOf;
use Fastly::Object::PoolResponse;
use Fastly::Object::PoolResponseAllOf;
use Fastly::Object::Pop;
use Fastly::Object::PopCoordinates;
use Fastly::Object::PublicIpList;
use Fastly::Object::PurgeKeys;
use Fastly::Object::PurgeResponse;
use Fastly::Object::RateLimiter;
use Fastly::Object::RateLimiterResponse;
use Fastly::Object::RateLimiterResponse1;
use Fastly::Object::RateLimiterResponseAllOf;
use Fastly::Object::Realtime;
use Fastly::Object::RealtimeEntry;
use Fastly::Object::RealtimeEntryAggregated;
use Fastly::Object::RealtimeMeasurements;
use Fastly::Object::RelationshipCommonName;
use Fastly::Object::RelationshipCustomer;
use Fastly::Object::RelationshipCustomerCustomer;
use Fastly::Object::RelationshipMemberCustomer;
use Fastly::Object::RelationshipMemberService;
use Fastly::Object::RelationshipMemberServiceInvitation;
use Fastly::Object::RelationshipMemberTlsActivation;
use Fastly::Object::RelationshipMemberTlsBulkCertificate;
use Fastly::Object::RelationshipMemberTlsCertificate;
use Fastly::Object::RelationshipMemberTlsConfiguration;
use Fastly::Object::RelationshipMemberTlsDnsRecord;
use Fastly::Object::RelationshipMemberTlsDomain;
use Fastly::Object::RelationshipMemberTlsPrivateKey;
use Fastly::Object::RelationshipMemberTlsSubscription;
use Fastly::Object::RelationshipMemberWafActiveRule;
use Fastly::Object::RelationshipMemberWafFirewall;
use Fastly::Object::RelationshipMemberWafFirewallVersion;
use Fastly::Object::RelationshipMemberWafRule;
use Fastly::Object::RelationshipMemberWafRuleRevision;
use Fastly::Object::RelationshipMemberWafTag;
use Fastly::Object::RelationshipService;
use Fastly::Object::RelationshipServiceInvitations;
use Fastly::Object::RelationshipServiceInvitationsCreate;
use Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations;
use Fastly::Object::RelationshipServiceInvitationsServiceInvitations;
use Fastly::Object::RelationshipServiceService;
use Fastly::Object::RelationshipServices;
use Fastly::Object::RelationshipTlsActivation;
use Fastly::Object::RelationshipTlsActivationTlsActivation;
use Fastly::Object::RelationshipTlsActivations;
use Fastly::Object::RelationshipTlsBulkCertificate;
use Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate;
use Fastly::Object::RelationshipTlsBulkCertificates;
use Fastly::Object::RelationshipTlsCertificate;
use Fastly::Object::RelationshipTlsCertificateTlsCertificate;
use Fastly::Object::RelationshipTlsCertificates;
use Fastly::Object::RelationshipTlsConfiguration;
use Fastly::Object::RelationshipTlsConfigurationTlsConfiguration;
use Fastly::Object::RelationshipTlsConfigurations;
use Fastly::Object::RelationshipTlsDnsRecord;
use Fastly::Object::RelationshipTlsDnsRecordDnsRecord;
use Fastly::Object::RelationshipTlsDnsRecords;
use Fastly::Object::RelationshipTlsDomain;
use Fastly::Object::RelationshipTlsDomainTlsDomain;
use Fastly::Object::RelationshipTlsDomains;
use Fastly::Object::RelationshipTlsPrivateKey;
use Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey;
use Fastly::Object::RelationshipTlsPrivateKeys;
use Fastly::Object::RelationshipTlsSubscription;
use Fastly::Object::RelationshipTlsSubscriptionTlsSubscription;
use Fastly::Object::RelationshipTlsSubscriptions;
use Fastly::Object::RelationshipUser;
use Fastly::Object::RelationshipUserUser;
use Fastly::Object::RelationshipUserUserData;
use Fastly::Object::RelationshipWafActiveRules;
use Fastly::Object::RelationshipWafActiveRulesWafActiveRules;
use Fastly::Object::RelationshipWafFirewall;
use Fastly::Object::RelationshipWafFirewallVersion;
use Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion;
use Fastly::Object::RelationshipWafFirewallVersions;
use Fastly::Object::RelationshipWafFirewallWafFirewall;
use Fastly::Object::RelationshipWafRule;
use Fastly::Object::RelationshipWafRuleRevision;
use Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions;
use Fastly::Object::RelationshipWafRuleRevisions;
use Fastly::Object::RelationshipWafRuleWafRule;
use Fastly::Object::RelationshipWafRules;
use Fastly::Object::RelationshipWafTags;
use Fastly::Object::RelationshipWafTagsWafTags;
use Fastly::Object::RelationshipsForInvitation;
use Fastly::Object::RelationshipsForStar;
use Fastly::Object::RelationshipsForTlsActivation;
use Fastly::Object::RelationshipsForTlsBulkCertificate;
use Fastly::Object::RelationshipsForTlsConfiguration;
use Fastly::Object::RelationshipsForTlsDomain;
use Fastly::Object::RelationshipsForTlsPrivateKey;
use Fastly::Object::RelationshipsForTlsSubscription;
use Fastly::Object::RelationshipsForWafActiveRule;
use Fastly::Object::RelationshipsForWafExclusion;
use Fastly::Object::RelationshipsForWafFirewallVersion;
use Fastly::Object::RelationshipsForWafRule;
use Fastly::Object::RequestSettings;
use Fastly::Object::RequestSettingsResponse;
use Fastly::Object::Resource;
use Fastly::Object::ResourceCreate;
use Fastly::Object::ResourceCreateAllOf;
use Fastly::Object::ResourceResponse;
use Fastly::Object::ResourceResponseAllOf;
use Fastly::Object::ResponseObject;
use Fastly::Object::ResponseObjectResponse;
use Fastly::Object::Results;
use Fastly::Object::RoleUser;
use Fastly::Object::SchemasContactResponse;
use Fastly::Object::SchemasSnippetResponse;
use Fastly::Object::SchemasUserResponse;
use Fastly::Object::SchemasVclResponse;
use Fastly::Object::SchemasVersion;
use Fastly::Object::SchemasVersionResponse;
use Fastly::Object::SchemasWafFirewallVersion;
use Fastly::Object::SchemasWafFirewallVersionData;
use Fastly::Object::Server;
use Fastly::Object::ServerResponse;
use Fastly::Object::ServerResponseAllOf;
use Fastly::Object::Service;
use Fastly::Object::ServiceAuthorization;
use Fastly::Object::ServiceAuthorizationData;
use Fastly::Object::ServiceAuthorizationDataAttributes;
use Fastly::Object::ServiceAuthorizationDataRelationships;
use Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf;
use Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf1;
use Fastly::Object::ServiceAuthorizationResponse;
use Fastly::Object::ServiceAuthorizationResponseData;
use Fastly::Object::ServiceAuthorizationResponseDataAllOf;
use Fastly::Object::ServiceAuthorizationsResponse;
use Fastly::Object::ServiceAuthorizationsResponseAllOf;
use Fastly::Object::ServiceCreate;
use Fastly::Object::ServiceCreateAllOf;
use Fastly::Object::ServiceDetail;
use Fastly::Object::ServiceDetailAllOf;
use Fastly::Object::ServiceIdAndVersion;
use Fastly::Object::ServiceInvitation;
use Fastly::Object::ServiceInvitationData;
use Fastly::Object::ServiceInvitationDataAttributes;
use Fastly::Object::ServiceInvitationDataRelationships;
use Fastly::Object::ServiceInvitationResponse;
use Fastly::Object::ServiceInvitationResponseAllOf;
use Fastly::Object::ServiceInvitationResponseAllOfData;
use Fastly::Object::ServiceListResponse;
use Fastly::Object::ServiceListResponseAllOf;
use Fastly::Object::ServiceResponse;
use Fastly::Object::ServiceResponseAllOf;
use Fastly::Object::ServiceVersionDetail;
use Fastly::Object::ServiceVersionDetailOrNull;
use Fastly::Object::Settings;
use Fastly::Object::SettingsResponse;
use Fastly::Object::Snippet;
use Fastly::Object::SnippetResponse;
use Fastly::Object::SnippetResponseAllOf;
use Fastly::Object::Star;
use Fastly::Object::StarData;
use Fastly::Object::StarResponse;
use Fastly::Object::StarResponseAllOf;
use Fastly::Object::Stats;
use Fastly::Object::Timestamps;
use Fastly::Object::TimestampsNoDelete;
use Fastly::Object::TlsActivation;
use Fastly::Object::TlsActivationData;
use Fastly::Object::TlsActivationResponse;
use Fastly::Object::TlsActivationResponseData;
use Fastly::Object::TlsActivationResponseDataAllOf;
use Fastly::Object::TlsActivationsResponse;
use Fastly::Object::TlsActivationsResponseAllOf;
use Fastly::Object::TlsBulkCertificate;
use Fastly::Object::TlsBulkCertificateData;
use Fastly::Object::TlsBulkCertificateDataAttributes;
use Fastly::Object::TlsBulkCertificateResponse;
use Fastly::Object::TlsBulkCertificateResponseAttributes;
use Fastly::Object::TlsBulkCertificateResponseAttributesAllOf;
use Fastly::Object::TlsBulkCertificateResponseData;
use Fastly::Object::TlsBulkCertificateResponseDataAllOf;
use Fastly::Object::TlsBulkCertificatesResponse;
use Fastly::Object::TlsBulkCertificatesResponseAllOf;
use Fastly::Object::TlsCertificate;
use Fastly::Object::TlsCertificateData;
use Fastly::Object::TlsCertificateDataAttributes;
use Fastly::Object::TlsCertificateResponse;
use Fastly::Object::TlsCertificateResponseAttributes;
use Fastly::Object::TlsCertificateResponseAttributesAllOf;
use Fastly::Object::TlsCertificateResponseData;
use Fastly::Object::TlsCertificateResponseDataAllOf;
use Fastly::Object::TlsCertificatesResponse;
use Fastly::Object::TlsCertificatesResponseAllOf;
use Fastly::Object::TlsCommon;
use Fastly::Object::TlsConfiguration;
use Fastly::Object::TlsConfigurationData;
use Fastly::Object::TlsConfigurationDataAttributes;
use Fastly::Object::TlsConfigurationResponse;
use Fastly::Object::TlsConfigurationResponseAttributes;
use Fastly::Object::TlsConfigurationResponseAttributesAllOf;
use Fastly::Object::TlsConfigurationResponseData;
use Fastly::Object::TlsConfigurationResponseDataAllOf;
use Fastly::Object::TlsConfigurationsResponse;
use Fastly::Object::TlsConfigurationsResponseAllOf;
use Fastly::Object::TlsDnsRecord;
use Fastly::Object::TlsDomainData;
use Fastly::Object::TlsDomainsResponse;
use Fastly::Object::TlsDomainsResponseAllOf;
use Fastly::Object::TlsPrivateKey;
use Fastly::Object::TlsPrivateKeyData;
use Fastly::Object::TlsPrivateKeyDataAttributes;
use Fastly::Object::TlsPrivateKeyResponse;
use Fastly::Object::TlsPrivateKeyResponseAttributes;
use Fastly::Object::TlsPrivateKeyResponseAttributesAllOf;
use Fastly::Object::TlsPrivateKeyResponseData;
use Fastly::Object::TlsPrivateKeysResponse;
use Fastly::Object::TlsPrivateKeysResponseAllOf;
use Fastly::Object::TlsSubscription;
use Fastly::Object::TlsSubscriptionData;
use Fastly::Object::TlsSubscriptionDataAttributes;
use Fastly::Object::TlsSubscriptionResponse;
use Fastly::Object::TlsSubscriptionResponseAttributes;
use Fastly::Object::TlsSubscriptionResponseAttributesAllOf;
use Fastly::Object::TlsSubscriptionResponseData;
use Fastly::Object::TlsSubscriptionResponseDataAllOf;
use Fastly::Object::TlsSubscriptionsResponse;
use Fastly::Object::TlsSubscriptionsResponseAllOf;
use Fastly::Object::Token;
use Fastly::Object::TokenCreatedResponse;
use Fastly::Object::TokenCreatedResponseAllOf;
use Fastly::Object::TokenResponse;
use Fastly::Object::TokenResponseAllOf;
use Fastly::Object::TypeBillingAddress;
use Fastly::Object::TypeContact;
use Fastly::Object::TypeCustomer;
use Fastly::Object::TypeEvent;
use Fastly::Object::TypeInvitation;
use Fastly::Object::TypeResource;
use Fastly::Object::TypeService;
use Fastly::Object::TypeServiceAuthorization;
use Fastly::Object::TypeServiceInvitation;
use Fastly::Object::TypeStar;
use Fastly::Object::TypeTlsActivation;
use Fastly::Object::TypeTlsBulkCertificate;
use Fastly::Object::TypeTlsCertificate;
use Fastly::Object::TypeTlsConfiguration;
use Fastly::Object::TypeTlsDnsRecord;
use Fastly::Object::TypeTlsDomain;
use Fastly::Object::TypeTlsPrivateKey;
use Fastly::Object::TypeTlsSubscription;
use Fastly::Object::TypeUser;
use Fastly::Object::TypeWafActiveRule;
use Fastly::Object::TypeWafExclusion;
use Fastly::Object::TypeWafFirewall;
use Fastly::Object::TypeWafFirewallVersion;
use Fastly::Object::TypeWafRule;
use Fastly::Object::TypeWafRuleRevision;
use Fastly::Object::TypeWafTag;
use Fastly::Object::UpdateBillingAddressRequest;
use Fastly::Object::UpdateBillingAddressRequestData;
use Fastly::Object::User;
use Fastly::Object::UserResponse;
use Fastly::Object::UserResponseAllOf;
use Fastly::Object::Vcl;
use Fastly::Object::VclDiff;
use Fastly::Object::VclResponse;
use Fastly::Object::Version;
use Fastly::Object::VersionCreateResponse;
use Fastly::Object::VersionDetail;
use Fastly::Object::VersionDetailSettings;
use Fastly::Object::VersionResponse;
use Fastly::Object::VersionResponseAllOf;
use Fastly::Object::WafActiveRule;
use Fastly::Object::WafActiveRuleCreationResponse;
use Fastly::Object::WafActiveRuleData;
use Fastly::Object::WafActiveRuleDataAttributes;
use Fastly::Object::WafActiveRuleResponse;
use Fastly::Object::WafActiveRuleResponseData;
use Fastly::Object::WafActiveRuleResponseDataAllOf;
use Fastly::Object::WafActiveRuleResponseDataAttributes;
use Fastly::Object::WafActiveRuleResponseDataAttributesAllOf;
use Fastly::Object::WafActiveRuleResponseDataRelationships;
use Fastly::Object::WafActiveRulesResponse;
use Fastly::Object::WafActiveRulesResponseAllOf;
use Fastly::Object::WafExclusion;
use Fastly::Object::WafExclusionData;
use Fastly::Object::WafExclusionDataAttributes;
use Fastly::Object::WafExclusionResponse;
use Fastly::Object::WafExclusionResponseData;
use Fastly::Object::WafExclusionResponseDataAllOf;
use Fastly::Object::WafExclusionResponseDataAttributes;
use Fastly::Object::WafExclusionResponseDataAttributesAllOf;
use Fastly::Object::WafExclusionResponseDataRelationships;
use Fastly::Object::WafExclusionsResponse;
use Fastly::Object::WafExclusionsResponseAllOf;
use Fastly::Object::WafFirewall;
use Fastly::Object::WafFirewallData;
use Fastly::Object::WafFirewallDataAttributes;
use Fastly::Object::WafFirewallResponse;
use Fastly::Object::WafFirewallResponseData;
use Fastly::Object::WafFirewallResponseDataAllOf;
use Fastly::Object::WafFirewallResponseDataAttributes;
use Fastly::Object::WafFirewallResponseDataAttributesAllOf;
use Fastly::Object::WafFirewallVersion;
use Fastly::Object::WafFirewallVersionData;
use Fastly::Object::WafFirewallVersionDataAttributes;
use Fastly::Object::WafFirewallVersionResponse;
use Fastly::Object::WafFirewallVersionResponseData;
use Fastly::Object::WafFirewallVersionResponseDataAllOf;
use Fastly::Object::WafFirewallVersionResponseDataAttributes;
use Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf;
use Fastly::Object::WafFirewallVersionsResponse;
use Fastly::Object::WafFirewallVersionsResponseAllOf;
use Fastly::Object::WafFirewallsResponse;
use Fastly::Object::WafFirewallsResponseAllOf;
use Fastly::Object::WafRule;
use Fastly::Object::WafRuleAttributes;
use Fastly::Object::WafRuleResponse;
use Fastly::Object::WafRuleResponseData;
use Fastly::Object::WafRuleResponseDataAllOf;
use Fastly::Object::WafRuleRevision;
use Fastly::Object::WafRuleRevisionAttributes;
use Fastly::Object::WafRuleRevisionOrLatest;
use Fastly::Object::WafRuleRevisionResponse;
use Fastly::Object::WafRuleRevisionResponseData;
use Fastly::Object::WafRuleRevisionResponseDataAllOf;
use Fastly::Object::WafRuleRevisionsResponse;
use Fastly::Object::WafRuleRevisionsResponseAllOf;
use Fastly::Object::WafRulesResponse;
use Fastly::Object::WafRulesResponseAllOf;
use Fastly::Object::WafTag;
use Fastly::Object::WafTagAttributes;
use Fastly::Object::WafTagsResponse;
use Fastly::Object::WafTagsResponseAllOf;
use Fastly::Object::WafTagsResponseDataItem;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use Fastly::AclApi;
use Fastly::AclEntryApi;
use Fastly::ApexRedirectApi;
use Fastly::BackendApi;
use Fastly::BillingApi;
use Fastly::BillingAddressApi;
use Fastly::CacheSettingsApi;
use Fastly::ConditionApi;
use Fastly::ContactApi;
use Fastly::ContentApi;
use Fastly::CustomerApi;
use Fastly::DictionaryApi;
use Fastly::DictionaryInfoApi;
use Fastly::DictionaryItemApi;
use Fastly::DiffApi;
use Fastly::DirectorApi;
use Fastly::DirectorBackendApi;
use Fastly::DocsApi;
use Fastly::DomainApi;
use Fastly::DomainOwnershipsApi;
use Fastly::EventsApi;
use Fastly::GzipApi;
use Fastly::HeaderApi;
use Fastly::HealthcheckApi;
use Fastly::HistoricalApi;
use Fastly::Http3Api;
use Fastly::IamPermissionsApi;
use Fastly::IamRolesApi;
use Fastly::IamServiceGroupsApi;
use Fastly::IamUserGroupsApi;
use Fastly::InvitationsApi;
use Fastly::LoggingAzureblobApi;
use Fastly::LoggingBigqueryApi;
use Fastly::LoggingCloudfilesApi;
use Fastly::LoggingDatadogApi;
use Fastly::LoggingDigitaloceanApi;
use Fastly::LoggingElasticsearchApi;
use Fastly::LoggingFtpApi;
use Fastly::LoggingGcsApi;
use Fastly::LoggingHerokuApi;
use Fastly::LoggingHoneycombApi;
use Fastly::LoggingHttpsApi;
use Fastly::LoggingKafkaApi;
use Fastly::LoggingKinesisApi;
use Fastly::LoggingLogentriesApi;
use Fastly::LoggingLogglyApi;
use Fastly::LoggingLogshuttleApi;
use Fastly::LoggingNewrelicApi;
use Fastly::LoggingOpenstackApi;
use Fastly::LoggingPapertrailApi;
use Fastly::LoggingPubsubApi;
use Fastly::LoggingS3Api;
use Fastly::LoggingScalyrApi;
use Fastly::LoggingSftpApi;
use Fastly::LoggingSplunkApi;
use Fastly::LoggingSumologicApi;
use Fastly::LoggingSyslogApi;
use Fastly::PackageApi;
use Fastly::PoolApi;
use Fastly::PopApi;
use Fastly::PublicIpListApi;
use Fastly::PurgeApi;
use Fastly::RateLimiterApi;
use Fastly::RealtimeApi;
use Fastly::RequestSettingsApi;
use Fastly::ResourceApi;
use Fastly::ResponseObjectApi;
use Fastly::ServerApi;
use Fastly::ServiceApi;
use Fastly::ServiceAuthorizationsApi;
use Fastly::SettingsApi;
use Fastly::SnippetApi;
use Fastly::StarApi;
use Fastly::StatsApi;
use Fastly::TlsActivationsApi;
use Fastly::TlsBulkCertificatesApi;
use Fastly::TlsCertificatesApi;
use Fastly::TlsConfigurationsApi;
use Fastly::TlsDomainsApi;
use Fastly::TlsPrivateKeysApi;
use Fastly::TlsSubscriptionsApi;
use Fastly::TokensApi;
use Fastly::UserApi;
use Fastly::VclApi;
use Fastly::VclDiffApi;
use Fastly::VersionApi;
use Fastly::WafActiveRulesApi;
use Fastly::WafExclusionsApi;
use Fastly::WafFirewallVersionsApi;
use Fastly::WafFirewallsApi;
use Fastly::WafRuleRevisionsApi;
use Fastly::WafRulesApi;
use Fastly::WafTagsApi;

# load the models
use Fastly::Object::Acl;
use Fastly::Object::AclEntry;
use Fastly::Object::AclEntryResponse;
use Fastly::Object::AclEntryResponseAllOf;
use Fastly::Object::AclResponse;
use Fastly::Object::AclResponseAllOf;
use Fastly::Object::ApexRedirect;
use Fastly::Object::ApexRedirectAllOf;
use Fastly::Object::Backend;
use Fastly::Object::BackendResponse;
use Fastly::Object::BackendResponseAllOf;
use Fastly::Object::Billing;
use Fastly::Object::BillingAddressAttributes;
use Fastly::Object::BillingAddressRequest;
use Fastly::Object::BillingAddressRequestData;
use Fastly::Object::BillingAddressResponse;
use Fastly::Object::BillingAddressResponseData;
use Fastly::Object::BillingEstimateResponse;
use Fastly::Object::BillingEstimateResponseAllOf;
use Fastly::Object::BillingEstimateResponseAllOfLine;
use Fastly::Object::BillingEstimateResponseAllOfLines;
use Fastly::Object::BillingRegionsValue;
use Fastly::Object::BillingRegionsValueValue;
use Fastly::Object::BillingRegionsValueValueTiersInner;
use Fastly::Object::BillingResponse;
use Fastly::Object::BillingResponseAllOf;
use Fastly::Object::BillingResponseLineItem;
use Fastly::Object::BillingResponseLineItemAllOf;
use Fastly::Object::BillingStatus;
use Fastly::Object::BillingTotal;
use Fastly::Object::BillingTotalExtrasInner;
use Fastly::Object::BulkUpdateAclEntriesRequest;
use Fastly::Object::BulkUpdateAclEntry;
use Fastly::Object::BulkUpdateAclEntryAllOf;
use Fastly::Object::BulkUpdateDictionaryItem;
use Fastly::Object::BulkUpdateDictionaryItemAllOf;
use Fastly::Object::BulkUpdateDictionaryListRequest;
use Fastly::Object::BulkWafActiveRules;
use Fastly::Object::CacheSetting;
use Fastly::Object::CacheSettingResponse;
use Fastly::Object::Condition;
use Fastly::Object::ConditionResponse;
use Fastly::Object::Contact;
use Fastly::Object::ContactResponse;
use Fastly::Object::ContactResponseAllOf;
use Fastly::Object::Content;
use Fastly::Object::Customer;
use Fastly::Object::CustomerResponse;
use Fastly::Object::CustomerResponseAllOf;
use Fastly::Object::DeleteAcl200Response;
use Fastly::Object::Dictionary;
use Fastly::Object::DictionaryInfoResponse;
use Fastly::Object::DictionaryItem;
use Fastly::Object::DictionaryItemResponse;
use Fastly::Object::DictionaryItemResponseAllOf;
use Fastly::Object::DictionaryResponse;
use Fastly::Object::DictionaryResponseAllOf;
use Fastly::Object::DiffResponse;
use Fastly::Object::Director;
use Fastly::Object::DirectorBackend;
use Fastly::Object::DirectorBackendAllOf;
use Fastly::Object::DirectorResponse;
use Fastly::Object::Domain;
use Fastly::Object::DomainCheckItem;
use Fastly::Object::DomainResponse;
use Fastly::Object::Event;
use Fastly::Object::EventAttributes;
use Fastly::Object::EventResponse;
use Fastly::Object::EventsResponse;
use Fastly::Object::EventsResponseAllOf;
use Fastly::Object::GenericTokenError;
use Fastly::Object::Gzip;
use Fastly::Object::GzipResponse;
use Fastly::Object::Header;
use Fastly::Object::HeaderResponse;
use Fastly::Object::Healthcheck;
use Fastly::Object::HealthcheckResponse;
use Fastly::Object::Historical;
use Fastly::Object::HistoricalAggregateResponse;
use Fastly::Object::HistoricalAggregateResponseAllOf;
use Fastly::Object::HistoricalFieldAggregateResponse;
use Fastly::Object::HistoricalFieldAggregateResponseAllOf;
use Fastly::Object::HistoricalFieldResponse;
use Fastly::Object::HistoricalFieldResponseAllOf;
use Fastly::Object::HistoricalFieldResultsInner;
use Fastly::Object::HistoricalMeta;
use Fastly::Object::HistoricalRegionsResponse;
use Fastly::Object::HistoricalRegionsResponseAllOf;
use Fastly::Object::HistoricalResponse;
use Fastly::Object::HistoricalResponseAllOf;
use Fastly::Object::HistoricalServicesValue;
use Fastly::Object::HistoricalUsageAggregateResponse;
use Fastly::Object::HistoricalUsageMonthResponse;
use Fastly::Object::HistoricalUsageMonthResponseAllOf;
use Fastly::Object::HistoricalUsageMonthResponseAllOfData;
use Fastly::Object::HistoricalUsageResults;
use Fastly::Object::HistoricalUsageServiceResponse;
use Fastly::Object::HistoricalUsageServiceResponseAllOf;
use Fastly::Object::Http3;
use Fastly::Object::Http3AllOf;
use Fastly::Object::IamPermission;
use Fastly::Object::IamRole;
use Fastly::Object::IamRoleAllOf;
use Fastly::Object::IamServiceGroup;
use Fastly::Object::IamServiceGroupAllOf;
use Fastly::Object::IamUserGroup;
use Fastly::Object::IamUserGroupAllOf;
use Fastly::Object::IncludedWithWafActiveRuleItem;
use Fastly::Object::IncludedWithWafExclusionItem;
use Fastly::Object::IncludedWithWafFirewallVersionItem;
use Fastly::Object::IncludedWithWafRuleItem;
use Fastly::Object::Invitation;
use Fastly::Object::InvitationData;
use Fastly::Object::InvitationDataAttributes;
use Fastly::Object::InvitationResponse;
use Fastly::Object::InvitationResponseAllOf;
use Fastly::Object::InvitationResponseData;
use Fastly::Object::InvitationResponseDataAllOf;
use Fastly::Object::InvitationsResponse;
use Fastly::Object::InvitationsResponseAllOf;
use Fastly::Object::ListDomainOwnerships200Response;
use Fastly::Object::ListServiceStars200Response;
use Fastly::Object::ListServiceStars200ResponseAllOf;
use Fastly::Object::ListServiceStars200ResponseAllOfDataInner;
use Fastly::Object::ListServiceStars200ResponseAllOfDataInnerAllOf;
use Fastly::Object::LoggingAddressAndPort;
use Fastly::Object::LoggingAzureblob;
use Fastly::Object::LoggingAzureblobAllOf;
use Fastly::Object::LoggingAzureblobResponse;
use Fastly::Object::LoggingBigquery;
use Fastly::Object::LoggingBigqueryAllOf;
use Fastly::Object::LoggingBigqueryResponse;
use Fastly::Object::LoggingCloudfiles;
use Fastly::Object::LoggingCloudfilesAllOf;
use Fastly::Object::LoggingCloudfilesResponse;
use Fastly::Object::LoggingCommon;
use Fastly::Object::LoggingDatadog;
use Fastly::Object::LoggingDatadogAllOf;
use Fastly::Object::LoggingDatadogResponse;
use Fastly::Object::LoggingDigitalocean;
use Fastly::Object::LoggingDigitaloceanAllOf;
use Fastly::Object::LoggingDigitaloceanResponse;
use Fastly::Object::LoggingElasticsearch;
use Fastly::Object::LoggingElasticsearchAllOf;
use Fastly::Object::LoggingElasticsearchResponse;
use Fastly::Object::LoggingFormatVersion;
use Fastly::Object::LoggingFtp;
use Fastly::Object::LoggingFtpAllOf;
use Fastly::Object::LoggingFtpResponse;
use Fastly::Object::LoggingGcs;
use Fastly::Object::LoggingGcsAllOf;
use Fastly::Object::LoggingGcsCommon;
use Fastly::Object::LoggingGcsResponse;
use Fastly::Object::LoggingGenericCommon;
use Fastly::Object::LoggingGooglePubsub;
use Fastly::Object::LoggingGooglePubsubAllOf;
use Fastly::Object::LoggingGooglePubsubResponse;
use Fastly::Object::LoggingHeroku;
use Fastly::Object::LoggingHerokuAllOf;
use Fastly::Object::LoggingHerokuResponse;
use Fastly::Object::LoggingHoneycomb;
use Fastly::Object::LoggingHoneycombAllOf;
use Fastly::Object::LoggingHoneycombResponse;
use Fastly::Object::LoggingHttps;
use Fastly::Object::LoggingHttpsAllOf;
use Fastly::Object::LoggingHttpsResponse;
use Fastly::Object::LoggingKafka;
use Fastly::Object::LoggingKafkaAllOf;
use Fastly::Object::LoggingKafkaResponse;
use Fastly::Object::LoggingKinesis;
use Fastly::Object::LoggingKinesisResponse;
use Fastly::Object::LoggingLogentries;
use Fastly::Object::LoggingLogentriesAllOf;
use Fastly::Object::LoggingLogentriesResponse;
use Fastly::Object::LoggingLoggly;
use Fastly::Object::LoggingLogglyAllOf;
use Fastly::Object::LoggingLogglyResponse;
use Fastly::Object::LoggingLogshuttle;
use Fastly::Object::LoggingLogshuttleAllOf;
use Fastly::Object::LoggingLogshuttleResponse;
use Fastly::Object::LoggingMessageType;
use Fastly::Object::LoggingNewrelic;
use Fastly::Object::LoggingNewrelicAllOf;
use Fastly::Object::LoggingNewrelicResponse;
use Fastly::Object::LoggingOpenstack;
use Fastly::Object::LoggingOpenstackAllOf;
use Fastly::Object::LoggingOpenstackResponse;
use Fastly::Object::LoggingPapertrail;
use Fastly::Object::LoggingPapertrailResponse;
use Fastly::Object::LoggingPlacement;
use Fastly::Object::LoggingRequestCapsCommon;
use Fastly::Object::LoggingS3;
use Fastly::Object::LoggingS3AllOf;
use Fastly::Object::LoggingS3Response;
use Fastly::Object::LoggingScalyr;
use Fastly::Object::LoggingScalyrAllOf;
use Fastly::Object::LoggingScalyrResponse;
use Fastly::Object::LoggingSftp;
use Fastly::Object::LoggingSftpAllOf;
use Fastly::Object::LoggingSftpResponse;
use Fastly::Object::LoggingSplunk;
use Fastly::Object::LoggingSplunkAllOf;
use Fastly::Object::LoggingSplunkResponse;
use Fastly::Object::LoggingSumologic;
use Fastly::Object::LoggingSumologicAllOf;
use Fastly::Object::LoggingSumologicResponse;
use Fastly::Object::LoggingSyslog;
use Fastly::Object::LoggingSyslogAllOf;
use Fastly::Object::LoggingSyslogResponse;
use Fastly::Object::LoggingTlsCommon;
use Fastly::Object::LoggingUseTls;
use Fastly::Object::ModelPackage;
use Fastly::Object::PackageMetadata;
use Fastly::Object::PackageResponse;
use Fastly::Object::PackageResponseAllOf;
use Fastly::Object::Pagination;
use Fastly::Object::PaginationLinks;
use Fastly::Object::PaginationMeta;
use Fastly::Object::Permission;
use Fastly::Object::Pool;
use Fastly::Object::PoolAllOf;
use Fastly::Object::PoolResponse;
use Fastly::Object::PoolResponseAllOf;
use Fastly::Object::Pop;
use Fastly::Object::PopCoordinates;
use Fastly::Object::PublicIpList;
use Fastly::Object::PurgeKeys;
use Fastly::Object::PurgeResponse;
use Fastly::Object::RateLimiter;
use Fastly::Object::RateLimiterResponse;
use Fastly::Object::RateLimiterResponse1;
use Fastly::Object::RateLimiterResponseAllOf;
use Fastly::Object::Realtime;
use Fastly::Object::RealtimeEntry;
use Fastly::Object::RealtimeEntryAggregated;
use Fastly::Object::RealtimeMeasurements;
use Fastly::Object::RelationshipCommonName;
use Fastly::Object::RelationshipCustomer;
use Fastly::Object::RelationshipCustomerCustomer;
use Fastly::Object::RelationshipMemberCustomer;
use Fastly::Object::RelationshipMemberService;
use Fastly::Object::RelationshipMemberServiceInvitation;
use Fastly::Object::RelationshipMemberTlsActivation;
use Fastly::Object::RelationshipMemberTlsBulkCertificate;
use Fastly::Object::RelationshipMemberTlsCertificate;
use Fastly::Object::RelationshipMemberTlsConfiguration;
use Fastly::Object::RelationshipMemberTlsDnsRecord;
use Fastly::Object::RelationshipMemberTlsDomain;
use Fastly::Object::RelationshipMemberTlsPrivateKey;
use Fastly::Object::RelationshipMemberTlsSubscription;
use Fastly::Object::RelationshipMemberWafActiveRule;
use Fastly::Object::RelationshipMemberWafFirewall;
use Fastly::Object::RelationshipMemberWafFirewallVersion;
use Fastly::Object::RelationshipMemberWafRule;
use Fastly::Object::RelationshipMemberWafRuleRevision;
use Fastly::Object::RelationshipMemberWafTag;
use Fastly::Object::RelationshipService;
use Fastly::Object::RelationshipServiceInvitations;
use Fastly::Object::RelationshipServiceInvitationsCreate;
use Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations;
use Fastly::Object::RelationshipServiceInvitationsServiceInvitations;
use Fastly::Object::RelationshipServiceService;
use Fastly::Object::RelationshipServices;
use Fastly::Object::RelationshipTlsActivation;
use Fastly::Object::RelationshipTlsActivationTlsActivation;
use Fastly::Object::RelationshipTlsActivations;
use Fastly::Object::RelationshipTlsBulkCertificate;
use Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate;
use Fastly::Object::RelationshipTlsBulkCertificates;
use Fastly::Object::RelationshipTlsCertificate;
use Fastly::Object::RelationshipTlsCertificateTlsCertificate;
use Fastly::Object::RelationshipTlsCertificates;
use Fastly::Object::RelationshipTlsConfiguration;
use Fastly::Object::RelationshipTlsConfigurationTlsConfiguration;
use Fastly::Object::RelationshipTlsConfigurations;
use Fastly::Object::RelationshipTlsDnsRecord;
use Fastly::Object::RelationshipTlsDnsRecordDnsRecord;
use Fastly::Object::RelationshipTlsDnsRecords;
use Fastly::Object::RelationshipTlsDomain;
use Fastly::Object::RelationshipTlsDomainTlsDomain;
use Fastly::Object::RelationshipTlsDomains;
use Fastly::Object::RelationshipTlsPrivateKey;
use Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey;
use Fastly::Object::RelationshipTlsPrivateKeys;
use Fastly::Object::RelationshipTlsSubscription;
use Fastly::Object::RelationshipTlsSubscriptionTlsSubscription;
use Fastly::Object::RelationshipTlsSubscriptions;
use Fastly::Object::RelationshipUser;
use Fastly::Object::RelationshipUserUser;
use Fastly::Object::RelationshipUserUserData;
use Fastly::Object::RelationshipWafActiveRules;
use Fastly::Object::RelationshipWafActiveRulesWafActiveRules;
use Fastly::Object::RelationshipWafFirewall;
use Fastly::Object::RelationshipWafFirewallVersion;
use Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion;
use Fastly::Object::RelationshipWafFirewallVersions;
use Fastly::Object::RelationshipWafFirewallWafFirewall;
use Fastly::Object::RelationshipWafRule;
use Fastly::Object::RelationshipWafRuleRevision;
use Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions;
use Fastly::Object::RelationshipWafRuleRevisions;
use Fastly::Object::RelationshipWafRuleWafRule;
use Fastly::Object::RelationshipWafRules;
use Fastly::Object::RelationshipWafTags;
use Fastly::Object::RelationshipWafTagsWafTags;
use Fastly::Object::RelationshipsForInvitation;
use Fastly::Object::RelationshipsForStar;
use Fastly::Object::RelationshipsForTlsActivation;
use Fastly::Object::RelationshipsForTlsBulkCertificate;
use Fastly::Object::RelationshipsForTlsConfiguration;
use Fastly::Object::RelationshipsForTlsDomain;
use Fastly::Object::RelationshipsForTlsPrivateKey;
use Fastly::Object::RelationshipsForTlsSubscription;
use Fastly::Object::RelationshipsForWafActiveRule;
use Fastly::Object::RelationshipsForWafExclusion;
use Fastly::Object::RelationshipsForWafFirewallVersion;
use Fastly::Object::RelationshipsForWafRule;
use Fastly::Object::RequestSettings;
use Fastly::Object::RequestSettingsResponse;
use Fastly::Object::Resource;
use Fastly::Object::ResourceCreate;
use Fastly::Object::ResourceCreateAllOf;
use Fastly::Object::ResourceResponse;
use Fastly::Object::ResourceResponseAllOf;
use Fastly::Object::ResponseObject;
use Fastly::Object::ResponseObjectResponse;
use Fastly::Object::Results;
use Fastly::Object::RoleUser;
use Fastly::Object::SchemasContactResponse;
use Fastly::Object::SchemasSnippetResponse;
use Fastly::Object::SchemasUserResponse;
use Fastly::Object::SchemasVclResponse;
use Fastly::Object::SchemasVersion;
use Fastly::Object::SchemasVersionResponse;
use Fastly::Object::SchemasWafFirewallVersion;
use Fastly::Object::SchemasWafFirewallVersionData;
use Fastly::Object::Server;
use Fastly::Object::ServerResponse;
use Fastly::Object::ServerResponseAllOf;
use Fastly::Object::Service;
use Fastly::Object::ServiceAuthorization;
use Fastly::Object::ServiceAuthorizationData;
use Fastly::Object::ServiceAuthorizationDataAttributes;
use Fastly::Object::ServiceAuthorizationDataRelationships;
use Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf;
use Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf1;
use Fastly::Object::ServiceAuthorizationResponse;
use Fastly::Object::ServiceAuthorizationResponseData;
use Fastly::Object::ServiceAuthorizationResponseDataAllOf;
use Fastly::Object::ServiceAuthorizationsResponse;
use Fastly::Object::ServiceAuthorizationsResponseAllOf;
use Fastly::Object::ServiceCreate;
use Fastly::Object::ServiceCreateAllOf;
use Fastly::Object::ServiceDetail;
use Fastly::Object::ServiceDetailAllOf;
use Fastly::Object::ServiceIdAndVersion;
use Fastly::Object::ServiceInvitation;
use Fastly::Object::ServiceInvitationData;
use Fastly::Object::ServiceInvitationDataAttributes;
use Fastly::Object::ServiceInvitationDataRelationships;
use Fastly::Object::ServiceInvitationResponse;
use Fastly::Object::ServiceInvitationResponseAllOf;
use Fastly::Object::ServiceInvitationResponseAllOfData;
use Fastly::Object::ServiceListResponse;
use Fastly::Object::ServiceListResponseAllOf;
use Fastly::Object::ServiceResponse;
use Fastly::Object::ServiceResponseAllOf;
use Fastly::Object::ServiceVersionDetail;
use Fastly::Object::ServiceVersionDetailOrNull;
use Fastly::Object::Settings;
use Fastly::Object::SettingsResponse;
use Fastly::Object::Snippet;
use Fastly::Object::SnippetResponse;
use Fastly::Object::SnippetResponseAllOf;
use Fastly::Object::Star;
use Fastly::Object::StarData;
use Fastly::Object::StarResponse;
use Fastly::Object::StarResponseAllOf;
use Fastly::Object::Stats;
use Fastly::Object::Timestamps;
use Fastly::Object::TimestampsNoDelete;
use Fastly::Object::TlsActivation;
use Fastly::Object::TlsActivationData;
use Fastly::Object::TlsActivationResponse;
use Fastly::Object::TlsActivationResponseData;
use Fastly::Object::TlsActivationResponseDataAllOf;
use Fastly::Object::TlsActivationsResponse;
use Fastly::Object::TlsActivationsResponseAllOf;
use Fastly::Object::TlsBulkCertificate;
use Fastly::Object::TlsBulkCertificateData;
use Fastly::Object::TlsBulkCertificateDataAttributes;
use Fastly::Object::TlsBulkCertificateResponse;
use Fastly::Object::TlsBulkCertificateResponseAttributes;
use Fastly::Object::TlsBulkCertificateResponseAttributesAllOf;
use Fastly::Object::TlsBulkCertificateResponseData;
use Fastly::Object::TlsBulkCertificateResponseDataAllOf;
use Fastly::Object::TlsBulkCertificatesResponse;
use Fastly::Object::TlsBulkCertificatesResponseAllOf;
use Fastly::Object::TlsCertificate;
use Fastly::Object::TlsCertificateData;
use Fastly::Object::TlsCertificateDataAttributes;
use Fastly::Object::TlsCertificateResponse;
use Fastly::Object::TlsCertificateResponseAttributes;
use Fastly::Object::TlsCertificateResponseAttributesAllOf;
use Fastly::Object::TlsCertificateResponseData;
use Fastly::Object::TlsCertificateResponseDataAllOf;
use Fastly::Object::TlsCertificatesResponse;
use Fastly::Object::TlsCertificatesResponseAllOf;
use Fastly::Object::TlsCommon;
use Fastly::Object::TlsConfiguration;
use Fastly::Object::TlsConfigurationData;
use Fastly::Object::TlsConfigurationDataAttributes;
use Fastly::Object::TlsConfigurationResponse;
use Fastly::Object::TlsConfigurationResponseAttributes;
use Fastly::Object::TlsConfigurationResponseAttributesAllOf;
use Fastly::Object::TlsConfigurationResponseData;
use Fastly::Object::TlsConfigurationResponseDataAllOf;
use Fastly::Object::TlsConfigurationsResponse;
use Fastly::Object::TlsConfigurationsResponseAllOf;
use Fastly::Object::TlsDnsRecord;
use Fastly::Object::TlsDomainData;
use Fastly::Object::TlsDomainsResponse;
use Fastly::Object::TlsDomainsResponseAllOf;
use Fastly::Object::TlsPrivateKey;
use Fastly::Object::TlsPrivateKeyData;
use Fastly::Object::TlsPrivateKeyDataAttributes;
use Fastly::Object::TlsPrivateKeyResponse;
use Fastly::Object::TlsPrivateKeyResponseAttributes;
use Fastly::Object::TlsPrivateKeyResponseAttributesAllOf;
use Fastly::Object::TlsPrivateKeyResponseData;
use Fastly::Object::TlsPrivateKeysResponse;
use Fastly::Object::TlsPrivateKeysResponseAllOf;
use Fastly::Object::TlsSubscription;
use Fastly::Object::TlsSubscriptionData;
use Fastly::Object::TlsSubscriptionDataAttributes;
use Fastly::Object::TlsSubscriptionResponse;
use Fastly::Object::TlsSubscriptionResponseAttributes;
use Fastly::Object::TlsSubscriptionResponseAttributesAllOf;
use Fastly::Object::TlsSubscriptionResponseData;
use Fastly::Object::TlsSubscriptionResponseDataAllOf;
use Fastly::Object::TlsSubscriptionsResponse;
use Fastly::Object::TlsSubscriptionsResponseAllOf;
use Fastly::Object::Token;
use Fastly::Object::TokenCreatedResponse;
use Fastly::Object::TokenCreatedResponseAllOf;
use Fastly::Object::TokenResponse;
use Fastly::Object::TokenResponseAllOf;
use Fastly::Object::TypeBillingAddress;
use Fastly::Object::TypeContact;
use Fastly::Object::TypeCustomer;
use Fastly::Object::TypeEvent;
use Fastly::Object::TypeInvitation;
use Fastly::Object::TypeResource;
use Fastly::Object::TypeService;
use Fastly::Object::TypeServiceAuthorization;
use Fastly::Object::TypeServiceInvitation;
use Fastly::Object::TypeStar;
use Fastly::Object::TypeTlsActivation;
use Fastly::Object::TypeTlsBulkCertificate;
use Fastly::Object::TypeTlsCertificate;
use Fastly::Object::TypeTlsConfiguration;
use Fastly::Object::TypeTlsDnsRecord;
use Fastly::Object::TypeTlsDomain;
use Fastly::Object::TypeTlsPrivateKey;
use Fastly::Object::TypeTlsSubscription;
use Fastly::Object::TypeUser;
use Fastly::Object::TypeWafActiveRule;
use Fastly::Object::TypeWafExclusion;
use Fastly::Object::TypeWafFirewall;
use Fastly::Object::TypeWafFirewallVersion;
use Fastly::Object::TypeWafRule;
use Fastly::Object::TypeWafRuleRevision;
use Fastly::Object::TypeWafTag;
use Fastly::Object::UpdateBillingAddressRequest;
use Fastly::Object::UpdateBillingAddressRequestData;
use Fastly::Object::User;
use Fastly::Object::UserResponse;
use Fastly::Object::UserResponseAllOf;
use Fastly::Object::Vcl;
use Fastly::Object::VclDiff;
use Fastly::Object::VclResponse;
use Fastly::Object::Version;
use Fastly::Object::VersionCreateResponse;
use Fastly::Object::VersionDetail;
use Fastly::Object::VersionDetailSettings;
use Fastly::Object::VersionResponse;
use Fastly::Object::VersionResponseAllOf;
use Fastly::Object::WafActiveRule;
use Fastly::Object::WafActiveRuleCreationResponse;
use Fastly::Object::WafActiveRuleData;
use Fastly::Object::WafActiveRuleDataAttributes;
use Fastly::Object::WafActiveRuleResponse;
use Fastly::Object::WafActiveRuleResponseData;
use Fastly::Object::WafActiveRuleResponseDataAllOf;
use Fastly::Object::WafActiveRuleResponseDataAttributes;
use Fastly::Object::WafActiveRuleResponseDataAttributesAllOf;
use Fastly::Object::WafActiveRuleResponseDataRelationships;
use Fastly::Object::WafActiveRulesResponse;
use Fastly::Object::WafActiveRulesResponseAllOf;
use Fastly::Object::WafExclusion;
use Fastly::Object::WafExclusionData;
use Fastly::Object::WafExclusionDataAttributes;
use Fastly::Object::WafExclusionResponse;
use Fastly::Object::WafExclusionResponseData;
use Fastly::Object::WafExclusionResponseDataAllOf;
use Fastly::Object::WafExclusionResponseDataAttributes;
use Fastly::Object::WafExclusionResponseDataAttributesAllOf;
use Fastly::Object::WafExclusionResponseDataRelationships;
use Fastly::Object::WafExclusionsResponse;
use Fastly::Object::WafExclusionsResponseAllOf;
use Fastly::Object::WafFirewall;
use Fastly::Object::WafFirewallData;
use Fastly::Object::WafFirewallDataAttributes;
use Fastly::Object::WafFirewallResponse;
use Fastly::Object::WafFirewallResponseData;
use Fastly::Object::WafFirewallResponseDataAllOf;
use Fastly::Object::WafFirewallResponseDataAttributes;
use Fastly::Object::WafFirewallResponseDataAttributesAllOf;
use Fastly::Object::WafFirewallVersion;
use Fastly::Object::WafFirewallVersionData;
use Fastly::Object::WafFirewallVersionDataAttributes;
use Fastly::Object::WafFirewallVersionResponse;
use Fastly::Object::WafFirewallVersionResponseData;
use Fastly::Object::WafFirewallVersionResponseDataAllOf;
use Fastly::Object::WafFirewallVersionResponseDataAttributes;
use Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf;
use Fastly::Object::WafFirewallVersionsResponse;
use Fastly::Object::WafFirewallVersionsResponseAllOf;
use Fastly::Object::WafFirewallsResponse;
use Fastly::Object::WafFirewallsResponseAllOf;
use Fastly::Object::WafRule;
use Fastly::Object::WafRuleAttributes;
use Fastly::Object::WafRuleResponse;
use Fastly::Object::WafRuleResponseData;
use Fastly::Object::WafRuleResponseDataAllOf;
use Fastly::Object::WafRuleRevision;
use Fastly::Object::WafRuleRevisionAttributes;
use Fastly::Object::WafRuleRevisionOrLatest;
use Fastly::Object::WafRuleRevisionResponse;
use Fastly::Object::WafRuleRevisionResponseData;
use Fastly::Object::WafRuleRevisionResponseDataAllOf;
use Fastly::Object::WafRuleRevisionsResponse;
use Fastly::Object::WafRuleRevisionsResponseAllOf;
use Fastly::Object::WafRulesResponse;
use Fastly::Object::WafRulesResponseAllOf;
use Fastly::Object::WafTag;
use Fastly::Object::WafTagAttributes;
use Fastly::Object::WafTagsResponse;
use Fastly::Object::WafTagsResponseAllOf;
use Fastly::Object::WafTagsResponseDataItem;

# for displaying the API response data
use Data::Dumper;


my $api_instance = Fastly::AclApi->new(
    # Configure API key authorization: token
    api_key => {'Fastly-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Fastly-Key' => 'Bearer'},
);

my $service_id = "service_id_example"; # string | Alphanumeric string identifying the service.
my $version_id = 56; # int | Integer identifying a service version.
my $name = "name_example"; # string | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.

eval {
    my $result = $api_instance->create_acl(service_id => $service_id, version_id => $version_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AclApi->create_acl: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://api.fastly.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AclApi* | [**create_acl**](docs/AclApi.md#create_acl) | **POST** /service/{service_id}/version/{version_id}/acl | Create a new ACL
*AclApi* | [**delete_acl**](docs/AclApi.md#delete_acl) | **DELETE** /service/{service_id}/version/{version_id}/acl/{acl_name} | Delete an ACL
*AclApi* | [**get_acl**](docs/AclApi.md#get_acl) | **GET** /service/{service_id}/version/{version_id}/acl/{acl_name} | Describe an ACL
*AclApi* | [**list_acls**](docs/AclApi.md#list_acls) | **GET** /service/{service_id}/version/{version_id}/acl | List ACLs
*AclApi* | [**update_acl**](docs/AclApi.md#update_acl) | **PUT** /service/{service_id}/version/{version_id}/acl/{acl_name} | Update an ACL
*AclEntryApi* | [**bulk_update_acl_entries**](docs/AclEntryApi.md#bulk_update_acl_entries) | **PATCH** /service/{service_id}/acl/{acl_id}/entries | Update multiple ACL entries
*AclEntryApi* | [**create_acl_entry**](docs/AclEntryApi.md#create_acl_entry) | **POST** /service/{service_id}/acl/{acl_id}/entry | Create an ACL entry
*AclEntryApi* | [**delete_acl_entry**](docs/AclEntryApi.md#delete_acl_entry) | **DELETE** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Delete an ACL entry
*AclEntryApi* | [**get_acl_entry**](docs/AclEntryApi.md#get_acl_entry) | **GET** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Describe an ACL entry
*AclEntryApi* | [**list_acl_entries**](docs/AclEntryApi.md#list_acl_entries) | **GET** /service/{service_id}/acl/{acl_id}/entries | List ACL entries
*AclEntryApi* | [**update_acl_entry**](docs/AclEntryApi.md#update_acl_entry) | **PATCH** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Update an ACL entry
*ApexRedirectApi* | [**delete_apex_redirect**](docs/ApexRedirectApi.md#delete_apex_redirect) | **DELETE** /apex-redirects/{apex_redirect_id} | Delete an apex redirect
*ApexRedirectApi* | [**get_apex_redirect**](docs/ApexRedirectApi.md#get_apex_redirect) | **GET** /apex-redirects/{apex_redirect_id} | Get an apex redirect
*ApexRedirectApi* | [**list_apex_redirects**](docs/ApexRedirectApi.md#list_apex_redirects) | **GET** /service/{service_id}/version/{version_id}/apex-redirects | List apex redirects
*ApexRedirectApi* | [**update_apex_redirect**](docs/ApexRedirectApi.md#update_apex_redirect) | **PUT** /apex-redirects/{apex_redirect_id} | Update an apex redirect
*BackendApi* | [**create_backend**](docs/BackendApi.md#create_backend) | **POST** /service/{service_id}/version/{version_id}/backend | Create a backend
*BackendApi* | [**delete_backend**](docs/BackendApi.md#delete_backend) | **DELETE** /service/{service_id}/version/{version_id}/backend/{backend_name} | Delete a backend
*BackendApi* | [**get_backend**](docs/BackendApi.md#get_backend) | **GET** /service/{service_id}/version/{version_id}/backend/{backend_name} | Describe a backend
*BackendApi* | [**list_backends**](docs/BackendApi.md#list_backends) | **GET** /service/{service_id}/version/{version_id}/backend | List backends
*BackendApi* | [**update_backend**](docs/BackendApi.md#update_backend) | **PUT** /service/{service_id}/version/{version_id}/backend/{backend_name} | Update a backend
*BillingApi* | [**get_invoice**](docs/BillingApi.md#get_invoice) | **GET** /billing/v2/year/{year}/month/{month} | Get an invoice
*BillingApi* | [**get_invoice_by_id**](docs/BillingApi.md#get_invoice_by_id) | **GET** /billing/v2/account_customers/{customer_id}/invoices/{invoice_id} | Get an invoice
*BillingApi* | [**get_invoice_mtd**](docs/BillingApi.md#get_invoice_mtd) | **GET** /billing/v2/account_customers/{customer_id}/mtd_invoice | Get month-to-date billing estimate
*BillingAddressApi* | [**add_billing_addr**](docs/BillingAddressApi.md#add_billing_addr) | **POST** /customer/{customer_id}/billing_address | Add a billing address to a customer
*BillingAddressApi* | [**delete_billing_addr**](docs/BillingAddressApi.md#delete_billing_addr) | **DELETE** /customer/{customer_id}/billing_address | Delete a billing address
*BillingAddressApi* | [**get_billing_addr**](docs/BillingAddressApi.md#get_billing_addr) | **GET** /customer/{customer_id}/billing_address | Get a billing address
*BillingAddressApi* | [**update_billing_addr**](docs/BillingAddressApi.md#update_billing_addr) | **PATCH** /customer/{customer_id}/billing_address | Update a billing address
*CacheSettingsApi* | [**create_cache_settings**](docs/CacheSettingsApi.md#create_cache_settings) | **POST** /service/{service_id}/version/{version_id}/cache_settings | Create a cache settings object
*CacheSettingsApi* | [**delete_cache_settings**](docs/CacheSettingsApi.md#delete_cache_settings) | **DELETE** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Delete a cache settings object
*CacheSettingsApi* | [**get_cache_settings**](docs/CacheSettingsApi.md#get_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Get a cache settings object
*CacheSettingsApi* | [**list_cache_settings**](docs/CacheSettingsApi.md#list_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings | List cache settings objects
*CacheSettingsApi* | [**update_cache_settings**](docs/CacheSettingsApi.md#update_cache_settings) | **PUT** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Update a cache settings object
*ConditionApi* | [**create_condition**](docs/ConditionApi.md#create_condition) | **POST** /service/{service_id}/version/{version_id}/condition | Create a condition
*ConditionApi* | [**delete_condition**](docs/ConditionApi.md#delete_condition) | **DELETE** /service/{service_id}/version/{version_id}/condition/{condition_name} | Delete a condition
*ConditionApi* | [**get_condition**](docs/ConditionApi.md#get_condition) | **GET** /service/{service_id}/version/{version_id}/condition/{condition_name} | Describe a condition
*ConditionApi* | [**list_conditions**](docs/ConditionApi.md#list_conditions) | **GET** /service/{service_id}/version/{version_id}/condition | List conditions
*ConditionApi* | [**update_condition**](docs/ConditionApi.md#update_condition) | **PUT** /service/{service_id}/version/{version_id}/condition/{condition_name} | Update a condition
*ContactApi* | [**delete_contact**](docs/ContactApi.md#delete_contact) | **DELETE** /customer/{customer_id}/contact/{contact_id} | Delete a contact
*ContactApi* | [**list_contacts**](docs/ContactApi.md#list_contacts) | **GET** /customer/{customer_id}/contacts | List contacts
*ContentApi* | [**content_check**](docs/ContentApi.md#content_check) | **GET** /content/edge_check | Check status of content in each POP&#39;s cache
*CustomerApi* | [**delete_customer**](docs/CustomerApi.md#delete_customer) | **DELETE** /customer/{customer_id} | Delete a customer
*CustomerApi* | [**get_customer**](docs/CustomerApi.md#get_customer) | **GET** /customer/{customer_id} | Get a customer
*CustomerApi* | [**get_logged_in_customer**](docs/CustomerApi.md#get_logged_in_customer) | **GET** /current_customer | Get the logged in customer
*CustomerApi* | [**list_users**](docs/CustomerApi.md#list_users) | **GET** /customer/{customer_id}/users | List users
*CustomerApi* | [**update_customer**](docs/CustomerApi.md#update_customer) | **PUT** /customer/{customer_id} | Update a customer
*DictionaryApi* | [**create_dictionary**](docs/DictionaryApi.md#create_dictionary) | **POST** /service/{service_id}/version/{version_id}/dictionary | Create an edge dictionary
*DictionaryApi* | [**delete_dictionary**](docs/DictionaryApi.md#delete_dictionary) | **DELETE** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Delete an edge dictionary
*DictionaryApi* | [**get_dictionary**](docs/DictionaryApi.md#get_dictionary) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Get an edge dictionary
*DictionaryApi* | [**list_dictionaries**](docs/DictionaryApi.md#list_dictionaries) | **GET** /service/{service_id}/version/{version_id}/dictionary | List edge dictionaries
*DictionaryApi* | [**update_dictionary**](docs/DictionaryApi.md#update_dictionary) | **PUT** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Update an edge dictionary
*DictionaryInfoApi* | [**get_dictionary_info**](docs/DictionaryInfoApi.md#get_dictionary_info) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_id}/info | Get edge dictionary metadata
*DictionaryItemApi* | [**create_dictionary_item**](docs/DictionaryItemApi.md#create_dictionary_item) | **POST** /service/{service_id}/dictionary/{dictionary_id}/item | Create an entry in an edge dictionary
*DictionaryItemApi* | [**delete_dictionary_item**](docs/DictionaryItemApi.md#delete_dictionary_item) | **DELETE** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Delete an item from an edge dictionary
*DictionaryItemApi* | [**get_dictionary_item**](docs/DictionaryItemApi.md#get_dictionary_item) | **GET** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Get an item from an edge dictionary
*DictionaryItemApi* | [**list_dictionary_items**](docs/DictionaryItemApi.md#list_dictionary_items) | **GET** /service/{service_id}/dictionary/{dictionary_id}/items | List items in an edge dictionary
*DictionaryItemApi* | [**update_dictionary_item**](docs/DictionaryItemApi.md#update_dictionary_item) | **PATCH** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Update an entry in an edge dictionary
*DictionaryItemApi* | [**upsert_dictionary_item**](docs/DictionaryItemApi.md#upsert_dictionary_item) | **PUT** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Insert or update an entry in an edge dictionary
*DiffApi* | [**diff_service_versions**](docs/DiffApi.md#diff_service_versions) | **GET** /service/{service_id}/diff/from/{from_version_id}/to/{to_version_id} | Diff two service versions
*DirectorApi* | [**create_director**](docs/DirectorApi.md#create_director) | **POST** /service/{service_id}/version/{version_id}/director | Create a director
*DirectorApi* | [**delete_director**](docs/DirectorApi.md#delete_director) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name} | Delete a director
*DirectorApi* | [**get_director**](docs/DirectorApi.md#get_director) | **GET** /service/{service_id}/version/{version_id}/director/{director_name} | Get a director
*DirectorApi* | [**list_directors**](docs/DirectorApi.md#list_directors) | **GET** /service/{service_id}/version/{version_id}/director | List directors
*DirectorBackendApi* | [**create_director_backend**](docs/DirectorBackendApi.md#create_director_backend) | **POST** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Create a director-backend relationship
*DirectorBackendApi* | [**delete_director_backend**](docs/DirectorBackendApi.md#delete_director_backend) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Delete a director-backend relationship
*DirectorBackendApi* | [**get_director_backend**](docs/DirectorBackendApi.md#get_director_backend) | **GET** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Get a director-backend relationship
*DocsApi* | [**get_docs**](docs/DocsApi.md#get_docs) | **GET** /docs | Get Fastly API docs as structured data
*DocsApi* | [**get_docs_section**](docs/DocsApi.md#get_docs_section) | **GET** /docs/section/{section} | Get API docs matching a section filter
*DocsApi* | [**get_docs_subject**](docs/DocsApi.md#get_docs_subject) | **GET** /docs/subject/{subject} | Get API docs for a single subject
*DomainApi* | [**check_domain**](docs/DomainApi.md#check_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name}/check | Validate DNS configuration for a single domain on a service
*DomainApi* | [**check_domains**](docs/DomainApi.md#check_domains) | **GET** /service/{service_id}/version/{version_id}/domain/check_all | Validate DNS configuration for all domains on a service
*DomainApi* | [**create_domain**](docs/DomainApi.md#create_domain) | **POST** /service/{service_id}/version/{version_id}/domain | Add a domain name to a service
*DomainApi* | [**delete_domain**](docs/DomainApi.md#delete_domain) | **DELETE** /service/{service_id}/version/{version_id}/domain/{domain_name} | Remove a domain from a service
*DomainApi* | [**get_domain**](docs/DomainApi.md#get_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name} | Describe a domain
*DomainApi* | [**list_domains**](docs/DomainApi.md#list_domains) | **GET** /service/{service_id}/version/{version_id}/domain | List domains
*DomainApi* | [**update_domain**](docs/DomainApi.md#update_domain) | **PUT** /service/{service_id}/version/{version_id}/domain/{domain_name} | Update a domain
*DomainOwnershipsApi* | [**list_domain_ownerships**](docs/DomainOwnershipsApi.md#list_domain_ownerships) | **GET** /domain-ownerships | List domain-ownerships
*EventsApi* | [**get_event**](docs/EventsApi.md#get_event) | **GET** /events/{event_id} | Get an event
*EventsApi* | [**list_events**](docs/EventsApi.md#list_events) | **GET** /events | List events
*GzipApi* | [**create_gzip_config**](docs/GzipApi.md#create_gzip_config) | **POST** /service/{service_id}/version/{version_id}/gzip | Create a gzip configuration
*GzipApi* | [**delete_gzip_config**](docs/GzipApi.md#delete_gzip_config) | **DELETE** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Delete a gzip configuration
*GzipApi* | [**get_gzip_configs**](docs/GzipApi.md#get_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Get a gzip configuration
*GzipApi* | [**list_gzip_configs**](docs/GzipApi.md#list_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip | List gzip configurations
*GzipApi* | [**update_gzip_config**](docs/GzipApi.md#update_gzip_config) | **PUT** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Update a gzip configuration
*HeaderApi* | [**create_header_object**](docs/HeaderApi.md#create_header_object) | **POST** /service/{service_id}/version/{version_id}/header | Create a Header object
*HeaderApi* | [**delete_header_object**](docs/HeaderApi.md#delete_header_object) | **DELETE** /service/{service_id}/version/{version_id}/header/{header_name} | Delete a Header object
*HeaderApi* | [**get_header_object**](docs/HeaderApi.md#get_header_object) | **GET** /service/{service_id}/version/{version_id}/header/{header_name} | Get a Header object
*HeaderApi* | [**list_header_objects**](docs/HeaderApi.md#list_header_objects) | **GET** /service/{service_id}/version/{version_id}/header | List Header objects
*HeaderApi* | [**update_header_object**](docs/HeaderApi.md#update_header_object) | **PUT** /service/{service_id}/version/{version_id}/header/{header_name} | Update a Header object
*HealthcheckApi* | [**create_healthcheck**](docs/HealthcheckApi.md#create_healthcheck) | **POST** /service/{service_id}/version/{version_id}/healthcheck | Create a healthcheck
*HealthcheckApi* | [**delete_healthcheck**](docs/HealthcheckApi.md#delete_healthcheck) | **DELETE** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Delete a healthcheck
*HealthcheckApi* | [**get_healthcheck**](docs/HealthcheckApi.md#get_healthcheck) | **GET** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Get a healthcheck
*HealthcheckApi* | [**list_healthchecks**](docs/HealthcheckApi.md#list_healthchecks) | **GET** /service/{service_id}/version/{version_id}/healthcheck | List healthchecks
*HealthcheckApi* | [**update_healthcheck**](docs/HealthcheckApi.md#update_healthcheck) | **PUT** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Update a healthcheck
*HistoricalApi* | [**get_hist_stats**](docs/HistoricalApi.md#get_hist_stats) | **GET** /stats | Get historical stats
*HistoricalApi* | [**get_hist_stats_aggregated**](docs/HistoricalApi.md#get_hist_stats_aggregated) | **GET** /stats/aggregate | Get aggregated historical stats
*HistoricalApi* | [**get_hist_stats_field**](docs/HistoricalApi.md#get_hist_stats_field) | **GET** /stats/field/{field} | Get historical stats for a single field
*HistoricalApi* | [**get_hist_stats_service**](docs/HistoricalApi.md#get_hist_stats_service) | **GET** /stats/service/{service_id} | Get historical stats for a single service
*HistoricalApi* | [**get_hist_stats_service_field**](docs/HistoricalApi.md#get_hist_stats_service_field) | **GET** /stats/service/{service_id}/field/{field} | Get historical stats for a single service/field combination
*HistoricalApi* | [**get_regions**](docs/HistoricalApi.md#get_regions) | **GET** /stats/regions | Get region codes
*HistoricalApi* | [**get_usage**](docs/HistoricalApi.md#get_usage) | **GET** /stats/usage | Get usage statistics
*HistoricalApi* | [**get_usage_month**](docs/HistoricalApi.md#get_usage_month) | **GET** /stats/usage_by_month | Get month-to-date usage statistics
*HistoricalApi* | [**get_usage_service**](docs/HistoricalApi.md#get_usage_service) | **GET** /stats/usage_by_service | Get usage statistics per service
*Http3Api* | [**create_http3**](docs/Http3Api.md#create_http3) | **POST** /service/{service_id}/version/{version_id}/http3 | Enable support for HTTP/3
*Http3Api* | [**delete_http3**](docs/Http3Api.md#delete_http3) | **DELETE** /service/{service_id}/version/{version_id}/http3 | Disable support for HTTP/3
*Http3Api* | [**get_http3**](docs/Http3Api.md#get_http3) | **GET** /service/{service_id}/version/{version_id}/http3 | Get HTTP/3 status
*IamPermissionsApi* | [**list_permissions**](docs/IamPermissionsApi.md#list_permissions) | **GET** /permissions | List permissions
*IamRolesApi* | [**delete_a_role**](docs/IamRolesApi.md#delete_a_role) | **DELETE** /roles/{role_id} | Delete a role
*IamRolesApi* | [**get_a_role**](docs/IamRolesApi.md#get_a_role) | **GET** /roles/{role_id} | Get a role
*IamRolesApi* | [**list_role_permissions**](docs/IamRolesApi.md#list_role_permissions) | **GET** /roles/{role_id}/permissions | List permissions in a role
*IamRolesApi* | [**list_roles**](docs/IamRolesApi.md#list_roles) | **GET** /roles | List roles
*IamServiceGroupsApi* | [**delete_a_service_group**](docs/IamServiceGroupsApi.md#delete_a_service_group) | **DELETE** /service-groups/{service_group_id} | Delete a service group
*IamServiceGroupsApi* | [**get_a_service_group**](docs/IamServiceGroupsApi.md#get_a_service_group) | **GET** /service-groups/{service_group_id} | Get a service group
*IamServiceGroupsApi* | [**list_service_group_services**](docs/IamServiceGroupsApi.md#list_service_group_services) | **GET** /service-groups/{service_group_id}/services | List services to a service group
*IamServiceGroupsApi* | [**list_service_groups**](docs/IamServiceGroupsApi.md#list_service_groups) | **GET** /service-groups | List service groups
*IamUserGroupsApi* | [**delete_a_user_group**](docs/IamUserGroupsApi.md#delete_a_user_group) | **DELETE** /user-groups/{user_group_id} | Delete a user group
*IamUserGroupsApi* | [**get_a_user_group**](docs/IamUserGroupsApi.md#get_a_user_group) | **GET** /user-groups/{user_group_id} | Get a user group
*IamUserGroupsApi* | [**list_user_group_members**](docs/IamUserGroupsApi.md#list_user_group_members) | **GET** /user-groups/{user_group_id}/members | List members of a user group
*IamUserGroupsApi* | [**list_user_group_roles**](docs/IamUserGroupsApi.md#list_user_group_roles) | **GET** /user-groups/{user_group_id}/roles | List roles in a user group
*IamUserGroupsApi* | [**list_user_group_service_groups**](docs/IamUserGroupsApi.md#list_user_group_service_groups) | **GET** /user-groups/{user_group_id}/service-groups | List service groups in a user group
*IamUserGroupsApi* | [**list_user_groups**](docs/IamUserGroupsApi.md#list_user_groups) | **GET** /user-groups | List user groups
*InvitationsApi* | [**create_invitation**](docs/InvitationsApi.md#create_invitation) | **POST** /invitations | Create an invitation
*InvitationsApi* | [**delete_invitation**](docs/InvitationsApi.md#delete_invitation) | **DELETE** /invitations/{invitation_id} | Delete an invitation
*InvitationsApi* | [**list_invitations**](docs/InvitationsApi.md#list_invitations) | **GET** /invitations | List invitations
*LoggingAzureblobApi* | [**create_log_azure**](docs/LoggingAzureblobApi.md#create_log_azure) | **POST** /service/{service_id}/version/{version_id}/logging/azureblob | Create an Azure Blob Storage log endpoint
*LoggingAzureblobApi* | [**delete_log_azure**](docs/LoggingAzureblobApi.md#delete_log_azure) | **DELETE** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Delete the Azure Blob Storage log endpoint
*LoggingAzureblobApi* | [**get_log_azure**](docs/LoggingAzureblobApi.md#get_log_azure) | **GET** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Get an Azure Blob Storage log endpoint
*LoggingAzureblobApi* | [**list_log_azure**](docs/LoggingAzureblobApi.md#list_log_azure) | **GET** /service/{service_id}/version/{version_id}/logging/azureblob | List Azure Blob Storage log endpoints
*LoggingAzureblobApi* | [**update_log_azure**](docs/LoggingAzureblobApi.md#update_log_azure) | **PUT** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Update an Azure Blob Storage log endpoint
*LoggingBigqueryApi* | [**create_log_bigquery**](docs/LoggingBigqueryApi.md#create_log_bigquery) | **POST** /service/{service_id}/version/{version_id}/logging/bigquery | Create a BigQuery log endpoint
*LoggingBigqueryApi* | [**delete_log_bigquery**](docs/LoggingBigqueryApi.md#delete_log_bigquery) | **DELETE** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Delete a BigQuery log endpoint
*LoggingBigqueryApi* | [**get_log_bigquery**](docs/LoggingBigqueryApi.md#get_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Get a BigQuery log endpoint
*LoggingBigqueryApi* | [**list_log_bigquery**](docs/LoggingBigqueryApi.md#list_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery | List BigQuery log endpoints
*LoggingBigqueryApi* | [**update_log_bigquery**](docs/LoggingBigqueryApi.md#update_log_bigquery) | **PUT** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Update a BigQuery log endpoint
*LoggingCloudfilesApi* | [**create_log_cloudfiles**](docs/LoggingCloudfilesApi.md#create_log_cloudfiles) | **POST** /service/{service_id}/version/{version_id}/logging/cloudfiles | Create a Cloud Files log endpoint
*LoggingCloudfilesApi* | [**delete_log_cloudfiles**](docs/LoggingCloudfilesApi.md#delete_log_cloudfiles) | **DELETE** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Delete the Cloud Files log endpoint
*LoggingCloudfilesApi* | [**get_log_cloudfiles**](docs/LoggingCloudfilesApi.md#get_log_cloudfiles) | **GET** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Get a Cloud Files log endpoint
*LoggingCloudfilesApi* | [**list_log_cloudfiles**](docs/LoggingCloudfilesApi.md#list_log_cloudfiles) | **GET** /service/{service_id}/version/{version_id}/logging/cloudfiles | List Cloud Files log endpoints
*LoggingCloudfilesApi* | [**update_log_cloudfiles**](docs/LoggingCloudfilesApi.md#update_log_cloudfiles) | **PUT** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Update the Cloud Files log endpoint
*LoggingDatadogApi* | [**create_log_datadog**](docs/LoggingDatadogApi.md#create_log_datadog) | **POST** /service/{service_id}/version/{version_id}/logging/datadog | Create a Datadog log endpoint
*LoggingDatadogApi* | [**delete_log_datadog**](docs/LoggingDatadogApi.md#delete_log_datadog) | **DELETE** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Delete a Datadog log endpoint
*LoggingDatadogApi* | [**get_log_datadog**](docs/LoggingDatadogApi.md#get_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Get a Datadog log endpoint
*LoggingDatadogApi* | [**list_log_datadog**](docs/LoggingDatadogApi.md#list_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog | List Datadog log endpoints
*LoggingDatadogApi* | [**update_log_datadog**](docs/LoggingDatadogApi.md#update_log_datadog) | **PUT** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Update a Datadog log endpoint
*LoggingDigitaloceanApi* | [**create_log_digocean**](docs/LoggingDigitaloceanApi.md#create_log_digocean) | **POST** /service/{service_id}/version/{version_id}/logging/digitalocean | Create a DigitalOcean Spaces log endpoint
*LoggingDigitaloceanApi* | [**delete_log_digocean**](docs/LoggingDigitaloceanApi.md#delete_log_digocean) | **DELETE** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Delete a DigitalOcean Spaces log endpoint
*LoggingDigitaloceanApi* | [**get_log_digocean**](docs/LoggingDigitaloceanApi.md#get_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Get a DigitalOcean Spaces log endpoint
*LoggingDigitaloceanApi* | [**list_log_digocean**](docs/LoggingDigitaloceanApi.md#list_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean | List DigitalOcean Spaces log endpoints
*LoggingDigitaloceanApi* | [**update_log_digocean**](docs/LoggingDigitaloceanApi.md#update_log_digocean) | **PUT** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Update a DigitalOcean Spaces log endpoint
*LoggingElasticsearchApi* | [**create_log_elasticsearch**](docs/LoggingElasticsearchApi.md#create_log_elasticsearch) | **POST** /service/{service_id}/version/{version_id}/logging/elasticsearch | Create an Elasticsearch log endpoint
*LoggingElasticsearchApi* | [**delete_log_elasticsearch**](docs/LoggingElasticsearchApi.md#delete_log_elasticsearch) | **DELETE** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Delete an Elasticsearch log endpoint
*LoggingElasticsearchApi* | [**get_log_elasticsearch**](docs/LoggingElasticsearchApi.md#get_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Get an Elasticsearch log endpoint
*LoggingElasticsearchApi* | [**list_log_elasticsearch**](docs/LoggingElasticsearchApi.md#list_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch | List Elasticsearch log endpoints
*LoggingElasticsearchApi* | [**update_log_elasticsearch**](docs/LoggingElasticsearchApi.md#update_log_elasticsearch) | **PUT** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Update an Elasticsearch log endpoint
*LoggingFtpApi* | [**create_log_ftp**](docs/LoggingFtpApi.md#create_log_ftp) | **POST** /service/{service_id}/version/{version_id}/logging/ftp | Create an FTP log endpoint
*LoggingFtpApi* | [**delete_log_ftp**](docs/LoggingFtpApi.md#delete_log_ftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Delete an FTP log endpoint
*LoggingFtpApi* | [**get_log_ftp**](docs/LoggingFtpApi.md#get_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Get an FTP log endpoint
*LoggingFtpApi* | [**list_log_ftp**](docs/LoggingFtpApi.md#list_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp | List FTP log endpoints
*LoggingFtpApi* | [**update_log_ftp**](docs/LoggingFtpApi.md#update_log_ftp) | **PUT** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Update an FTP log endpoint
*LoggingGcsApi* | [**create_log_gcs**](docs/LoggingGcsApi.md#create_log_gcs) | **POST** /service/{service_id}/version/{version_id}/logging/gcs | Create a GCS log endpoint
*LoggingGcsApi* | [**delete_log_gcs**](docs/LoggingGcsApi.md#delete_log_gcs) | **DELETE** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Delete a GCS log endpoint
*LoggingGcsApi* | [**get_log_gcs**](docs/LoggingGcsApi.md#get_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Get a GCS log endpoint
*LoggingGcsApi* | [**list_log_gcs**](docs/LoggingGcsApi.md#list_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs | List GCS log endpoints
*LoggingGcsApi* | [**update_log_gcs**](docs/LoggingGcsApi.md#update_log_gcs) | **PUT** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Update a GCS log endpoint
*LoggingHerokuApi* | [**create_log_heroku**](docs/LoggingHerokuApi.md#create_log_heroku) | **POST** /service/{service_id}/version/{version_id}/logging/heroku | Create a Heroku log endpoint
*LoggingHerokuApi* | [**delete_log_heroku**](docs/LoggingHerokuApi.md#delete_log_heroku) | **DELETE** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Delete the Heroku log endpoint
*LoggingHerokuApi* | [**get_log_heroku**](docs/LoggingHerokuApi.md#get_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Get a Heroku log endpoint
*LoggingHerokuApi* | [**list_log_heroku**](docs/LoggingHerokuApi.md#list_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku | List Heroku log endpoints
*LoggingHerokuApi* | [**update_log_heroku**](docs/LoggingHerokuApi.md#update_log_heroku) | **PUT** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Update the Heroku log endpoint
*LoggingHoneycombApi* | [**create_log_honeycomb**](docs/LoggingHoneycombApi.md#create_log_honeycomb) | **POST** /service/{service_id}/version/{version_id}/logging/honeycomb | Create a Honeycomb log endpoint
*LoggingHoneycombApi* | [**delete_log_honeycomb**](docs/LoggingHoneycombApi.md#delete_log_honeycomb) | **DELETE** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Delete the Honeycomb log endpoint
*LoggingHoneycombApi* | [**get_log_honeycomb**](docs/LoggingHoneycombApi.md#get_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Get a Honeycomb log endpoint
*LoggingHoneycombApi* | [**list_log_honeycomb**](docs/LoggingHoneycombApi.md#list_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb | List Honeycomb log endpoints
*LoggingHoneycombApi* | [**update_log_honeycomb**](docs/LoggingHoneycombApi.md#update_log_honeycomb) | **PUT** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Update a Honeycomb log endpoint
*LoggingHttpsApi* | [**create_log_https**](docs/LoggingHttpsApi.md#create_log_https) | **POST** /service/{service_id}/version/{version_id}/logging/https | Create an HTTPS log endpoint
*LoggingHttpsApi* | [**delete_log_https**](docs/LoggingHttpsApi.md#delete_log_https) | **DELETE** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Delete an HTTPS log endpoint
*LoggingHttpsApi* | [**get_log_https**](docs/LoggingHttpsApi.md#get_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Get an HTTPS log endpoint
*LoggingHttpsApi* | [**list_log_https**](docs/LoggingHttpsApi.md#list_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https | List HTTPS log endpoints
*LoggingHttpsApi* | [**update_log_https**](docs/LoggingHttpsApi.md#update_log_https) | **PUT** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Update an HTTPS log endpoint
*LoggingKafkaApi* | [**create_log_kafka**](docs/LoggingKafkaApi.md#create_log_kafka) | **POST** /service/{service_id}/version/{version_id}/logging/kafka | Create a Kafka log endpoint
*LoggingKafkaApi* | [**delete_log_kafka**](docs/LoggingKafkaApi.md#delete_log_kafka) | **DELETE** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Delete the Kafka log endpoint
*LoggingKafkaApi* | [**get_log_kafka**](docs/LoggingKafkaApi.md#get_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Get a Kafka log endpoint
*LoggingKafkaApi* | [**list_log_kafka**](docs/LoggingKafkaApi.md#list_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka | List Kafka log endpoints
*LoggingKinesisApi* | [**create_log_kinesis**](docs/LoggingKinesisApi.md#create_log_kinesis) | **POST** /service/{service_id}/version/{version_id}/logging/kinesis | Create  an Amazon Kinesis log endpoint
*LoggingKinesisApi* | [**delete_log_kinesis**](docs/LoggingKinesisApi.md#delete_log_kinesis) | **DELETE** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Delete the Amazon Kinesis log endpoint
*LoggingKinesisApi* | [**get_log_kinesis**](docs/LoggingKinesisApi.md#get_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Get an Amazon Kinesis log endpoint
*LoggingKinesisApi* | [**list_log_kinesis**](docs/LoggingKinesisApi.md#list_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis | List Amazon Kinesis log endpoints
*LoggingLogentriesApi* | [**create_log_logentries**](docs/LoggingLogentriesApi.md#create_log_logentries) | **POST** /service/{service_id}/version/{version_id}/logging/logentries | Create a Logentries log endpoint
*LoggingLogentriesApi* | [**delete_log_logentries**](docs/LoggingLogentriesApi.md#delete_log_logentries) | **DELETE** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Delete a Logentries log endpoint
*LoggingLogentriesApi* | [**get_log_logentries**](docs/LoggingLogentriesApi.md#get_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Get a Logentries log endpoint
*LoggingLogentriesApi* | [**list_log_logentries**](docs/LoggingLogentriesApi.md#list_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries | List Logentries log endpoints
*LoggingLogentriesApi* | [**update_log_logentries**](docs/LoggingLogentriesApi.md#update_log_logentries) | **PUT** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Update a Logentries log endpoint
*LoggingLogglyApi* | [**create_log_loggly**](docs/LoggingLogglyApi.md#create_log_loggly) | **POST** /service/{service_id}/version/{version_id}/logging/loggly | Create a Loggly log endpoint
*LoggingLogglyApi* | [**delete_log_loggly**](docs/LoggingLogglyApi.md#delete_log_loggly) | **DELETE** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Delete a Loggly log endpoint
*LoggingLogglyApi* | [**get_log_loggly**](docs/LoggingLogglyApi.md#get_log_loggly) | **GET** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Get a Loggly log endpoint
*LoggingLogglyApi* | [**list_log_loggly**](docs/LoggingLogglyApi.md#list_log_loggly) | **GET** /service/{service_id}/version/{version_id}/logging/loggly | List Loggly log endpoints
*LoggingLogglyApi* | [**update_log_loggly**](docs/LoggingLogglyApi.md#update_log_loggly) | **PUT** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Update a Loggly log endpoint
*LoggingLogshuttleApi* | [**create_log_logshuttle**](docs/LoggingLogshuttleApi.md#create_log_logshuttle) | **POST** /service/{service_id}/version/{version_id}/logging/logshuttle | Create a Log Shuttle log endpoint
*LoggingLogshuttleApi* | [**delete_log_logshuttle**](docs/LoggingLogshuttleApi.md#delete_log_logshuttle) | **DELETE** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Delete a Log Shuttle log endpoint
*LoggingLogshuttleApi* | [**get_log_logshuttle**](docs/LoggingLogshuttleApi.md#get_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Get a Log Shuttle log endpoint
*LoggingLogshuttleApi* | [**list_log_logshuttle**](docs/LoggingLogshuttleApi.md#list_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle | List Log Shuttle log endpoints
*LoggingLogshuttleApi* | [**update_log_logshuttle**](docs/LoggingLogshuttleApi.md#update_log_logshuttle) | **PUT** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Update a Log Shuttle log endpoint
*LoggingNewrelicApi* | [**create_log_newrelic**](docs/LoggingNewrelicApi.md#create_log_newrelic) | **POST** /service/{service_id}/version/{version_id}/logging/newrelic | Create a New Relic log endpoint
*LoggingNewrelicApi* | [**delete_log_newrelic**](docs/LoggingNewrelicApi.md#delete_log_newrelic) | **DELETE** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Delete a New Relic log endpoint
*LoggingNewrelicApi* | [**get_log_newrelic**](docs/LoggingNewrelicApi.md#get_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Get a New Relic log endpoint
*LoggingNewrelicApi* | [**list_log_newrelic**](docs/LoggingNewrelicApi.md#list_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic | List New Relic log endpoints
*LoggingNewrelicApi* | [**update_log_newrelic**](docs/LoggingNewrelicApi.md#update_log_newrelic) | **PUT** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Update a New Relic log endpoint
*LoggingOpenstackApi* | [**create_log_openstack**](docs/LoggingOpenstackApi.md#create_log_openstack) | **POST** /service/{service_id}/version/{version_id}/logging/openstack | Create an OpenStack log endpoint
*LoggingOpenstackApi* | [**delete_log_openstack**](docs/LoggingOpenstackApi.md#delete_log_openstack) | **DELETE** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Delete an OpenStack log endpoint
*LoggingOpenstackApi* | [**get_log_openstack**](docs/LoggingOpenstackApi.md#get_log_openstack) | **GET** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Get an OpenStack log endpoint
*LoggingOpenstackApi* | [**list_log_openstack**](docs/LoggingOpenstackApi.md#list_log_openstack) | **GET** /service/{service_id}/version/{version_id}/logging/openstack | List OpenStack log endpoints
*LoggingOpenstackApi* | [**update_log_openstack**](docs/LoggingOpenstackApi.md#update_log_openstack) | **PUT** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Update an OpenStack log endpoint
*LoggingPapertrailApi* | [**create_log_papertrail**](docs/LoggingPapertrailApi.md#create_log_papertrail) | **POST** /service/{service_id}/version/{version_id}/logging/papertrail | Create a Papertrail log endpoint
*LoggingPapertrailApi* | [**delete_log_papertrail**](docs/LoggingPapertrailApi.md#delete_log_papertrail) | **DELETE** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Delete a Papertrail log endpoint
*LoggingPapertrailApi* | [**get_log_papertrail**](docs/LoggingPapertrailApi.md#get_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Get a Papertrail log endpoint
*LoggingPapertrailApi* | [**list_log_papertrail**](docs/LoggingPapertrailApi.md#list_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail | List Papertrail log endpoints
*LoggingPapertrailApi* | [**update_log_papertrail**](docs/LoggingPapertrailApi.md#update_log_papertrail) | **PUT** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Update a Papertrail log endpoint
*LoggingPubsubApi* | [**create_log_gcp_pubsub**](docs/LoggingPubsubApi.md#create_log_gcp_pubsub) | **POST** /service/{service_id}/version/{version_id}/logging/pubsub | Create a GCP Cloud Pub/Sub log endpoint
*LoggingPubsubApi* | [**delete_log_gcp_pubsub**](docs/LoggingPubsubApi.md#delete_log_gcp_pubsub) | **DELETE** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Delete a GCP Cloud Pub/Sub log endpoint
*LoggingPubsubApi* | [**get_log_gcp_pubsub**](docs/LoggingPubsubApi.md#get_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Get a GCP Cloud Pub/Sub log endpoint
*LoggingPubsubApi* | [**list_log_gcp_pubsub**](docs/LoggingPubsubApi.md#list_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub | List GCP Cloud Pub/Sub log endpoints
*LoggingPubsubApi* | [**update_log_gcp_pubsub**](docs/LoggingPubsubApi.md#update_log_gcp_pubsub) | **PUT** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Update a GCP Cloud Pub/Sub log endpoint
*LoggingS3Api* | [**create_log_aws_s3**](docs/LoggingS3Api.md#create_log_aws_s3) | **POST** /service/{service_id}/version/{version_id}/logging/s3 | Create an AWS S3 log endpoint
*LoggingS3Api* | [**delete_log_aws_s3**](docs/LoggingS3Api.md#delete_log_aws_s3) | **DELETE** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Delete an AWS S3 log endpoint
*LoggingS3Api* | [**get_log_aws_s3**](docs/LoggingS3Api.md#get_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Get an AWS S3 log endpoint
*LoggingS3Api* | [**list_log_aws_s3**](docs/LoggingS3Api.md#list_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3 | List AWS S3 log endpoints
*LoggingS3Api* | [**update_log_aws_s3**](docs/LoggingS3Api.md#update_log_aws_s3) | **PUT** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Update an AWS S3 log endpoint
*LoggingScalyrApi* | [**create_log_scalyr**](docs/LoggingScalyrApi.md#create_log_scalyr) | **POST** /service/{service_id}/version/{version_id}/logging/scalyr | Create a Scalyr log endpoint
*LoggingScalyrApi* | [**delete_log_scalyr**](docs/LoggingScalyrApi.md#delete_log_scalyr) | **DELETE** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Delete the Scalyr log endpoint
*LoggingScalyrApi* | [**get_log_scalyr**](docs/LoggingScalyrApi.md#get_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Get a Scalyr log endpoint
*LoggingScalyrApi* | [**list_log_scalyr**](docs/LoggingScalyrApi.md#list_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr | List Scalyr log endpoints
*LoggingScalyrApi* | [**update_log_scalyr**](docs/LoggingScalyrApi.md#update_log_scalyr) | **PUT** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Update the Scalyr log endpoint
*LoggingSftpApi* | [**create_log_sftp**](docs/LoggingSftpApi.md#create_log_sftp) | **POST** /service/{service_id}/version/{version_id}/logging/sftp | Create an SFTP log endpoint
*LoggingSftpApi* | [**delete_log_sftp**](docs/LoggingSftpApi.md#delete_log_sftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Delete an SFTP log endpoint
*LoggingSftpApi* | [**get_log_sftp**](docs/LoggingSftpApi.md#get_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Get an SFTP log endpoint
*LoggingSftpApi* | [**list_log_sftp**](docs/LoggingSftpApi.md#list_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp | List SFTP log endpoints
*LoggingSftpApi* | [**update_log_sftp**](docs/LoggingSftpApi.md#update_log_sftp) | **PUT** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Update an SFTP log endpoint
*LoggingSplunkApi* | [**create_log_splunk**](docs/LoggingSplunkApi.md#create_log_splunk) | **POST** /service/{service_id}/version/{version_id}/logging/splunk | Create a Splunk log endpoint
*LoggingSplunkApi* | [**delete_log_splunk**](docs/LoggingSplunkApi.md#delete_log_splunk) | **DELETE** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Delete a Splunk log endpoint
*LoggingSplunkApi* | [**get_log_splunk**](docs/LoggingSplunkApi.md#get_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Get a Splunk log endpoint
*LoggingSplunkApi* | [**list_log_splunk**](docs/LoggingSplunkApi.md#list_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk | List Splunk log endpoints
*LoggingSplunkApi* | [**update_log_splunk**](docs/LoggingSplunkApi.md#update_log_splunk) | **PUT** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Update a Splunk log endpoint
*LoggingSumologicApi* | [**create_log_sumologic**](docs/LoggingSumologicApi.md#create_log_sumologic) | **POST** /service/{service_id}/version/{version_id}/logging/sumologic | Create a Sumologic log endpoint
*LoggingSumologicApi* | [**delete_log_sumologic**](docs/LoggingSumologicApi.md#delete_log_sumologic) | **DELETE** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Delete a Sumologic log endpoint
*LoggingSumologicApi* | [**get_log_sumologic**](docs/LoggingSumologicApi.md#get_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Get a Sumologic log endpoint
*LoggingSumologicApi* | [**list_log_sumologic**](docs/LoggingSumologicApi.md#list_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic | List Sumologic log endpoints
*LoggingSumologicApi* | [**update_log_sumologic**](docs/LoggingSumologicApi.md#update_log_sumologic) | **PUT** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Update a Sumologic log endpoint
*LoggingSyslogApi* | [**create_log_syslog**](docs/LoggingSyslogApi.md#create_log_syslog) | **POST** /service/{service_id}/version/{version_id}/logging/syslog | Create a syslog log endpoint
*LoggingSyslogApi* | [**delete_log_syslog**](docs/LoggingSyslogApi.md#delete_log_syslog) | **DELETE** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Delete a syslog log endpoint
*LoggingSyslogApi* | [**get_log_syslog**](docs/LoggingSyslogApi.md#get_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Get a syslog log endpoint
*LoggingSyslogApi* | [**list_log_syslog**](docs/LoggingSyslogApi.md#list_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog | List Syslog log endpoints
*LoggingSyslogApi* | [**update_log_syslog**](docs/LoggingSyslogApi.md#update_log_syslog) | **PUT** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Update a syslog log endpoint
*PackageApi* | [**get_package**](docs/PackageApi.md#get_package) | **GET** /service/{service_id}/version/{version_id}/package | Get details of the service&#39;s Compute@Edge package.
*PackageApi* | [**put_package**](docs/PackageApi.md#put_package) | **PUT** /service/{service_id}/version/{version_id}/package | Upload a Compute@Edge package.
*PoolApi* | [**create_server_pool**](docs/PoolApi.md#create_server_pool) | **POST** /service/{service_id}/version/{version_id}/pool | Create a server pool
*PoolApi* | [**delete_server_pool**](docs/PoolApi.md#delete_server_pool) | **DELETE** /service/{service_id}/version/{version_id}/pool/{pool_name} | Delete a server pool
*PoolApi* | [**get_server_pool**](docs/PoolApi.md#get_server_pool) | **GET** /service/{service_id}/version/{version_id}/pool/{pool_name} | Get a server pool
*PoolApi* | [**list_server_pools**](docs/PoolApi.md#list_server_pools) | **GET** /service/{service_id}/version/{version_id}/pool | List server pools
*PoolApi* | [**update_server_pool**](docs/PoolApi.md#update_server_pool) | **PUT** /service/{service_id}/version/{version_id}/pool/{pool_name} | Update a server pool
*PopApi* | [**list_pops**](docs/PopApi.md#list_pops) | **GET** /datacenters | List Fastly POPs
*PublicIpListApi* | [**list_fastly_ips**](docs/PublicIpListApi.md#list_fastly_ips) | **GET** /public-ip-list | List Fastly&#39;s public IPs
*PurgeApi* | [**bulk_purge_tag**](docs/PurgeApi.md#bulk_purge_tag) | **POST** /service/{service_id}/purge | Purge multiple surrogate key tags
*PurgeApi* | [**purge_all**](docs/PurgeApi.md#purge_all) | **POST** /service/{service_id}/purge_all | Purge everything from a service
*PurgeApi* | [**purge_single_url**](docs/PurgeApi.md#purge_single_url) | **GET** /* | Purge a URL
*PurgeApi* | [**purge_tag**](docs/PurgeApi.md#purge_tag) | **POST** /service/{service_id}/purge/{surrogate_key} | Purge by surrogate key tag
*RateLimiterApi* | [**create_rate_limiter**](docs/RateLimiterApi.md#create_rate_limiter) | **POST** /service/{service_id}/version/{version_id}/rate-limiters | Create a rate limiter
*RateLimiterApi* | [**delete_rate_limiter**](docs/RateLimiterApi.md#delete_rate_limiter) | **DELETE** /rate-limiters/{rate_limiter_id} | Delete a rate limiter
*RateLimiterApi* | [**get_rate_limiter**](docs/RateLimiterApi.md#get_rate_limiter) | **GET** /rate-limiters/{rate_limiter_id} | Get a rate limiter
*RateLimiterApi* | [**list_rate_limiters**](docs/RateLimiterApi.md#list_rate_limiters) | **GET** /service/{service_id}/version/{version_id}/rate-limiters | List rate limiters
*RateLimiterApi* | [**update_rate_limiter**](docs/RateLimiterApi.md#update_rate_limiter) | **PUT** /rate-limiters/{rate_limiter_id} | Update a rate limiter
*RealtimeApi* | [**get_stats_last120_seconds**](docs/RealtimeApi.md#get_stats_last120_seconds) | **GET** /v1/channel/{service_id}/ts/h | Get real-time data for the last 120 seconds
*RealtimeApi* | [**get_stats_last120_seconds_limit_entries**](docs/RealtimeApi.md#get_stats_last120_seconds_limit_entries) | **GET** /v1/channel/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time data entries
*RealtimeApi* | [**get_stats_last_second**](docs/RealtimeApi.md#get_stats_last_second) | **GET** /v1/channel/{service_id}/ts/{timestamp_in_seconds} | Get real-time data from specified time
*RequestSettingsApi* | [**delete_request_settings**](docs/RequestSettingsApi.md#delete_request_settings) | **DELETE** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Delete a Request Settings object
*RequestSettingsApi* | [**get_request_settings**](docs/RequestSettingsApi.md#get_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Get a Request Settings object
*RequestSettingsApi* | [**list_request_settings**](docs/RequestSettingsApi.md#list_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings | List Request Settings objects
*RequestSettingsApi* | [**update_request_settings**](docs/RequestSettingsApi.md#update_request_settings) | **PUT** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Update a Request Settings object
*ResourceApi* | [**create_resource**](docs/ResourceApi.md#create_resource) | **POST** /service/{service_id}/version/{version_id}/resource | Create a resource
*ResourceApi* | [**delete_resource**](docs/ResourceApi.md#delete_resource) | **DELETE** /service/{service_id}/version/{version_id}/resource/{resource_id} | Delete a resource
*ResourceApi* | [**get_resource**](docs/ResourceApi.md#get_resource) | **GET** /service/{service_id}/version/{version_id}/resource/{resource_id} | Display a resource
*ResourceApi* | [**list_resources**](docs/ResourceApi.md#list_resources) | **GET** /service/{service_id}/version/{version_id}/resource | List resources
*ResourceApi* | [**update_resource**](docs/ResourceApi.md#update_resource) | **PUT** /service/{service_id}/version/{version_id}/resource/{resource_id} | Update a resource
*ResponseObjectApi* | [**delete_response_object**](docs/ResponseObjectApi.md#delete_response_object) | **DELETE** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Delete a Response Object
*ResponseObjectApi* | [**get_response_object**](docs/ResponseObjectApi.md#get_response_object) | **GET** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Get a Response object
*ResponseObjectApi* | [**list_response_objects**](docs/ResponseObjectApi.md#list_response_objects) | **GET** /service/{service_id}/version/{version_id}/response_object | List Response objects
*ServerApi* | [**create_pool_server**](docs/ServerApi.md#create_pool_server) | **POST** /service/{service_id}/pool/{pool_id}/server | Add a server to a pool
*ServerApi* | [**delete_pool_server**](docs/ServerApi.md#delete_pool_server) | **DELETE** /service/{service_id}/pool/{pool_id}/server/{server_id} | Delete a server from a pool
*ServerApi* | [**get_pool_server**](docs/ServerApi.md#get_pool_server) | **GET** /service/{service_id}/pool/{pool_id}/server/{server_id} | Get a pool server
*ServerApi* | [**list_pool_servers**](docs/ServerApi.md#list_pool_servers) | **GET** /service/{service_id}/pool/{pool_id}/servers | List servers in a pool
*ServerApi* | [**update_pool_server**](docs/ServerApi.md#update_pool_server) | **PUT** /service/{service_id}/pool/{pool_id}/server/{server_id} | Update a server
*ServiceApi* | [**create_service**](docs/ServiceApi.md#create_service) | **POST** /service | Create a service
*ServiceApi* | [**delete_service**](docs/ServiceApi.md#delete_service) | **DELETE** /service/{service_id} | Delete a service
*ServiceApi* | [**get_service**](docs/ServiceApi.md#get_service) | **GET** /service/{service_id} | Get a service
*ServiceApi* | [**get_service_detail**](docs/ServiceApi.md#get_service_detail) | **GET** /service/{service_id}/details | Get service details
*ServiceApi* | [**list_service_domains**](docs/ServiceApi.md#list_service_domains) | **GET** /service/{service_id}/domain | List the domains within a service
*ServiceApi* | [**list_services**](docs/ServiceApi.md#list_services) | **GET** /service | List services
*ServiceApi* | [**search_service**](docs/ServiceApi.md#search_service) | **GET** /service/search | Search for a service by name
*ServiceApi* | [**update_service**](docs/ServiceApi.md#update_service) | **PUT** /service/{service_id} | Update a service
*ServiceAuthorizationsApi* | [**create_service_authorization**](docs/ServiceAuthorizationsApi.md#create_service_authorization) | **POST** /service-authorizations | Create service authorization
*ServiceAuthorizationsApi* | [**delete_service_authorization**](docs/ServiceAuthorizationsApi.md#delete_service_authorization) | **DELETE** /service-authorizations/{service_authorization_id} | Delete service authorization
*ServiceAuthorizationsApi* | [**list_service_authorization**](docs/ServiceAuthorizationsApi.md#list_service_authorization) | **GET** /service-authorizations | List service authorizations
*ServiceAuthorizationsApi* | [**show_service_authorization**](docs/ServiceAuthorizationsApi.md#show_service_authorization) | **GET** /service-authorizations/{service_authorization_id} | Show service authorization
*ServiceAuthorizationsApi* | [**update_service_authorization**](docs/ServiceAuthorizationsApi.md#update_service_authorization) | **PATCH** /service-authorizations/{service_authorization_id} | Update service authorization
*SettingsApi* | [**get_service_settings**](docs/SettingsApi.md#get_service_settings) | **GET** /service/{service_id}/version/{version_id}/settings | Get service settings
*SnippetApi* | [**create_snippet**](docs/SnippetApi.md#create_snippet) | **POST** /service/{service_id}/version/{version_id}/snippet | Create a snippet
*SnippetApi* | [**delete_snippet**](docs/SnippetApi.md#delete_snippet) | **DELETE** /service/{service_id}/version/{version_id}/snippet/{snippet_name} | Delete a snippet
*SnippetApi* | [**get_snippet**](docs/SnippetApi.md#get_snippet) | **GET** /service/{service_id}/version/{version_id}/snippet/{snippet_name} | Get a versioned snippet
*SnippetApi* | [**get_snippet_dynamic**](docs/SnippetApi.md#get_snippet_dynamic) | **GET** /service/{service_id}/snippet/{snippet_id} | Get a dynamic snippet
*SnippetApi* | [**list_snippets**](docs/SnippetApi.md#list_snippets) | **GET** /service/{service_id}/version/{version_id}/snippet | List snippets
*SnippetApi* | [**update_snippet_dynamic**](docs/SnippetApi.md#update_snippet_dynamic) | **PUT** /service/{service_id}/snippet/{snippet_id} | Update a dynamic snippet
*StarApi* | [**create_service_star**](docs/StarApi.md#create_service_star) | **POST** /stars | Create a star
*StarApi* | [**delete_service_star**](docs/StarApi.md#delete_service_star) | **DELETE** /stars/{star_id} | Delete a star
*StarApi* | [**get_service_star**](docs/StarApi.md#get_service_star) | **GET** /stars/{star_id} | Get a star
*StarApi* | [**list_service_stars**](docs/StarApi.md#list_service_stars) | **GET** /stars | List stars
*StatsApi* | [**get_service_stats**](docs/StatsApi.md#get_service_stats) | **GET** /service/{service_id}/stats/summary | Get stats for a service
*TlsActivationsApi* | [**create_tls_activation**](docs/TlsActivationsApi.md#create_tls_activation) | **POST** /tls/activations | Enable TLS for a domain using a custom certificate
*TlsActivationsApi* | [**delete_tls_activation**](docs/TlsActivationsApi.md#delete_tls_activation) | **DELETE** /tls/activations/{tls_activation_id} | Disable TLS on a domain
*TlsActivationsApi* | [**get_tls_activation**](docs/TlsActivationsApi.md#get_tls_activation) | **GET** /tls/activations/{tls_activation_id} | Get a TLS activation
*TlsActivationsApi* | [**list_tls_activations**](docs/TlsActivationsApi.md#list_tls_activations) | **GET** /tls/activations | List TLS activations
*TlsActivationsApi* | [**update_tls_activation**](docs/TlsActivationsApi.md#update_tls_activation) | **PATCH** /tls/activations/{tls_activation_id} | Update a certificate
*TlsBulkCertificatesApi* | [**delete_bulk_tls_cert**](docs/TlsBulkCertificatesApi.md#delete_bulk_tls_cert) | **DELETE** /tls/bulk/certificates/{certificate_id} | Delete a certificate
*TlsBulkCertificatesApi* | [**get_tls_bulk_cert**](docs/TlsBulkCertificatesApi.md#get_tls_bulk_cert) | **GET** /tls/bulk/certificates/{certificate_id} | Get a certificate
*TlsBulkCertificatesApi* | [**list_tls_bulk_certs**](docs/TlsBulkCertificatesApi.md#list_tls_bulk_certs) | **GET** /tls/bulk/certificates | List certificates
*TlsBulkCertificatesApi* | [**update_bulk_tls_cert**](docs/TlsBulkCertificatesApi.md#update_bulk_tls_cert) | **PATCH** /tls/bulk/certificates/{certificate_id} | Update a certificate
*TlsBulkCertificatesApi* | [**upload_tls_bulk_cert**](docs/TlsBulkCertificatesApi.md#upload_tls_bulk_cert) | **POST** /tls/bulk/certificates | Upload a certificate
*TlsCertificatesApi* | [**create_tls_cert**](docs/TlsCertificatesApi.md#create_tls_cert) | **POST** /tls/certificates | Create a TLS certificate
*TlsCertificatesApi* | [**delete_tls_cert**](docs/TlsCertificatesApi.md#delete_tls_cert) | **DELETE** /tls/certificates/{tls_certificate_id} | Delete a TLS certificate
*TlsCertificatesApi* | [**get_tls_cert**](docs/TlsCertificatesApi.md#get_tls_cert) | **GET** /tls/certificates/{tls_certificate_id} | Get a TLS certificate
*TlsCertificatesApi* | [**list_tls_certs**](docs/TlsCertificatesApi.md#list_tls_certs) | **GET** /tls/certificates | List TLS certificates
*TlsCertificatesApi* | [**update_tls_cert**](docs/TlsCertificatesApi.md#update_tls_cert) | **PATCH** /tls/certificates/{tls_certificate_id} | Update a TLS certificate
*TlsConfigurationsApi* | [**get_tls_config**](docs/TlsConfigurationsApi.md#get_tls_config) | **GET** /tls/configurations/{tls_configuration_id} | Get a TLS configuration
*TlsConfigurationsApi* | [**list_tls_configs**](docs/TlsConfigurationsApi.md#list_tls_configs) | **GET** /tls/configurations | List TLS configurations
*TlsConfigurationsApi* | [**update_tls_config**](docs/TlsConfigurationsApi.md#update_tls_config) | **PATCH** /tls/configurations/{tls_configuration_id} | Update a TLS configuration
*TlsDomainsApi* | [**list_tls_domains**](docs/TlsDomainsApi.md#list_tls_domains) | **GET** /tls/domains | List TLS domains
*TlsPrivateKeysApi* | [**create_tls_key**](docs/TlsPrivateKeysApi.md#create_tls_key) | **POST** /tls/private_keys | Create a TLS private key
*TlsPrivateKeysApi* | [**delete_tls_key**](docs/TlsPrivateKeysApi.md#delete_tls_key) | **DELETE** /tls/private_keys/{tls_private_key_id} | Delete a TLS private key
*TlsPrivateKeysApi* | [**get_tls_key**](docs/TlsPrivateKeysApi.md#get_tls_key) | **GET** /tls/private_keys/{tls_private_key_id} | Get a TLS private key
*TlsPrivateKeysApi* | [**list_tls_keys**](docs/TlsPrivateKeysApi.md#list_tls_keys) | **GET** /tls/private_keys | List TLS private keys
*TlsSubscriptionsApi* | [**create_globalsign_email_challenge**](docs/TlsSubscriptionsApi.md#create_globalsign_email_challenge) | **POST** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges | Creates a GlobalSign email challenge.
*TlsSubscriptionsApi* | [**create_tls_sub**](docs/TlsSubscriptionsApi.md#create_tls_sub) | **POST** /tls/subscriptions | Create a TLS subscription
*TlsSubscriptionsApi* | [**delete_globalsign_email_challenge**](docs/TlsSubscriptionsApi.md#delete_globalsign_email_challenge) | **DELETE** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges/{globalsign_email_challenge_id} | Delete a GlobalSign email challenge
*TlsSubscriptionsApi* | [**delete_tls_sub**](docs/TlsSubscriptionsApi.md#delete_tls_sub) | **DELETE** /tls/subscriptions/{tls_subscription_id} | Delete a TLS subscription
*TlsSubscriptionsApi* | [**get_tls_sub**](docs/TlsSubscriptionsApi.md#get_tls_sub) | **GET** /tls/subscriptions/{tls_subscription_id} | Get a TLS subscription
*TlsSubscriptionsApi* | [**list_tls_subs**](docs/TlsSubscriptionsApi.md#list_tls_subs) | **GET** /tls/subscriptions | List TLS subscriptions
*TlsSubscriptionsApi* | [**patch_tls_sub**](docs/TlsSubscriptionsApi.md#patch_tls_sub) | **PATCH** /tls/subscriptions/{tls_subscription_id} | Update a TLS subscription
*TokensApi* | [**get_token_current**](docs/TokensApi.md#get_token_current) | **GET** /tokens/self | Get the current token
*TokensApi* | [**list_tokens_customer**](docs/TokensApi.md#list_tokens_customer) | **GET** /customer/{customer_id}/tokens | List tokens for a customer
*TokensApi* | [**list_tokens_user**](docs/TokensApi.md#list_tokens_user) | **GET** /tokens | List tokens for the authenticated user
*TokensApi* | [**revoke_token**](docs/TokensApi.md#revoke_token) | **DELETE** /tokens/{token_id} | Revoke a token
*TokensApi* | [**revoke_token_current**](docs/TokensApi.md#revoke_token_current) | **DELETE** /tokens/self | Revoke the current token
*UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /user | Create a user
*UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /user/{user_id} | Delete a user
*UserApi* | [**get_current_user**](docs/UserApi.md#get_current_user) | **GET** /current_user | Get the current user
*UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /user/{user_id} | Get a user
*UserApi* | [**request_password_reset**](docs/UserApi.md#request_password_reset) | **POST** /user/{user_login}/password/request_reset | Request a password reset
*UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /user/{user_id} | Update a user
*UserApi* | [**update_user_password**](docs/UserApi.md#update_user_password) | **POST** /current_user/password | Update the user&#39;s password
*VclApi* | [**create_custom_vcl**](docs/VclApi.md#create_custom_vcl) | **POST** /service/{service_id}/version/{version_id}/vcl | Create a custom VCL file
*VclApi* | [**delete_custom_vcl**](docs/VclApi.md#delete_custom_vcl) | **DELETE** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Delete a custom VCL file
*VclApi* | [**get_custom_vcl**](docs/VclApi.md#get_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Get a custom VCL file
*VclApi* | [**get_custom_vcl_boilerplate**](docs/VclApi.md#get_custom_vcl_boilerplate) | **GET** /service/{service_id}/version/{version_id}/boilerplate | Get boilerplate VCL
*VclApi* | [**get_custom_vcl_generated**](docs/VclApi.md#get_custom_vcl_generated) | **GET** /service/{service_id}/version/{version_id}/generated_vcl | Get the generated VCL for a service
*VclApi* | [**get_custom_vcl_generated_highlighted**](docs/VclApi.md#get_custom_vcl_generated_highlighted) | **GET** /service/{service_id}/version/{version_id}/generated_vcl/content | Get the generated VCL with syntax highlighting
*VclApi* | [**get_custom_vcl_highlighted**](docs/VclApi.md#get_custom_vcl_highlighted) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/content | Get a custom VCL file with syntax highlighting
*VclApi* | [**get_custom_vcl_raw**](docs/VclApi.md#get_custom_vcl_raw) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/download | Download a custom VCL file
*VclApi* | [**list_custom_vcl**](docs/VclApi.md#list_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl | List custom VCL files
*VclApi* | [**set_custom_vcl_main**](docs/VclApi.md#set_custom_vcl_main) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/main | Set a custom VCL file as main
*VclApi* | [**update_custom_vcl**](docs/VclApi.md#update_custom_vcl) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Update a custom VCL file
*VclDiffApi* | [**vcl_diff_service_versions**](docs/VclDiffApi.md#vcl_diff_service_versions) | **GET** /service/{service_id}/vcl/diff/from/{from_version_id}/to/{to_version_id} | Get a comparison of the VCL changes between two service versions
*VersionApi* | [**activate_service_version**](docs/VersionApi.md#activate_service_version) | **PUT** /service/{service_id}/version/{version_id}/activate | Activate a service version
*VersionApi* | [**clone_service_version**](docs/VersionApi.md#clone_service_version) | **PUT** /service/{service_id}/version/{version_id}/clone | Clone a service version
*VersionApi* | [**create_service_version**](docs/VersionApi.md#create_service_version) | **POST** /service/{service_id}/version | Create a service version
*VersionApi* | [**deactivate_service_version**](docs/VersionApi.md#deactivate_service_version) | **PUT** /service/{service_id}/version/{version_id}/deactivate | Deactivate a service version
*VersionApi* | [**get_service_version**](docs/VersionApi.md#get_service_version) | **GET** /service/{service_id}/version/{version_id} | Get a version of a service
*VersionApi* | [**list_service_versions**](docs/VersionApi.md#list_service_versions) | **GET** /service/{service_id}/version | List versions of a service
*VersionApi* | [**lock_service_version**](docs/VersionApi.md#lock_service_version) | **PUT** /service/{service_id}/version/{version_id}/lock | Lock a service version
*VersionApi* | [**update_service_version**](docs/VersionApi.md#update_service_version) | **PUT** /service/{service_id}/version/{version_id} | Update a service version
*VersionApi* | [**validate_service_version**](docs/VersionApi.md#validate_service_version) | **GET** /service/{service_id}/version/{version_id}/validate | Validate a service version
*WafActiveRulesApi* | [**bulk_update_waf_active_rules**](docs/WafActiveRulesApi.md#bulk_update_waf_active_rules) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/bulk | Update multiple active rules
*WafActiveRulesApi* | [**create_waf_active_rule**](docs/WafActiveRulesApi.md#create_waf_active_rule) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | Add a rule to a WAF as an active rule
*WafActiveRulesApi* | [**create_waf_active_rules_tag**](docs/WafActiveRulesApi.md#create_waf_active_rules_tag) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/tags/{waf_tag_name}/active-rules | Create active rules by tag
*WafActiveRulesApi* | [**delete_waf_active_rule**](docs/WafActiveRulesApi.md#delete_waf_active_rule) | **DELETE** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Delete an active rule
*WafActiveRulesApi* | [**get_waf_active_rule**](docs/WafActiveRulesApi.md#get_waf_active_rule) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Get an active WAF rule object
*WafActiveRulesApi* | [**list_waf_active_rules**](docs/WafActiveRulesApi.md#list_waf_active_rules) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | List active rules on a WAF
*WafActiveRulesApi* | [**update_waf_active_rule**](docs/WafActiveRulesApi.md#update_waf_active_rule) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Update an active rule
*WafExclusionsApi* | [**create_waf_rule_exclusion**](docs/WafExclusionsApi.md#create_waf_rule_exclusion) | **POST** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | Create a WAF rule exclusion
*WafExclusionsApi* | [**delete_waf_rule_exclusion**](docs/WafExclusionsApi.md#delete_waf_rule_exclusion) | **DELETE** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Delete a WAF rule exclusion
*WafExclusionsApi* | [**get_waf_rule_exclusion**](docs/WafExclusionsApi.md#get_waf_rule_exclusion) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Get a WAF rule exclusion
*WafExclusionsApi* | [**list_waf_rule_exclusions**](docs/WafExclusionsApi.md#list_waf_rule_exclusions) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | List WAF rule exclusions
*WafExclusionsApi* | [**update_waf_rule_exclusion**](docs/WafExclusionsApi.md#update_waf_rule_exclusion) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Update a WAF rule exclusion
*WafFirewallVersionsApi* | [**clone_waf_firewall_version**](docs/WafFirewallVersionsApi.md#clone_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/clone | Clone a firewall version
*WafFirewallVersionsApi* | [**create_waf_firewall_version**](docs/WafFirewallVersionsApi.md#create_waf_firewall_version) | **POST** /waf/firewalls/{firewall_id}/versions | Create a firewall version
*WafFirewallVersionsApi* | [**deploy_activate_waf_firewall_version**](docs/WafFirewallVersionsApi.md#deploy_activate_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/activate | Deploy or activate a firewall version
*WafFirewallVersionsApi* | [**get_waf_firewall_version**](docs/WafFirewallVersionsApi.md#get_waf_firewall_version) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Get a firewall version
*WafFirewallVersionsApi* | [**list_waf_firewall_versions**](docs/WafFirewallVersionsApi.md#list_waf_firewall_versions) | **GET** /waf/firewalls/{firewall_id}/versions | List firewall versions
*WafFirewallVersionsApi* | [**update_waf_firewall_version**](docs/WafFirewallVersionsApi.md#update_waf_firewall_version) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Update a firewall version
*WafFirewallsApi* | [**create_waf_firewall**](docs/WafFirewallsApi.md#create_waf_firewall) | **POST** /waf/firewalls | Create a firewall
*WafFirewallsApi* | [**delete_waf_firewall**](docs/WafFirewallsApi.md#delete_waf_firewall) | **DELETE** /waf/firewalls/{firewall_id} | Delete a firewall
*WafFirewallsApi* | [**get_waf_firewall**](docs/WafFirewallsApi.md#get_waf_firewall) | **GET** /waf/firewalls/{firewall_id} | Get a firewall
*WafFirewallsApi* | [**list_waf_firewalls**](docs/WafFirewallsApi.md#list_waf_firewalls) | **GET** /waf/firewalls | List firewalls
*WafFirewallsApi* | [**update_waf_firewall**](docs/WafFirewallsApi.md#update_waf_firewall) | **PATCH** /waf/firewalls/{firewall_id} | Update a firewall
*WafRuleRevisionsApi* | [**get_waf_rule_revision**](docs/WafRuleRevisionsApi.md#get_waf_rule_revision) | **GET** /waf/rules/{waf_rule_id}/revisions/{waf_rule_revision_number} | Get a revision of a rule
*WafRuleRevisionsApi* | [**list_waf_rule_revisions**](docs/WafRuleRevisionsApi.md#list_waf_rule_revisions) | **GET** /waf/rules/{waf_rule_id}/revisions | List revisions for a rule
*WafRulesApi* | [**get_waf_rule**](docs/WafRulesApi.md#get_waf_rule) | **GET** /waf/rules/{waf_rule_id} | Get a rule
*WafRulesApi* | [**list_waf_rules**](docs/WafRulesApi.md#list_waf_rules) | **GET** /waf/rules | List available WAF rules
*WafTagsApi* | [**list_waf_tags**](docs/WafTagsApi.md#list_waf_tags) | **GET** /waf/tags | List tags


# DOCUMENTATION FOR MODELS
 - [Fastly::Object::Acl](docs/Acl.md)
 - [Fastly::Object::AclEntry](docs/AclEntry.md)
 - [Fastly::Object::AclEntryResponse](docs/AclEntryResponse.md)
 - [Fastly::Object::AclEntryResponseAllOf](docs/AclEntryResponseAllOf.md)
 - [Fastly::Object::AclResponse](docs/AclResponse.md)
 - [Fastly::Object::AclResponseAllOf](docs/AclResponseAllOf.md)
 - [Fastly::Object::ApexRedirect](docs/ApexRedirect.md)
 - [Fastly::Object::ApexRedirectAllOf](docs/ApexRedirectAllOf.md)
 - [Fastly::Object::Backend](docs/Backend.md)
 - [Fastly::Object::BackendResponse](docs/BackendResponse.md)
 - [Fastly::Object::BackendResponseAllOf](docs/BackendResponseAllOf.md)
 - [Fastly::Object::Billing](docs/Billing.md)
 - [Fastly::Object::BillingAddressAttributes](docs/BillingAddressAttributes.md)
 - [Fastly::Object::BillingAddressRequest](docs/BillingAddressRequest.md)
 - [Fastly::Object::BillingAddressRequestData](docs/BillingAddressRequestData.md)
 - [Fastly::Object::BillingAddressResponse](docs/BillingAddressResponse.md)
 - [Fastly::Object::BillingAddressResponseData](docs/BillingAddressResponseData.md)
 - [Fastly::Object::BillingEstimateResponse](docs/BillingEstimateResponse.md)
 - [Fastly::Object::BillingEstimateResponseAllOf](docs/BillingEstimateResponseAllOf.md)
 - [Fastly::Object::BillingEstimateResponseAllOfLine](docs/BillingEstimateResponseAllOfLine.md)
 - [Fastly::Object::BillingEstimateResponseAllOfLines](docs/BillingEstimateResponseAllOfLines.md)
 - [Fastly::Object::BillingRegionsValue](docs/BillingRegionsValue.md)
 - [Fastly::Object::BillingRegionsValueValue](docs/BillingRegionsValueValue.md)
 - [Fastly::Object::BillingRegionsValueValueTiersInner](docs/BillingRegionsValueValueTiersInner.md)
 - [Fastly::Object::BillingResponse](docs/BillingResponse.md)
 - [Fastly::Object::BillingResponseAllOf](docs/BillingResponseAllOf.md)
 - [Fastly::Object::BillingResponseLineItem](docs/BillingResponseLineItem.md)
 - [Fastly::Object::BillingResponseLineItemAllOf](docs/BillingResponseLineItemAllOf.md)
 - [Fastly::Object::BillingStatus](docs/BillingStatus.md)
 - [Fastly::Object::BillingTotal](docs/BillingTotal.md)
 - [Fastly::Object::BillingTotalExtrasInner](docs/BillingTotalExtrasInner.md)
 - [Fastly::Object::BulkUpdateAclEntriesRequest](docs/BulkUpdateAclEntriesRequest.md)
 - [Fastly::Object::BulkUpdateAclEntry](docs/BulkUpdateAclEntry.md)
 - [Fastly::Object::BulkUpdateAclEntryAllOf](docs/BulkUpdateAclEntryAllOf.md)
 - [Fastly::Object::BulkUpdateDictionaryItem](docs/BulkUpdateDictionaryItem.md)
 - [Fastly::Object::BulkUpdateDictionaryItemAllOf](docs/BulkUpdateDictionaryItemAllOf.md)
 - [Fastly::Object::BulkUpdateDictionaryListRequest](docs/BulkUpdateDictionaryListRequest.md)
 - [Fastly::Object::BulkWafActiveRules](docs/BulkWafActiveRules.md)
 - [Fastly::Object::CacheSetting](docs/CacheSetting.md)
 - [Fastly::Object::CacheSettingResponse](docs/CacheSettingResponse.md)
 - [Fastly::Object::Condition](docs/Condition.md)
 - [Fastly::Object::ConditionResponse](docs/ConditionResponse.md)
 - [Fastly::Object::Contact](docs/Contact.md)
 - [Fastly::Object::ContactResponse](docs/ContactResponse.md)
 - [Fastly::Object::ContactResponseAllOf](docs/ContactResponseAllOf.md)
 - [Fastly::Object::Content](docs/Content.md)
 - [Fastly::Object::Customer](docs/Customer.md)
 - [Fastly::Object::CustomerResponse](docs/CustomerResponse.md)
 - [Fastly::Object::CustomerResponseAllOf](docs/CustomerResponseAllOf.md)
 - [Fastly::Object::DeleteAcl200Response](docs/DeleteAcl200Response.md)
 - [Fastly::Object::Dictionary](docs/Dictionary.md)
 - [Fastly::Object::DictionaryInfoResponse](docs/DictionaryInfoResponse.md)
 - [Fastly::Object::DictionaryItem](docs/DictionaryItem.md)
 - [Fastly::Object::DictionaryItemResponse](docs/DictionaryItemResponse.md)
 - [Fastly::Object::DictionaryItemResponseAllOf](docs/DictionaryItemResponseAllOf.md)
 - [Fastly::Object::DictionaryResponse](docs/DictionaryResponse.md)
 - [Fastly::Object::DictionaryResponseAllOf](docs/DictionaryResponseAllOf.md)
 - [Fastly::Object::DiffResponse](docs/DiffResponse.md)
 - [Fastly::Object::Director](docs/Director.md)
 - [Fastly::Object::DirectorBackend](docs/DirectorBackend.md)
 - [Fastly::Object::DirectorBackendAllOf](docs/DirectorBackendAllOf.md)
 - [Fastly::Object::DirectorResponse](docs/DirectorResponse.md)
 - [Fastly::Object::Domain](docs/Domain.md)
 - [Fastly::Object::DomainCheckItem](docs/DomainCheckItem.md)
 - [Fastly::Object::DomainResponse](docs/DomainResponse.md)
 - [Fastly::Object::Event](docs/Event.md)
 - [Fastly::Object::EventAttributes](docs/EventAttributes.md)
 - [Fastly::Object::EventResponse](docs/EventResponse.md)
 - [Fastly::Object::EventsResponse](docs/EventsResponse.md)
 - [Fastly::Object::EventsResponseAllOf](docs/EventsResponseAllOf.md)
 - [Fastly::Object::GenericTokenError](docs/GenericTokenError.md)
 - [Fastly::Object::Gzip](docs/Gzip.md)
 - [Fastly::Object::GzipResponse](docs/GzipResponse.md)
 - [Fastly::Object::Header](docs/Header.md)
 - [Fastly::Object::HeaderResponse](docs/HeaderResponse.md)
 - [Fastly::Object::Healthcheck](docs/Healthcheck.md)
 - [Fastly::Object::HealthcheckResponse](docs/HealthcheckResponse.md)
 - [Fastly::Object::Historical](docs/Historical.md)
 - [Fastly::Object::HistoricalAggregateResponse](docs/HistoricalAggregateResponse.md)
 - [Fastly::Object::HistoricalAggregateResponseAllOf](docs/HistoricalAggregateResponseAllOf.md)
 - [Fastly::Object::HistoricalFieldAggregateResponse](docs/HistoricalFieldAggregateResponse.md)
 - [Fastly::Object::HistoricalFieldAggregateResponseAllOf](docs/HistoricalFieldAggregateResponseAllOf.md)
 - [Fastly::Object::HistoricalFieldResponse](docs/HistoricalFieldResponse.md)
 - [Fastly::Object::HistoricalFieldResponseAllOf](docs/HistoricalFieldResponseAllOf.md)
 - [Fastly::Object::HistoricalFieldResultsInner](docs/HistoricalFieldResultsInner.md)
 - [Fastly::Object::HistoricalMeta](docs/HistoricalMeta.md)
 - [Fastly::Object::HistoricalRegionsResponse](docs/HistoricalRegionsResponse.md)
 - [Fastly::Object::HistoricalRegionsResponseAllOf](docs/HistoricalRegionsResponseAllOf.md)
 - [Fastly::Object::HistoricalResponse](docs/HistoricalResponse.md)
 - [Fastly::Object::HistoricalResponseAllOf](docs/HistoricalResponseAllOf.md)
 - [Fastly::Object::HistoricalServicesValue](docs/HistoricalServicesValue.md)
 - [Fastly::Object::HistoricalUsageAggregateResponse](docs/HistoricalUsageAggregateResponse.md)
 - [Fastly::Object::HistoricalUsageMonthResponse](docs/HistoricalUsageMonthResponse.md)
 - [Fastly::Object::HistoricalUsageMonthResponseAllOf](docs/HistoricalUsageMonthResponseAllOf.md)
 - [Fastly::Object::HistoricalUsageMonthResponseAllOfData](docs/HistoricalUsageMonthResponseAllOfData.md)
 - [Fastly::Object::HistoricalUsageResults](docs/HistoricalUsageResults.md)
 - [Fastly::Object::HistoricalUsageServiceResponse](docs/HistoricalUsageServiceResponse.md)
 - [Fastly::Object::HistoricalUsageServiceResponseAllOf](docs/HistoricalUsageServiceResponseAllOf.md)
 - [Fastly::Object::Http3](docs/Http3.md)
 - [Fastly::Object::Http3AllOf](docs/Http3AllOf.md)
 - [Fastly::Object::IamPermission](docs/IamPermission.md)
 - [Fastly::Object::IamRole](docs/IamRole.md)
 - [Fastly::Object::IamRoleAllOf](docs/IamRoleAllOf.md)
 - [Fastly::Object::IamServiceGroup](docs/IamServiceGroup.md)
 - [Fastly::Object::IamServiceGroupAllOf](docs/IamServiceGroupAllOf.md)
 - [Fastly::Object::IamUserGroup](docs/IamUserGroup.md)
 - [Fastly::Object::IamUserGroupAllOf](docs/IamUserGroupAllOf.md)
 - [Fastly::Object::IncludedWithWafActiveRuleItem](docs/IncludedWithWafActiveRuleItem.md)
 - [Fastly::Object::IncludedWithWafExclusionItem](docs/IncludedWithWafExclusionItem.md)
 - [Fastly::Object::IncludedWithWafFirewallVersionItem](docs/IncludedWithWafFirewallVersionItem.md)
 - [Fastly::Object::IncludedWithWafRuleItem](docs/IncludedWithWafRuleItem.md)
 - [Fastly::Object::Invitation](docs/Invitation.md)
 - [Fastly::Object::InvitationData](docs/InvitationData.md)
 - [Fastly::Object::InvitationDataAttributes](docs/InvitationDataAttributes.md)
 - [Fastly::Object::InvitationResponse](docs/InvitationResponse.md)
 - [Fastly::Object::InvitationResponseAllOf](docs/InvitationResponseAllOf.md)
 - [Fastly::Object::InvitationResponseData](docs/InvitationResponseData.md)
 - [Fastly::Object::InvitationResponseDataAllOf](docs/InvitationResponseDataAllOf.md)
 - [Fastly::Object::InvitationsResponse](docs/InvitationsResponse.md)
 - [Fastly::Object::InvitationsResponseAllOf](docs/InvitationsResponseAllOf.md)
 - [Fastly::Object::ListDomainOwnerships200Response](docs/ListDomainOwnerships200Response.md)
 - [Fastly::Object::ListServiceStars200Response](docs/ListServiceStars200Response.md)
 - [Fastly::Object::ListServiceStars200ResponseAllOf](docs/ListServiceStars200ResponseAllOf.md)
 - [Fastly::Object::ListServiceStars200ResponseAllOfDataInner](docs/ListServiceStars200ResponseAllOfDataInner.md)
 - [Fastly::Object::ListServiceStars200ResponseAllOfDataInnerAllOf](docs/ListServiceStars200ResponseAllOfDataInnerAllOf.md)
 - [Fastly::Object::LoggingAddressAndPort](docs/LoggingAddressAndPort.md)
 - [Fastly::Object::LoggingAzureblob](docs/LoggingAzureblob.md)
 - [Fastly::Object::LoggingAzureblobAllOf](docs/LoggingAzureblobAllOf.md)
 - [Fastly::Object::LoggingAzureblobResponse](docs/LoggingAzureblobResponse.md)
 - [Fastly::Object::LoggingBigquery](docs/LoggingBigquery.md)
 - [Fastly::Object::LoggingBigqueryAllOf](docs/LoggingBigqueryAllOf.md)
 - [Fastly::Object::LoggingBigqueryResponse](docs/LoggingBigqueryResponse.md)
 - [Fastly::Object::LoggingCloudfiles](docs/LoggingCloudfiles.md)
 - [Fastly::Object::LoggingCloudfilesAllOf](docs/LoggingCloudfilesAllOf.md)
 - [Fastly::Object::LoggingCloudfilesResponse](docs/LoggingCloudfilesResponse.md)
 - [Fastly::Object::LoggingCommon](docs/LoggingCommon.md)
 - [Fastly::Object::LoggingDatadog](docs/LoggingDatadog.md)
 - [Fastly::Object::LoggingDatadogAllOf](docs/LoggingDatadogAllOf.md)
 - [Fastly::Object::LoggingDatadogResponse](docs/LoggingDatadogResponse.md)
 - [Fastly::Object::LoggingDigitalocean](docs/LoggingDigitalocean.md)
 - [Fastly::Object::LoggingDigitaloceanAllOf](docs/LoggingDigitaloceanAllOf.md)
 - [Fastly::Object::LoggingDigitaloceanResponse](docs/LoggingDigitaloceanResponse.md)
 - [Fastly::Object::LoggingElasticsearch](docs/LoggingElasticsearch.md)
 - [Fastly::Object::LoggingElasticsearchAllOf](docs/LoggingElasticsearchAllOf.md)
 - [Fastly::Object::LoggingElasticsearchResponse](docs/LoggingElasticsearchResponse.md)
 - [Fastly::Object::LoggingFormatVersion](docs/LoggingFormatVersion.md)
 - [Fastly::Object::LoggingFtp](docs/LoggingFtp.md)
 - [Fastly::Object::LoggingFtpAllOf](docs/LoggingFtpAllOf.md)
 - [Fastly::Object::LoggingFtpResponse](docs/LoggingFtpResponse.md)
 - [Fastly::Object::LoggingGcs](docs/LoggingGcs.md)
 - [Fastly::Object::LoggingGcsAllOf](docs/LoggingGcsAllOf.md)
 - [Fastly::Object::LoggingGcsCommon](docs/LoggingGcsCommon.md)
 - [Fastly::Object::LoggingGcsResponse](docs/LoggingGcsResponse.md)
 - [Fastly::Object::LoggingGenericCommon](docs/LoggingGenericCommon.md)
 - [Fastly::Object::LoggingGooglePubsub](docs/LoggingGooglePubsub.md)
 - [Fastly::Object::LoggingGooglePubsubAllOf](docs/LoggingGooglePubsubAllOf.md)
 - [Fastly::Object::LoggingGooglePubsubResponse](docs/LoggingGooglePubsubResponse.md)
 - [Fastly::Object::LoggingHeroku](docs/LoggingHeroku.md)
 - [Fastly::Object::LoggingHerokuAllOf](docs/LoggingHerokuAllOf.md)
 - [Fastly::Object::LoggingHerokuResponse](docs/LoggingHerokuResponse.md)
 - [Fastly::Object::LoggingHoneycomb](docs/LoggingHoneycomb.md)
 - [Fastly::Object::LoggingHoneycombAllOf](docs/LoggingHoneycombAllOf.md)
 - [Fastly::Object::LoggingHoneycombResponse](docs/LoggingHoneycombResponse.md)
 - [Fastly::Object::LoggingHttps](docs/LoggingHttps.md)
 - [Fastly::Object::LoggingHttpsAllOf](docs/LoggingHttpsAllOf.md)
 - [Fastly::Object::LoggingHttpsResponse](docs/LoggingHttpsResponse.md)
 - [Fastly::Object::LoggingKafka](docs/LoggingKafka.md)
 - [Fastly::Object::LoggingKafkaAllOf](docs/LoggingKafkaAllOf.md)
 - [Fastly::Object::LoggingKafkaResponse](docs/LoggingKafkaResponse.md)
 - [Fastly::Object::LoggingKinesis](docs/LoggingKinesis.md)
 - [Fastly::Object::LoggingKinesisResponse](docs/LoggingKinesisResponse.md)
 - [Fastly::Object::LoggingLogentries](docs/LoggingLogentries.md)
 - [Fastly::Object::LoggingLogentriesAllOf](docs/LoggingLogentriesAllOf.md)
 - [Fastly::Object::LoggingLogentriesResponse](docs/LoggingLogentriesResponse.md)
 - [Fastly::Object::LoggingLoggly](docs/LoggingLoggly.md)
 - [Fastly::Object::LoggingLogglyAllOf](docs/LoggingLogglyAllOf.md)
 - [Fastly::Object::LoggingLogglyResponse](docs/LoggingLogglyResponse.md)
 - [Fastly::Object::LoggingLogshuttle](docs/LoggingLogshuttle.md)
 - [Fastly::Object::LoggingLogshuttleAllOf](docs/LoggingLogshuttleAllOf.md)
 - [Fastly::Object::LoggingLogshuttleResponse](docs/LoggingLogshuttleResponse.md)
 - [Fastly::Object::LoggingMessageType](docs/LoggingMessageType.md)
 - [Fastly::Object::LoggingNewrelic](docs/LoggingNewrelic.md)
 - [Fastly::Object::LoggingNewrelicAllOf](docs/LoggingNewrelicAllOf.md)
 - [Fastly::Object::LoggingNewrelicResponse](docs/LoggingNewrelicResponse.md)
 - [Fastly::Object::LoggingOpenstack](docs/LoggingOpenstack.md)
 - [Fastly::Object::LoggingOpenstackAllOf](docs/LoggingOpenstackAllOf.md)
 - [Fastly::Object::LoggingOpenstackResponse](docs/LoggingOpenstackResponse.md)
 - [Fastly::Object::LoggingPapertrail](docs/LoggingPapertrail.md)
 - [Fastly::Object::LoggingPapertrailResponse](docs/LoggingPapertrailResponse.md)
 - [Fastly::Object::LoggingPlacement](docs/LoggingPlacement.md)
 - [Fastly::Object::LoggingRequestCapsCommon](docs/LoggingRequestCapsCommon.md)
 - [Fastly::Object::LoggingS3](docs/LoggingS3.md)
 - [Fastly::Object::LoggingS3AllOf](docs/LoggingS3AllOf.md)
 - [Fastly::Object::LoggingS3Response](docs/LoggingS3Response.md)
 - [Fastly::Object::LoggingScalyr](docs/LoggingScalyr.md)
 - [Fastly::Object::LoggingScalyrAllOf](docs/LoggingScalyrAllOf.md)
 - [Fastly::Object::LoggingScalyrResponse](docs/LoggingScalyrResponse.md)
 - [Fastly::Object::LoggingSftp](docs/LoggingSftp.md)
 - [Fastly::Object::LoggingSftpAllOf](docs/LoggingSftpAllOf.md)
 - [Fastly::Object::LoggingSftpResponse](docs/LoggingSftpResponse.md)
 - [Fastly::Object::LoggingSplunk](docs/LoggingSplunk.md)
 - [Fastly::Object::LoggingSplunkAllOf](docs/LoggingSplunkAllOf.md)
 - [Fastly::Object::LoggingSplunkResponse](docs/LoggingSplunkResponse.md)
 - [Fastly::Object::LoggingSumologic](docs/LoggingSumologic.md)
 - [Fastly::Object::LoggingSumologicAllOf](docs/LoggingSumologicAllOf.md)
 - [Fastly::Object::LoggingSumologicResponse](docs/LoggingSumologicResponse.md)
 - [Fastly::Object::LoggingSyslog](docs/LoggingSyslog.md)
 - [Fastly::Object::LoggingSyslogAllOf](docs/LoggingSyslogAllOf.md)
 - [Fastly::Object::LoggingSyslogResponse](docs/LoggingSyslogResponse.md)
 - [Fastly::Object::LoggingTlsCommon](docs/LoggingTlsCommon.md)
 - [Fastly::Object::LoggingUseTls](docs/LoggingUseTls.md)
 - [Fastly::Object::ModelPackage](docs/ModelPackage.md)
 - [Fastly::Object::PackageMetadata](docs/PackageMetadata.md)
 - [Fastly::Object::PackageResponse](docs/PackageResponse.md)
 - [Fastly::Object::PackageResponseAllOf](docs/PackageResponseAllOf.md)
 - [Fastly::Object::Pagination](docs/Pagination.md)
 - [Fastly::Object::PaginationLinks](docs/PaginationLinks.md)
 - [Fastly::Object::PaginationMeta](docs/PaginationMeta.md)
 - [Fastly::Object::Permission](docs/Permission.md)
 - [Fastly::Object::Pool](docs/Pool.md)
 - [Fastly::Object::PoolAllOf](docs/PoolAllOf.md)
 - [Fastly::Object::PoolResponse](docs/PoolResponse.md)
 - [Fastly::Object::PoolResponseAllOf](docs/PoolResponseAllOf.md)
 - [Fastly::Object::Pop](docs/Pop.md)
 - [Fastly::Object::PopCoordinates](docs/PopCoordinates.md)
 - [Fastly::Object::PublicIpList](docs/PublicIpList.md)
 - [Fastly::Object::PurgeKeys](docs/PurgeKeys.md)
 - [Fastly::Object::PurgeResponse](docs/PurgeResponse.md)
 - [Fastly::Object::RateLimiter](docs/RateLimiter.md)
 - [Fastly::Object::RateLimiterResponse](docs/RateLimiterResponse.md)
 - [Fastly::Object::RateLimiterResponse1](docs/RateLimiterResponse1.md)
 - [Fastly::Object::RateLimiterResponseAllOf](docs/RateLimiterResponseAllOf.md)
 - [Fastly::Object::Realtime](docs/Realtime.md)
 - [Fastly::Object::RealtimeEntry](docs/RealtimeEntry.md)
 - [Fastly::Object::RealtimeEntryAggregated](docs/RealtimeEntryAggregated.md)
 - [Fastly::Object::RealtimeMeasurements](docs/RealtimeMeasurements.md)
 - [Fastly::Object::RelationshipCommonName](docs/RelationshipCommonName.md)
 - [Fastly::Object::RelationshipCustomer](docs/RelationshipCustomer.md)
 - [Fastly::Object::RelationshipCustomerCustomer](docs/RelationshipCustomerCustomer.md)
 - [Fastly::Object::RelationshipMemberCustomer](docs/RelationshipMemberCustomer.md)
 - [Fastly::Object::RelationshipMemberService](docs/RelationshipMemberService.md)
 - [Fastly::Object::RelationshipMemberServiceInvitation](docs/RelationshipMemberServiceInvitation.md)
 - [Fastly::Object::RelationshipMemberTlsActivation](docs/RelationshipMemberTlsActivation.md)
 - [Fastly::Object::RelationshipMemberTlsBulkCertificate](docs/RelationshipMemberTlsBulkCertificate.md)
 - [Fastly::Object::RelationshipMemberTlsCertificate](docs/RelationshipMemberTlsCertificate.md)
 - [Fastly::Object::RelationshipMemberTlsConfiguration](docs/RelationshipMemberTlsConfiguration.md)
 - [Fastly::Object::RelationshipMemberTlsDnsRecord](docs/RelationshipMemberTlsDnsRecord.md)
 - [Fastly::Object::RelationshipMemberTlsDomain](docs/RelationshipMemberTlsDomain.md)
 - [Fastly::Object::RelationshipMemberTlsPrivateKey](docs/RelationshipMemberTlsPrivateKey.md)
 - [Fastly::Object::RelationshipMemberTlsSubscription](docs/RelationshipMemberTlsSubscription.md)
 - [Fastly::Object::RelationshipMemberWafActiveRule](docs/RelationshipMemberWafActiveRule.md)
 - [Fastly::Object::RelationshipMemberWafFirewall](docs/RelationshipMemberWafFirewall.md)
 - [Fastly::Object::RelationshipMemberWafFirewallVersion](docs/RelationshipMemberWafFirewallVersion.md)
 - [Fastly::Object::RelationshipMemberWafRule](docs/RelationshipMemberWafRule.md)
 - [Fastly::Object::RelationshipMemberWafRuleRevision](docs/RelationshipMemberWafRuleRevision.md)
 - [Fastly::Object::RelationshipMemberWafTag](docs/RelationshipMemberWafTag.md)
 - [Fastly::Object::RelationshipService](docs/RelationshipService.md)
 - [Fastly::Object::RelationshipServiceInvitations](docs/RelationshipServiceInvitations.md)
 - [Fastly::Object::RelationshipServiceInvitationsCreate](docs/RelationshipServiceInvitationsCreate.md)
 - [Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations](docs/RelationshipServiceInvitationsCreateServiceInvitations.md)
 - [Fastly::Object::RelationshipServiceInvitationsServiceInvitations](docs/RelationshipServiceInvitationsServiceInvitations.md)
 - [Fastly::Object::RelationshipServiceService](docs/RelationshipServiceService.md)
 - [Fastly::Object::RelationshipServices](docs/RelationshipServices.md)
 - [Fastly::Object::RelationshipTlsActivation](docs/RelationshipTlsActivation.md)
 - [Fastly::Object::RelationshipTlsActivationTlsActivation](docs/RelationshipTlsActivationTlsActivation.md)
 - [Fastly::Object::RelationshipTlsActivations](docs/RelationshipTlsActivations.md)
 - [Fastly::Object::RelationshipTlsBulkCertificate](docs/RelationshipTlsBulkCertificate.md)
 - [Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate](docs/RelationshipTlsBulkCertificateTlsBulkCertificate.md)
 - [Fastly::Object::RelationshipTlsBulkCertificates](docs/RelationshipTlsBulkCertificates.md)
 - [Fastly::Object::RelationshipTlsCertificate](docs/RelationshipTlsCertificate.md)
 - [Fastly::Object::RelationshipTlsCertificateTlsCertificate](docs/RelationshipTlsCertificateTlsCertificate.md)
 - [Fastly::Object::RelationshipTlsCertificates](docs/RelationshipTlsCertificates.md)
 - [Fastly::Object::RelationshipTlsConfiguration](docs/RelationshipTlsConfiguration.md)
 - [Fastly::Object::RelationshipTlsConfigurationTlsConfiguration](docs/RelationshipTlsConfigurationTlsConfiguration.md)
 - [Fastly::Object::RelationshipTlsConfigurations](docs/RelationshipTlsConfigurations.md)
 - [Fastly::Object::RelationshipTlsDnsRecord](docs/RelationshipTlsDnsRecord.md)
 - [Fastly::Object::RelationshipTlsDnsRecordDnsRecord](docs/RelationshipTlsDnsRecordDnsRecord.md)
 - [Fastly::Object::RelationshipTlsDnsRecords](docs/RelationshipTlsDnsRecords.md)
 - [Fastly::Object::RelationshipTlsDomain](docs/RelationshipTlsDomain.md)
 - [Fastly::Object::RelationshipTlsDomainTlsDomain](docs/RelationshipTlsDomainTlsDomain.md)
 - [Fastly::Object::RelationshipTlsDomains](docs/RelationshipTlsDomains.md)
 - [Fastly::Object::RelationshipTlsPrivateKey](docs/RelationshipTlsPrivateKey.md)
 - [Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey](docs/RelationshipTlsPrivateKeyTlsPrivateKey.md)
 - [Fastly::Object::RelationshipTlsPrivateKeys](docs/RelationshipTlsPrivateKeys.md)
 - [Fastly::Object::RelationshipTlsSubscription](docs/RelationshipTlsSubscription.md)
 - [Fastly::Object::RelationshipTlsSubscriptionTlsSubscription](docs/RelationshipTlsSubscriptionTlsSubscription.md)
 - [Fastly::Object::RelationshipTlsSubscriptions](docs/RelationshipTlsSubscriptions.md)
 - [Fastly::Object::RelationshipUser](docs/RelationshipUser.md)
 - [Fastly::Object::RelationshipUserUser](docs/RelationshipUserUser.md)
 - [Fastly::Object::RelationshipUserUserData](docs/RelationshipUserUserData.md)
 - [Fastly::Object::RelationshipWafActiveRules](docs/RelationshipWafActiveRules.md)
 - [Fastly::Object::RelationshipWafActiveRulesWafActiveRules](docs/RelationshipWafActiveRulesWafActiveRules.md)
 - [Fastly::Object::RelationshipWafFirewall](docs/RelationshipWafFirewall.md)
 - [Fastly::Object::RelationshipWafFirewallVersion](docs/RelationshipWafFirewallVersion.md)
 - [Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion](docs/RelationshipWafFirewallVersionWafFirewallVersion.md)
 - [Fastly::Object::RelationshipWafFirewallVersions](docs/RelationshipWafFirewallVersions.md)
 - [Fastly::Object::RelationshipWafFirewallWafFirewall](docs/RelationshipWafFirewallWafFirewall.md)
 - [Fastly::Object::RelationshipWafRule](docs/RelationshipWafRule.md)
 - [Fastly::Object::RelationshipWafRuleRevision](docs/RelationshipWafRuleRevision.md)
 - [Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions](docs/RelationshipWafRuleRevisionWafRuleRevisions.md)
 - [Fastly::Object::RelationshipWafRuleRevisions](docs/RelationshipWafRuleRevisions.md)
 - [Fastly::Object::RelationshipWafRuleWafRule](docs/RelationshipWafRuleWafRule.md)
 - [Fastly::Object::RelationshipWafRules](docs/RelationshipWafRules.md)
 - [Fastly::Object::RelationshipWafTags](docs/RelationshipWafTags.md)
 - [Fastly::Object::RelationshipWafTagsWafTags](docs/RelationshipWafTagsWafTags.md)
 - [Fastly::Object::RelationshipsForInvitation](docs/RelationshipsForInvitation.md)
 - [Fastly::Object::RelationshipsForStar](docs/RelationshipsForStar.md)
 - [Fastly::Object::RelationshipsForTlsActivation](docs/RelationshipsForTlsActivation.md)
 - [Fastly::Object::RelationshipsForTlsBulkCertificate](docs/RelationshipsForTlsBulkCertificate.md)
 - [Fastly::Object::RelationshipsForTlsConfiguration](docs/RelationshipsForTlsConfiguration.md)
 - [Fastly::Object::RelationshipsForTlsDomain](docs/RelationshipsForTlsDomain.md)
 - [Fastly::Object::RelationshipsForTlsPrivateKey](docs/RelationshipsForTlsPrivateKey.md)
 - [Fastly::Object::RelationshipsForTlsSubscription](docs/RelationshipsForTlsSubscription.md)
 - [Fastly::Object::RelationshipsForWafActiveRule](docs/RelationshipsForWafActiveRule.md)
 - [Fastly::Object::RelationshipsForWafExclusion](docs/RelationshipsForWafExclusion.md)
 - [Fastly::Object::RelationshipsForWafFirewallVersion](docs/RelationshipsForWafFirewallVersion.md)
 - [Fastly::Object::RelationshipsForWafRule](docs/RelationshipsForWafRule.md)
 - [Fastly::Object::RequestSettings](docs/RequestSettings.md)
 - [Fastly::Object::RequestSettingsResponse](docs/RequestSettingsResponse.md)
 - [Fastly::Object::Resource](docs/Resource.md)
 - [Fastly::Object::ResourceCreate](docs/ResourceCreate.md)
 - [Fastly::Object::ResourceCreateAllOf](docs/ResourceCreateAllOf.md)
 - [Fastly::Object::ResourceResponse](docs/ResourceResponse.md)
 - [Fastly::Object::ResourceResponseAllOf](docs/ResourceResponseAllOf.md)
 - [Fastly::Object::ResponseObject](docs/ResponseObject.md)
 - [Fastly::Object::ResponseObjectResponse](docs/ResponseObjectResponse.md)
 - [Fastly::Object::Results](docs/Results.md)
 - [Fastly::Object::RoleUser](docs/RoleUser.md)
 - [Fastly::Object::SchemasContactResponse](docs/SchemasContactResponse.md)
 - [Fastly::Object::SchemasSnippetResponse](docs/SchemasSnippetResponse.md)
 - [Fastly::Object::SchemasUserResponse](docs/SchemasUserResponse.md)
 - [Fastly::Object::SchemasVclResponse](docs/SchemasVclResponse.md)
 - [Fastly::Object::SchemasVersion](docs/SchemasVersion.md)
 - [Fastly::Object::SchemasVersionResponse](docs/SchemasVersionResponse.md)
 - [Fastly::Object::SchemasWafFirewallVersion](docs/SchemasWafFirewallVersion.md)
 - [Fastly::Object::SchemasWafFirewallVersionData](docs/SchemasWafFirewallVersionData.md)
 - [Fastly::Object::Server](docs/Server.md)
 - [Fastly::Object::ServerResponse](docs/ServerResponse.md)
 - [Fastly::Object::ServerResponseAllOf](docs/ServerResponseAllOf.md)
 - [Fastly::Object::Service](docs/Service.md)
 - [Fastly::Object::ServiceAuthorization](docs/ServiceAuthorization.md)
 - [Fastly::Object::ServiceAuthorizationData](docs/ServiceAuthorizationData.md)
 - [Fastly::Object::ServiceAuthorizationDataAttributes](docs/ServiceAuthorizationDataAttributes.md)
 - [Fastly::Object::ServiceAuthorizationDataRelationships](docs/ServiceAuthorizationDataRelationships.md)
 - [Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf](docs/ServiceAuthorizationDataRelationshipsAllOf.md)
 - [Fastly::Object::ServiceAuthorizationDataRelationshipsAllOf1](docs/ServiceAuthorizationDataRelationshipsAllOf1.md)
 - [Fastly::Object::ServiceAuthorizationResponse](docs/ServiceAuthorizationResponse.md)
 - [Fastly::Object::ServiceAuthorizationResponseData](docs/ServiceAuthorizationResponseData.md)
 - [Fastly::Object::ServiceAuthorizationResponseDataAllOf](docs/ServiceAuthorizationResponseDataAllOf.md)
 - [Fastly::Object::ServiceAuthorizationsResponse](docs/ServiceAuthorizationsResponse.md)
 - [Fastly::Object::ServiceAuthorizationsResponseAllOf](docs/ServiceAuthorizationsResponseAllOf.md)
 - [Fastly::Object::ServiceCreate](docs/ServiceCreate.md)
 - [Fastly::Object::ServiceCreateAllOf](docs/ServiceCreateAllOf.md)
 - [Fastly::Object::ServiceDetail](docs/ServiceDetail.md)
 - [Fastly::Object::ServiceDetailAllOf](docs/ServiceDetailAllOf.md)
 - [Fastly::Object::ServiceIdAndVersion](docs/ServiceIdAndVersion.md)
 - [Fastly::Object::ServiceInvitation](docs/ServiceInvitation.md)
 - [Fastly::Object::ServiceInvitationData](docs/ServiceInvitationData.md)
 - [Fastly::Object::ServiceInvitationDataAttributes](docs/ServiceInvitationDataAttributes.md)
 - [Fastly::Object::ServiceInvitationDataRelationships](docs/ServiceInvitationDataRelationships.md)
 - [Fastly::Object::ServiceInvitationResponse](docs/ServiceInvitationResponse.md)
 - [Fastly::Object::ServiceInvitationResponseAllOf](docs/ServiceInvitationResponseAllOf.md)
 - [Fastly::Object::ServiceInvitationResponseAllOfData](docs/ServiceInvitationResponseAllOfData.md)
 - [Fastly::Object::ServiceListResponse](docs/ServiceListResponse.md)
 - [Fastly::Object::ServiceListResponseAllOf](docs/ServiceListResponseAllOf.md)
 - [Fastly::Object::ServiceResponse](docs/ServiceResponse.md)
 - [Fastly::Object::ServiceResponseAllOf](docs/ServiceResponseAllOf.md)
 - [Fastly::Object::ServiceVersionDetail](docs/ServiceVersionDetail.md)
 - [Fastly::Object::ServiceVersionDetailOrNull](docs/ServiceVersionDetailOrNull.md)
 - [Fastly::Object::Settings](docs/Settings.md)
 - [Fastly::Object::SettingsResponse](docs/SettingsResponse.md)
 - [Fastly::Object::Snippet](docs/Snippet.md)
 - [Fastly::Object::SnippetResponse](docs/SnippetResponse.md)
 - [Fastly::Object::SnippetResponseAllOf](docs/SnippetResponseAllOf.md)
 - [Fastly::Object::Star](docs/Star.md)
 - [Fastly::Object::StarData](docs/StarData.md)
 - [Fastly::Object::StarResponse](docs/StarResponse.md)
 - [Fastly::Object::StarResponseAllOf](docs/StarResponseAllOf.md)
 - [Fastly::Object::Stats](docs/Stats.md)
 - [Fastly::Object::Timestamps](docs/Timestamps.md)
 - [Fastly::Object::TimestampsNoDelete](docs/TimestampsNoDelete.md)
 - [Fastly::Object::TlsActivation](docs/TlsActivation.md)
 - [Fastly::Object::TlsActivationData](docs/TlsActivationData.md)
 - [Fastly::Object::TlsActivationResponse](docs/TlsActivationResponse.md)
 - [Fastly::Object::TlsActivationResponseData](docs/TlsActivationResponseData.md)
 - [Fastly::Object::TlsActivationResponseDataAllOf](docs/TlsActivationResponseDataAllOf.md)
 - [Fastly::Object::TlsActivationsResponse](docs/TlsActivationsResponse.md)
 - [Fastly::Object::TlsActivationsResponseAllOf](docs/TlsActivationsResponseAllOf.md)
 - [Fastly::Object::TlsBulkCertificate](docs/TlsBulkCertificate.md)
 - [Fastly::Object::TlsBulkCertificateData](docs/TlsBulkCertificateData.md)
 - [Fastly::Object::TlsBulkCertificateDataAttributes](docs/TlsBulkCertificateDataAttributes.md)
 - [Fastly::Object::TlsBulkCertificateResponse](docs/TlsBulkCertificateResponse.md)
 - [Fastly::Object::TlsBulkCertificateResponseAttributes](docs/TlsBulkCertificateResponseAttributes.md)
 - [Fastly::Object::TlsBulkCertificateResponseAttributesAllOf](docs/TlsBulkCertificateResponseAttributesAllOf.md)
 - [Fastly::Object::TlsBulkCertificateResponseData](docs/TlsBulkCertificateResponseData.md)
 - [Fastly::Object::TlsBulkCertificateResponseDataAllOf](docs/TlsBulkCertificateResponseDataAllOf.md)
 - [Fastly::Object::TlsBulkCertificatesResponse](docs/TlsBulkCertificatesResponse.md)
 - [Fastly::Object::TlsBulkCertificatesResponseAllOf](docs/TlsBulkCertificatesResponseAllOf.md)
 - [Fastly::Object::TlsCertificate](docs/TlsCertificate.md)
 - [Fastly::Object::TlsCertificateData](docs/TlsCertificateData.md)
 - [Fastly::Object::TlsCertificateDataAttributes](docs/TlsCertificateDataAttributes.md)
 - [Fastly::Object::TlsCertificateResponse](docs/TlsCertificateResponse.md)
 - [Fastly::Object::TlsCertificateResponseAttributes](docs/TlsCertificateResponseAttributes.md)
 - [Fastly::Object::TlsCertificateResponseAttributesAllOf](docs/TlsCertificateResponseAttributesAllOf.md)
 - [Fastly::Object::TlsCertificateResponseData](docs/TlsCertificateResponseData.md)
 - [Fastly::Object::TlsCertificateResponseDataAllOf](docs/TlsCertificateResponseDataAllOf.md)
 - [Fastly::Object::TlsCertificatesResponse](docs/TlsCertificatesResponse.md)
 - [Fastly::Object::TlsCertificatesResponseAllOf](docs/TlsCertificatesResponseAllOf.md)
 - [Fastly::Object::TlsCommon](docs/TlsCommon.md)
 - [Fastly::Object::TlsConfiguration](docs/TlsConfiguration.md)
 - [Fastly::Object::TlsConfigurationData](docs/TlsConfigurationData.md)
 - [Fastly::Object::TlsConfigurationDataAttributes](docs/TlsConfigurationDataAttributes.md)
 - [Fastly::Object::TlsConfigurationResponse](docs/TlsConfigurationResponse.md)
 - [Fastly::Object::TlsConfigurationResponseAttributes](docs/TlsConfigurationResponseAttributes.md)
 - [Fastly::Object::TlsConfigurationResponseAttributesAllOf](docs/TlsConfigurationResponseAttributesAllOf.md)
 - [Fastly::Object::TlsConfigurationResponseData](docs/TlsConfigurationResponseData.md)
 - [Fastly::Object::TlsConfigurationResponseDataAllOf](docs/TlsConfigurationResponseDataAllOf.md)
 - [Fastly::Object::TlsConfigurationsResponse](docs/TlsConfigurationsResponse.md)
 - [Fastly::Object::TlsConfigurationsResponseAllOf](docs/TlsConfigurationsResponseAllOf.md)
 - [Fastly::Object::TlsDnsRecord](docs/TlsDnsRecord.md)
 - [Fastly::Object::TlsDomainData](docs/TlsDomainData.md)
 - [Fastly::Object::TlsDomainsResponse](docs/TlsDomainsResponse.md)
 - [Fastly::Object::TlsDomainsResponseAllOf](docs/TlsDomainsResponseAllOf.md)
 - [Fastly::Object::TlsPrivateKey](docs/TlsPrivateKey.md)
 - [Fastly::Object::TlsPrivateKeyData](docs/TlsPrivateKeyData.md)
 - [Fastly::Object::TlsPrivateKeyDataAttributes](docs/TlsPrivateKeyDataAttributes.md)
 - [Fastly::Object::TlsPrivateKeyResponse](docs/TlsPrivateKeyResponse.md)
 - [Fastly::Object::TlsPrivateKeyResponseAttributes](docs/TlsPrivateKeyResponseAttributes.md)
 - [Fastly::Object::TlsPrivateKeyResponseAttributesAllOf](docs/TlsPrivateKeyResponseAttributesAllOf.md)
 - [Fastly::Object::TlsPrivateKeyResponseData](docs/TlsPrivateKeyResponseData.md)
 - [Fastly::Object::TlsPrivateKeysResponse](docs/TlsPrivateKeysResponse.md)
 - [Fastly::Object::TlsPrivateKeysResponseAllOf](docs/TlsPrivateKeysResponseAllOf.md)
 - [Fastly::Object::TlsSubscription](docs/TlsSubscription.md)
 - [Fastly::Object::TlsSubscriptionData](docs/TlsSubscriptionData.md)
 - [Fastly::Object::TlsSubscriptionDataAttributes](docs/TlsSubscriptionDataAttributes.md)
 - [Fastly::Object::TlsSubscriptionResponse](docs/TlsSubscriptionResponse.md)
 - [Fastly::Object::TlsSubscriptionResponseAttributes](docs/TlsSubscriptionResponseAttributes.md)
 - [Fastly::Object::TlsSubscriptionResponseAttributesAllOf](docs/TlsSubscriptionResponseAttributesAllOf.md)
 - [Fastly::Object::TlsSubscriptionResponseData](docs/TlsSubscriptionResponseData.md)
 - [Fastly::Object::TlsSubscriptionResponseDataAllOf](docs/TlsSubscriptionResponseDataAllOf.md)
 - [Fastly::Object::TlsSubscriptionsResponse](docs/TlsSubscriptionsResponse.md)
 - [Fastly::Object::TlsSubscriptionsResponseAllOf](docs/TlsSubscriptionsResponseAllOf.md)
 - [Fastly::Object::Token](docs/Token.md)
 - [Fastly::Object::TokenCreatedResponse](docs/TokenCreatedResponse.md)
 - [Fastly::Object::TokenCreatedResponseAllOf](docs/TokenCreatedResponseAllOf.md)
 - [Fastly::Object::TokenResponse](docs/TokenResponse.md)
 - [Fastly::Object::TokenResponseAllOf](docs/TokenResponseAllOf.md)
 - [Fastly::Object::TypeBillingAddress](docs/TypeBillingAddress.md)
 - [Fastly::Object::TypeContact](docs/TypeContact.md)
 - [Fastly::Object::TypeCustomer](docs/TypeCustomer.md)
 - [Fastly::Object::TypeEvent](docs/TypeEvent.md)
 - [Fastly::Object::TypeInvitation](docs/TypeInvitation.md)
 - [Fastly::Object::TypeResource](docs/TypeResource.md)
 - [Fastly::Object::TypeService](docs/TypeService.md)
 - [Fastly::Object::TypeServiceAuthorization](docs/TypeServiceAuthorization.md)
 - [Fastly::Object::TypeServiceInvitation](docs/TypeServiceInvitation.md)
 - [Fastly::Object::TypeStar](docs/TypeStar.md)
 - [Fastly::Object::TypeTlsActivation](docs/TypeTlsActivation.md)
 - [Fastly::Object::TypeTlsBulkCertificate](docs/TypeTlsBulkCertificate.md)
 - [Fastly::Object::TypeTlsCertificate](docs/TypeTlsCertificate.md)
 - [Fastly::Object::TypeTlsConfiguration](docs/TypeTlsConfiguration.md)
 - [Fastly::Object::TypeTlsDnsRecord](docs/TypeTlsDnsRecord.md)
 - [Fastly::Object::TypeTlsDomain](docs/TypeTlsDomain.md)
 - [Fastly::Object::TypeTlsPrivateKey](docs/TypeTlsPrivateKey.md)
 - [Fastly::Object::TypeTlsSubscription](docs/TypeTlsSubscription.md)
 - [Fastly::Object::TypeUser](docs/TypeUser.md)
 - [Fastly::Object::TypeWafActiveRule](docs/TypeWafActiveRule.md)
 - [Fastly::Object::TypeWafExclusion](docs/TypeWafExclusion.md)
 - [Fastly::Object::TypeWafFirewall](docs/TypeWafFirewall.md)
 - [Fastly::Object::TypeWafFirewallVersion](docs/TypeWafFirewallVersion.md)
 - [Fastly::Object::TypeWafRule](docs/TypeWafRule.md)
 - [Fastly::Object::TypeWafRuleRevision](docs/TypeWafRuleRevision.md)
 - [Fastly::Object::TypeWafTag](docs/TypeWafTag.md)
 - [Fastly::Object::UpdateBillingAddressRequest](docs/UpdateBillingAddressRequest.md)
 - [Fastly::Object::UpdateBillingAddressRequestData](docs/UpdateBillingAddressRequestData.md)
 - [Fastly::Object::User](docs/User.md)
 - [Fastly::Object::UserResponse](docs/UserResponse.md)
 - [Fastly::Object::UserResponseAllOf](docs/UserResponseAllOf.md)
 - [Fastly::Object::Vcl](docs/Vcl.md)
 - [Fastly::Object::VclDiff](docs/VclDiff.md)
 - [Fastly::Object::VclResponse](docs/VclResponse.md)
 - [Fastly::Object::Version](docs/Version.md)
 - [Fastly::Object::VersionCreateResponse](docs/VersionCreateResponse.md)
 - [Fastly::Object::VersionDetail](docs/VersionDetail.md)
 - [Fastly::Object::VersionDetailSettings](docs/VersionDetailSettings.md)
 - [Fastly::Object::VersionResponse](docs/VersionResponse.md)
 - [Fastly::Object::VersionResponseAllOf](docs/VersionResponseAllOf.md)
 - [Fastly::Object::WafActiveRule](docs/WafActiveRule.md)
 - [Fastly::Object::WafActiveRuleCreationResponse](docs/WafActiveRuleCreationResponse.md)
 - [Fastly::Object::WafActiveRuleData](docs/WafActiveRuleData.md)
 - [Fastly::Object::WafActiveRuleDataAttributes](docs/WafActiveRuleDataAttributes.md)
 - [Fastly::Object::WafActiveRuleResponse](docs/WafActiveRuleResponse.md)
 - [Fastly::Object::WafActiveRuleResponseData](docs/WafActiveRuleResponseData.md)
 - [Fastly::Object::WafActiveRuleResponseDataAllOf](docs/WafActiveRuleResponseDataAllOf.md)
 - [Fastly::Object::WafActiveRuleResponseDataAttributes](docs/WafActiveRuleResponseDataAttributes.md)
 - [Fastly::Object::WafActiveRuleResponseDataAttributesAllOf](docs/WafActiveRuleResponseDataAttributesAllOf.md)
 - [Fastly::Object::WafActiveRuleResponseDataRelationships](docs/WafActiveRuleResponseDataRelationships.md)
 - [Fastly::Object::WafActiveRulesResponse](docs/WafActiveRulesResponse.md)
 - [Fastly::Object::WafActiveRulesResponseAllOf](docs/WafActiveRulesResponseAllOf.md)
 - [Fastly::Object::WafExclusion](docs/WafExclusion.md)
 - [Fastly::Object::WafExclusionData](docs/WafExclusionData.md)
 - [Fastly::Object::WafExclusionDataAttributes](docs/WafExclusionDataAttributes.md)
 - [Fastly::Object::WafExclusionResponse](docs/WafExclusionResponse.md)
 - [Fastly::Object::WafExclusionResponseData](docs/WafExclusionResponseData.md)
 - [Fastly::Object::WafExclusionResponseDataAllOf](docs/WafExclusionResponseDataAllOf.md)
 - [Fastly::Object::WafExclusionResponseDataAttributes](docs/WafExclusionResponseDataAttributes.md)
 - [Fastly::Object::WafExclusionResponseDataAttributesAllOf](docs/WafExclusionResponseDataAttributesAllOf.md)
 - [Fastly::Object::WafExclusionResponseDataRelationships](docs/WafExclusionResponseDataRelationships.md)
 - [Fastly::Object::WafExclusionsResponse](docs/WafExclusionsResponse.md)
 - [Fastly::Object::WafExclusionsResponseAllOf](docs/WafExclusionsResponseAllOf.md)
 - [Fastly::Object::WafFirewall](docs/WafFirewall.md)
 - [Fastly::Object::WafFirewallData](docs/WafFirewallData.md)
 - [Fastly::Object::WafFirewallDataAttributes](docs/WafFirewallDataAttributes.md)
 - [Fastly::Object::WafFirewallResponse](docs/WafFirewallResponse.md)
 - [Fastly::Object::WafFirewallResponseData](docs/WafFirewallResponseData.md)
 - [Fastly::Object::WafFirewallResponseDataAllOf](docs/WafFirewallResponseDataAllOf.md)
 - [Fastly::Object::WafFirewallResponseDataAttributes](docs/WafFirewallResponseDataAttributes.md)
 - [Fastly::Object::WafFirewallResponseDataAttributesAllOf](docs/WafFirewallResponseDataAttributesAllOf.md)
 - [Fastly::Object::WafFirewallVersion](docs/WafFirewallVersion.md)
 - [Fastly::Object::WafFirewallVersionData](docs/WafFirewallVersionData.md)
 - [Fastly::Object::WafFirewallVersionDataAttributes](docs/WafFirewallVersionDataAttributes.md)
 - [Fastly::Object::WafFirewallVersionResponse](docs/WafFirewallVersionResponse.md)
 - [Fastly::Object::WafFirewallVersionResponseData](docs/WafFirewallVersionResponseData.md)
 - [Fastly::Object::WafFirewallVersionResponseDataAllOf](docs/WafFirewallVersionResponseDataAllOf.md)
 - [Fastly::Object::WafFirewallVersionResponseDataAttributes](docs/WafFirewallVersionResponseDataAttributes.md)
 - [Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf](docs/WafFirewallVersionResponseDataAttributesAllOf.md)
 - [Fastly::Object::WafFirewallVersionsResponse](docs/WafFirewallVersionsResponse.md)
 - [Fastly::Object::WafFirewallVersionsResponseAllOf](docs/WafFirewallVersionsResponseAllOf.md)
 - [Fastly::Object::WafFirewallsResponse](docs/WafFirewallsResponse.md)
 - [Fastly::Object::WafFirewallsResponseAllOf](docs/WafFirewallsResponseAllOf.md)
 - [Fastly::Object::WafRule](docs/WafRule.md)
 - [Fastly::Object::WafRuleAttributes](docs/WafRuleAttributes.md)
 - [Fastly::Object::WafRuleResponse](docs/WafRuleResponse.md)
 - [Fastly::Object::WafRuleResponseData](docs/WafRuleResponseData.md)
 - [Fastly::Object::WafRuleResponseDataAllOf](docs/WafRuleResponseDataAllOf.md)
 - [Fastly::Object::WafRuleRevision](docs/WafRuleRevision.md)
 - [Fastly::Object::WafRuleRevisionAttributes](docs/WafRuleRevisionAttributes.md)
 - [Fastly::Object::WafRuleRevisionOrLatest](docs/WafRuleRevisionOrLatest.md)
 - [Fastly::Object::WafRuleRevisionResponse](docs/WafRuleRevisionResponse.md)
 - [Fastly::Object::WafRuleRevisionResponseData](docs/WafRuleRevisionResponseData.md)
 - [Fastly::Object::WafRuleRevisionResponseDataAllOf](docs/WafRuleRevisionResponseDataAllOf.md)
 - [Fastly::Object::WafRuleRevisionsResponse](docs/WafRuleRevisionsResponse.md)
 - [Fastly::Object::WafRuleRevisionsResponseAllOf](docs/WafRuleRevisionsResponseAllOf.md)
 - [Fastly::Object::WafRulesResponse](docs/WafRulesResponse.md)
 - [Fastly::Object::WafRulesResponseAllOf](docs/WafRulesResponseAllOf.md)
 - [Fastly::Object::WafTag](docs/WafTag.md)
 - [Fastly::Object::WafTagAttributes](docs/WafTagAttributes.md)
 - [Fastly::Object::WafTagsResponse](docs/WafTagsResponse.md)
 - [Fastly::Object::WafTagsResponseAllOf](docs/WafTagsResponseAllOf.md)
 - [Fastly::Object::WafTagsResponseDataItem](docs/WafTagsResponseDataItem.md)


# DOCUMENTATION FOR AUTHORIZATION

## session_password_change

- **Type**: HTTP basic authentication

## token

- **Type**: API key
- **API key parameter name**: Fastly-Key
- **Location**: HTTP header

## url_purge

- **Type**: HTTP basic authentication

## username_and_password

- **Type**: HTTP basic authentication

