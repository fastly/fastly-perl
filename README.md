# NAME

WebService::Fastly::Role - a Moose role for the Fastly API

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
WebService::Fastly::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WebService::Fastly::Role';

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

The tokens will be placed in a L<WebService::Fastly::Configuration> instance
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

        $self->api_factory('Pet'); # returns a WebService::Fastly::PetApi instance

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
use WebService::Fastly::AclApi;
use WebService::Fastly::AclEntryApi;
use WebService::Fastly::ApexRedirectApi;
use WebService::Fastly::BackendApi;
use WebService::Fastly::BillingApi;
use WebService::Fastly::BillingAddressApi;
use WebService::Fastly::CacheSettingsApi;
use WebService::Fastly::ConditionApi;
use WebService::Fastly::ContactApi;
use WebService::Fastly::ContentApi;
use WebService::Fastly::CustomerApi;
use WebService::Fastly::DictionaryApi;
use WebService::Fastly::DictionaryInfoApi;
use WebService::Fastly::DictionaryItemApi;
use WebService::Fastly::DiffApi;
use WebService::Fastly::DirectorApi;
use WebService::Fastly::DirectorBackendApi;
use WebService::Fastly::DocsApi;
use WebService::Fastly::DomainApi;
use WebService::Fastly::DomainOwnershipsApi;
use WebService::Fastly::EventsApi;
use WebService::Fastly::GzipApi;
use WebService::Fastly::HeaderApi;
use WebService::Fastly::HealthcheckApi;
use WebService::Fastly::HistoricalApi;
use WebService::Fastly::Http3Api;
use WebService::Fastly::IamPermissionsApi;
use WebService::Fastly::IamRolesApi;
use WebService::Fastly::IamServiceGroupsApi;
use WebService::Fastly::IamUserGroupsApi;
use WebService::Fastly::InvitationsApi;
use WebService::Fastly::LoggingAzureblobApi;
use WebService::Fastly::LoggingBigqueryApi;
use WebService::Fastly::LoggingCloudfilesApi;
use WebService::Fastly::LoggingDatadogApi;
use WebService::Fastly::LoggingDigitaloceanApi;
use WebService::Fastly::LoggingElasticsearchApi;
use WebService::Fastly::LoggingFtpApi;
use WebService::Fastly::LoggingGcsApi;
use WebService::Fastly::LoggingHerokuApi;
use WebService::Fastly::LoggingHoneycombApi;
use WebService::Fastly::LoggingHttpsApi;
use WebService::Fastly::LoggingKafkaApi;
use WebService::Fastly::LoggingKinesisApi;
use WebService::Fastly::LoggingLogentriesApi;
use WebService::Fastly::LoggingLogglyApi;
use WebService::Fastly::LoggingLogshuttleApi;
use WebService::Fastly::LoggingNewrelicApi;
use WebService::Fastly::LoggingOpenstackApi;
use WebService::Fastly::LoggingPapertrailApi;
use WebService::Fastly::LoggingPubsubApi;
use WebService::Fastly::LoggingS3Api;
use WebService::Fastly::LoggingScalyrApi;
use WebService::Fastly::LoggingSftpApi;
use WebService::Fastly::LoggingSplunkApi;
use WebService::Fastly::LoggingSumologicApi;
use WebService::Fastly::LoggingSyslogApi;
use WebService::Fastly::PackageApi;
use WebService::Fastly::PoolApi;
use WebService::Fastly::PopApi;
use WebService::Fastly::PublicIpListApi;
use WebService::Fastly::PurgeApi;
use WebService::Fastly::RateLimiterApi;
use WebService::Fastly::RealtimeApi;
use WebService::Fastly::RequestSettingsApi;
use WebService::Fastly::ResourceApi;
use WebService::Fastly::ResponseObjectApi;
use WebService::Fastly::ServerApi;
use WebService::Fastly::ServiceApi;
use WebService::Fastly::ServiceAuthorizationsApi;
use WebService::Fastly::SettingsApi;
use WebService::Fastly::SnippetApi;
use WebService::Fastly::StarApi;
use WebService::Fastly::StatsApi;
use WebService::Fastly::TlsActivationsApi;
use WebService::Fastly::TlsBulkCertificatesApi;
use WebService::Fastly::TlsCertificatesApi;
use WebService::Fastly::TlsConfigurationsApi;
use WebService::Fastly::TlsDomainsApi;
use WebService::Fastly::TlsPrivateKeysApi;
use WebService::Fastly::TlsSubscriptionsApi;
use WebService::Fastly::TokensApi;
use WebService::Fastly::UserApi;
use WebService::Fastly::VclApi;
use WebService::Fastly::VclDiffApi;
use WebService::Fastly::VersionApi;
use WebService::Fastly::WafActiveRulesApi;
use WebService::Fastly::WafExclusionsApi;
use WebService::Fastly::WafFirewallVersionsApi;
use WebService::Fastly::WafFirewallsApi;
use WebService::Fastly::WafRuleRevisionsApi;
use WebService::Fastly::WafRulesApi;
use WebService::Fastly::WafTagsApi;

```

To load the models:
```perl
use WebService::Fastly::Object::Acl;
use WebService::Fastly::Object::AclEntry;
use WebService::Fastly::Object::AclEntryResponse;
use WebService::Fastly::Object::AclEntryResponseAllOf;
use WebService::Fastly::Object::AclResponse;
use WebService::Fastly::Object::AclResponseAllOf;
use WebService::Fastly::Object::ApexRedirect;
use WebService::Fastly::Object::ApexRedirectAllOf;
use WebService::Fastly::Object::Backend;
use WebService::Fastly::Object::BackendResponse;
use WebService::Fastly::Object::BackendResponseAllOf;
use WebService::Fastly::Object::Billing;
use WebService::Fastly::Object::BillingAddressAttributes;
use WebService::Fastly::Object::BillingAddressRequest;
use WebService::Fastly::Object::BillingAddressRequestData;
use WebService::Fastly::Object::BillingAddressResponse;
use WebService::Fastly::Object::BillingAddressResponseData;
use WebService::Fastly::Object::BillingEstimateResponse;
use WebService::Fastly::Object::BillingEstimateResponseAllOf;
use WebService::Fastly::Object::BillingEstimateResponseAllOfLine;
use WebService::Fastly::Object::BillingEstimateResponseAllOfLines;
use WebService::Fastly::Object::BillingResponse;
use WebService::Fastly::Object::BillingResponseAllOf;
use WebService::Fastly::Object::BillingResponseLineItem;
use WebService::Fastly::Object::BillingResponseLineItemAllOf;
use WebService::Fastly::Object::BillingStatus;
use WebService::Fastly::Object::BillingTotal;
use WebService::Fastly::Object::BillingTotalExtras;
use WebService::Fastly::Object::BulkUpdateAclEntriesRequest;
use WebService::Fastly::Object::BulkUpdateAclEntry;
use WebService::Fastly::Object::BulkUpdateAclEntryAllOf;
use WebService::Fastly::Object::BulkUpdateDictionaryItem;
use WebService::Fastly::Object::BulkUpdateDictionaryItemAllOf;
use WebService::Fastly::Object::BulkUpdateDictionaryListRequest;
use WebService::Fastly::Object::BulkWafActiveRules;
use WebService::Fastly::Object::CacheSetting;
use WebService::Fastly::Object::CacheSettingResponse;
use WebService::Fastly::Object::Condition;
use WebService::Fastly::Object::ConditionResponse;
use WebService::Fastly::Object::Contact;
use WebService::Fastly::Object::ContactResponse;
use WebService::Fastly::Object::ContactResponseAllOf;
use WebService::Fastly::Object::Content;
use WebService::Fastly::Object::Customer;
use WebService::Fastly::Object::CustomerResponse;
use WebService::Fastly::Object::CustomerResponseAllOf;
use WebService::Fastly::Object::Dictionary;
use WebService::Fastly::Object::DictionaryInfoResponse;
use WebService::Fastly::Object::DictionaryItem;
use WebService::Fastly::Object::DictionaryItemResponse;
use WebService::Fastly::Object::DictionaryItemResponseAllOf;
use WebService::Fastly::Object::DictionaryResponse;
use WebService::Fastly::Object::DictionaryResponseAllOf;
use WebService::Fastly::Object::DiffResponse;
use WebService::Fastly::Object::Director;
use WebService::Fastly::Object::DirectorBackend;
use WebService::Fastly::Object::DirectorBackendAllOf;
use WebService::Fastly::Object::DirectorResponse;
use WebService::Fastly::Object::Domain;
use WebService::Fastly::Object::DomainCheckItem;
use WebService::Fastly::Object::DomainResponse;
use WebService::Fastly::Object::Event;
use WebService::Fastly::Object::EventAttributes;
use WebService::Fastly::Object::EventResponse;
use WebService::Fastly::Object::EventsResponse;
use WebService::Fastly::Object::EventsResponseAllOf;
use WebService::Fastly::Object::GenericTokenError;
use WebService::Fastly::Object::Gzip;
use WebService::Fastly::Object::GzipResponse;
use WebService::Fastly::Object::Header;
use WebService::Fastly::Object::HeaderResponse;
use WebService::Fastly::Object::Healthcheck;
use WebService::Fastly::Object::HealthcheckResponse;
use WebService::Fastly::Object::Historical;
use WebService::Fastly::Object::HistoricalAggregateResponse;
use WebService::Fastly::Object::HistoricalAggregateResponseAllOf;
use WebService::Fastly::Object::HistoricalFieldAggregateResponse;
use WebService::Fastly::Object::HistoricalFieldAggregateResponseAllOf;
use WebService::Fastly::Object::HistoricalFieldResponse;
use WebService::Fastly::Object::HistoricalFieldResponseAllOf;
use WebService::Fastly::Object::HistoricalMeta;
use WebService::Fastly::Object::HistoricalRegionsResponse;
use WebService::Fastly::Object::HistoricalRegionsResponseAllOf;
use WebService::Fastly::Object::HistoricalResponse;
use WebService::Fastly::Object::HistoricalResponseAllOf;
use WebService::Fastly::Object::HistoricalUsageAggregateResponse;
use WebService::Fastly::Object::HistoricalUsageMonthResponse;
use WebService::Fastly::Object::HistoricalUsageMonthResponseAllOf;
use WebService::Fastly::Object::HistoricalUsageMonthResponseAllOfData;
use WebService::Fastly::Object::HistoricalUsageResults;
use WebService::Fastly::Object::HistoricalUsageServiceResponse;
use WebService::Fastly::Object::HistoricalUsageServiceResponseAllOf;
use WebService::Fastly::Object::Http3;
use WebService::Fastly::Object::Http3AllOf;
use WebService::Fastly::Object::IamPermission;
use WebService::Fastly::Object::IamRole;
use WebService::Fastly::Object::IamRoleAllOf;
use WebService::Fastly::Object::IamServiceGroup;
use WebService::Fastly::Object::IamServiceGroupAllOf;
use WebService::Fastly::Object::IamUserGroup;
use WebService::Fastly::Object::IamUserGroupAllOf;
use WebService::Fastly::Object::IncludedWithWafActiveRuleItem;
use WebService::Fastly::Object::IncludedWithWafExclusionItem;
use WebService::Fastly::Object::IncludedWithWafFirewallVersionItem;
use WebService::Fastly::Object::IncludedWithWafRuleItem;
use WebService::Fastly::Object::InlineResponse200;
use WebService::Fastly::Object::InlineResponse2001;
use WebService::Fastly::Object::Invitation;
use WebService::Fastly::Object::InvitationData;
use WebService::Fastly::Object::InvitationDataAttributes;
use WebService::Fastly::Object::InvitationResponse;
use WebService::Fastly::Object::InvitationResponseAllOf;
use WebService::Fastly::Object::InvitationResponseData;
use WebService::Fastly::Object::InvitationResponseDataAllOf;
use WebService::Fastly::Object::InvitationsResponse;
use WebService::Fastly::Object::InvitationsResponseAllOf;
use WebService::Fastly::Object::LoggingAddressAndPort;
use WebService::Fastly::Object::LoggingAzureblob;
use WebService::Fastly::Object::LoggingAzureblobAllOf;
use WebService::Fastly::Object::LoggingAzureblobResponse;
use WebService::Fastly::Object::LoggingBigquery;
use WebService::Fastly::Object::LoggingBigqueryAllOf;
use WebService::Fastly::Object::LoggingBigqueryResponse;
use WebService::Fastly::Object::LoggingCloudfiles;
use WebService::Fastly::Object::LoggingCloudfilesAllOf;
use WebService::Fastly::Object::LoggingCloudfilesResponse;
use WebService::Fastly::Object::LoggingCommon;
use WebService::Fastly::Object::LoggingDatadog;
use WebService::Fastly::Object::LoggingDatadogAllOf;
use WebService::Fastly::Object::LoggingDatadogResponse;
use WebService::Fastly::Object::LoggingDigitalocean;
use WebService::Fastly::Object::LoggingDigitaloceanAllOf;
use WebService::Fastly::Object::LoggingDigitaloceanResponse;
use WebService::Fastly::Object::LoggingElasticsearch;
use WebService::Fastly::Object::LoggingElasticsearchAllOf;
use WebService::Fastly::Object::LoggingElasticsearchResponse;
use WebService::Fastly::Object::LoggingFormatVersion;
use WebService::Fastly::Object::LoggingFtp;
use WebService::Fastly::Object::LoggingFtpAllOf;
use WebService::Fastly::Object::LoggingFtpResponse;
use WebService::Fastly::Object::LoggingGcs;
use WebService::Fastly::Object::LoggingGcsAllOf;
use WebService::Fastly::Object::LoggingGcsCommon;
use WebService::Fastly::Object::LoggingGcsResponse;
use WebService::Fastly::Object::LoggingGenericCommon;
use WebService::Fastly::Object::LoggingGooglePubsub;
use WebService::Fastly::Object::LoggingGooglePubsubAllOf;
use WebService::Fastly::Object::LoggingGooglePubsubResponse;
use WebService::Fastly::Object::LoggingHeroku;
use WebService::Fastly::Object::LoggingHerokuAllOf;
use WebService::Fastly::Object::LoggingHerokuResponse;
use WebService::Fastly::Object::LoggingHoneycomb;
use WebService::Fastly::Object::LoggingHoneycombAllOf;
use WebService::Fastly::Object::LoggingHoneycombResponse;
use WebService::Fastly::Object::LoggingHttps;
use WebService::Fastly::Object::LoggingHttpsAllOf;
use WebService::Fastly::Object::LoggingHttpsResponse;
use WebService::Fastly::Object::LoggingKafka;
use WebService::Fastly::Object::LoggingKafkaAllOf;
use WebService::Fastly::Object::LoggingKafkaResponse;
use WebService::Fastly::Object::LoggingKinesis;
use WebService::Fastly::Object::LoggingKinesisResponse;
use WebService::Fastly::Object::LoggingLogentries;
use WebService::Fastly::Object::LoggingLogentriesAllOf;
use WebService::Fastly::Object::LoggingLogentriesResponse;
use WebService::Fastly::Object::LoggingLoggly;
use WebService::Fastly::Object::LoggingLogglyAllOf;
use WebService::Fastly::Object::LoggingLogglyResponse;
use WebService::Fastly::Object::LoggingLogshuttle;
use WebService::Fastly::Object::LoggingLogshuttleAllOf;
use WebService::Fastly::Object::LoggingLogshuttleResponse;
use WebService::Fastly::Object::LoggingMessageType;
use WebService::Fastly::Object::LoggingNewrelic;
use WebService::Fastly::Object::LoggingNewrelicAllOf;
use WebService::Fastly::Object::LoggingNewrelicResponse;
use WebService::Fastly::Object::LoggingOpenstack;
use WebService::Fastly::Object::LoggingOpenstackAllOf;
use WebService::Fastly::Object::LoggingOpenstackResponse;
use WebService::Fastly::Object::LoggingPapertrail;
use WebService::Fastly::Object::LoggingPapertrailResponse;
use WebService::Fastly::Object::LoggingPlacement;
use WebService::Fastly::Object::LoggingRequestCapsCommon;
use WebService::Fastly::Object::LoggingS3;
use WebService::Fastly::Object::LoggingS3AllOf;
use WebService::Fastly::Object::LoggingS3Response;
use WebService::Fastly::Object::LoggingScalyr;
use WebService::Fastly::Object::LoggingScalyrAllOf;
use WebService::Fastly::Object::LoggingScalyrResponse;
use WebService::Fastly::Object::LoggingSftp;
use WebService::Fastly::Object::LoggingSftpAllOf;
use WebService::Fastly::Object::LoggingSftpResponse;
use WebService::Fastly::Object::LoggingSplunk;
use WebService::Fastly::Object::LoggingSplunkAllOf;
use WebService::Fastly::Object::LoggingSplunkResponse;
use WebService::Fastly::Object::LoggingSumologic;
use WebService::Fastly::Object::LoggingSumologicAllOf;
use WebService::Fastly::Object::LoggingSumologicResponse;
use WebService::Fastly::Object::LoggingSyslog;
use WebService::Fastly::Object::LoggingSyslogAllOf;
use WebService::Fastly::Object::LoggingSyslogResponse;
use WebService::Fastly::Object::LoggingTlsCommon;
use WebService::Fastly::Object::LoggingUseTls;
use WebService::Fastly::Object::ModelPackage;
use WebService::Fastly::Object::PackageMetadata;
use WebService::Fastly::Object::PackageResponse;
use WebService::Fastly::Object::PackageResponseAllOf;
use WebService::Fastly::Object::Pagination;
use WebService::Fastly::Object::PaginationLinks;
use WebService::Fastly::Object::PaginationMeta;
use WebService::Fastly::Object::Permission;
use WebService::Fastly::Object::Pool;
use WebService::Fastly::Object::PoolAllOf;
use WebService::Fastly::Object::PoolResponse;
use WebService::Fastly::Object::PoolResponseAllOf;
use WebService::Fastly::Object::Pop;
use WebService::Fastly::Object::PopCoordinates;
use WebService::Fastly::Object::PublicIpList;
use WebService::Fastly::Object::PurgeKeys;
use WebService::Fastly::Object::PurgeResponse;
use WebService::Fastly::Object::RateLimiter;
use WebService::Fastly::Object::RateLimiterResponse;
use WebService::Fastly::Object::RateLimiterResponse1;
use WebService::Fastly::Object::RateLimiterResponseAllOf;
use WebService::Fastly::Object::Realtime;
use WebService::Fastly::Object::RealtimeEntry;
use WebService::Fastly::Object::RealtimeMeasurements;
use WebService::Fastly::Object::RelationshipCommonName;
use WebService::Fastly::Object::RelationshipCustomer;
use WebService::Fastly::Object::RelationshipCustomerCustomer;
use WebService::Fastly::Object::RelationshipMemberCustomer;
use WebService::Fastly::Object::RelationshipMemberService;
use WebService::Fastly::Object::RelationshipMemberServiceInvitation;
use WebService::Fastly::Object::RelationshipMemberTlsActivation;
use WebService::Fastly::Object::RelationshipMemberTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipMemberTlsCertificate;
use WebService::Fastly::Object::RelationshipMemberTlsConfiguration;
use WebService::Fastly::Object::RelationshipMemberTlsDnsRecord;
use WebService::Fastly::Object::RelationshipMemberTlsDomain;
use WebService::Fastly::Object::RelationshipMemberTlsPrivateKey;
use WebService::Fastly::Object::RelationshipMemberTlsSubscription;
use WebService::Fastly::Object::RelationshipMemberWafActiveRule;
use WebService::Fastly::Object::RelationshipMemberWafFirewall;
use WebService::Fastly::Object::RelationshipMemberWafFirewallVersion;
use WebService::Fastly::Object::RelationshipMemberWafRule;
use WebService::Fastly::Object::RelationshipMemberWafRuleRevision;
use WebService::Fastly::Object::RelationshipMemberWafTag;
use WebService::Fastly::Object::RelationshipService;
use WebService::Fastly::Object::RelationshipServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceInvitationsCreate;
use WebService::Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceInvitationsServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceService;
use WebService::Fastly::Object::RelationshipServices;
use WebService::Fastly::Object::RelationshipTlsActivation;
use WebService::Fastly::Object::RelationshipTlsActivationTlsActivation;
use WebService::Fastly::Object::RelationshipTlsActivations;
use WebService::Fastly::Object::RelationshipTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipTlsBulkCertificates;
use WebService::Fastly::Object::RelationshipTlsCertificate;
use WebService::Fastly::Object::RelationshipTlsCertificateTlsCertificate;
use WebService::Fastly::Object::RelationshipTlsCertificates;
use WebService::Fastly::Object::RelationshipTlsConfiguration;
use WebService::Fastly::Object::RelationshipTlsConfigurationTlsConfiguration;
use WebService::Fastly::Object::RelationshipTlsConfigurations;
use WebService::Fastly::Object::RelationshipTlsDnsRecord;
use WebService::Fastly::Object::RelationshipTlsDnsRecordDnsRecord;
use WebService::Fastly::Object::RelationshipTlsDnsRecords;
use WebService::Fastly::Object::RelationshipTlsDomain;
use WebService::Fastly::Object::RelationshipTlsDomainTlsDomain;
use WebService::Fastly::Object::RelationshipTlsDomains;
use WebService::Fastly::Object::RelationshipTlsPrivateKey;
use WebService::Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey;
use WebService::Fastly::Object::RelationshipTlsPrivateKeys;
use WebService::Fastly::Object::RelationshipTlsSubscription;
use WebService::Fastly::Object::RelationshipTlsSubscriptionTlsSubscription;
use WebService::Fastly::Object::RelationshipTlsSubscriptions;
use WebService::Fastly::Object::RelationshipUser;
use WebService::Fastly::Object::RelationshipUserUser;
use WebService::Fastly::Object::RelationshipUserUserData;
use WebService::Fastly::Object::RelationshipWafActiveRules;
use WebService::Fastly::Object::RelationshipWafActiveRulesWafActiveRules;
use WebService::Fastly::Object::RelationshipWafFirewall;
use WebService::Fastly::Object::RelationshipWafFirewallVersion;
use WebService::Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion;
use WebService::Fastly::Object::RelationshipWafFirewallVersions;
use WebService::Fastly::Object::RelationshipWafFirewallWafFirewall;
use WebService::Fastly::Object::RelationshipWafRule;
use WebService::Fastly::Object::RelationshipWafRuleRevision;
use WebService::Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions;
use WebService::Fastly::Object::RelationshipWafRuleRevisions;
use WebService::Fastly::Object::RelationshipWafRuleWafRule;
use WebService::Fastly::Object::RelationshipWafRules;
use WebService::Fastly::Object::RelationshipWafTags;
use WebService::Fastly::Object::RelationshipWafTagsWafTags;
use WebService::Fastly::Object::RelationshipsForInvitation;
use WebService::Fastly::Object::RelationshipsForStar;
use WebService::Fastly::Object::RelationshipsForTlsActivation;
use WebService::Fastly::Object::RelationshipsForTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipsForTlsConfiguration;
use WebService::Fastly::Object::RelationshipsForTlsDomain;
use WebService::Fastly::Object::RelationshipsForTlsPrivateKey;
use WebService::Fastly::Object::RelationshipsForTlsSubscription;
use WebService::Fastly::Object::RelationshipsForWafActiveRule;
use WebService::Fastly::Object::RelationshipsForWafExclusion;
use WebService::Fastly::Object::RelationshipsForWafFirewallVersion;
use WebService::Fastly::Object::RelationshipsForWafRule;
use WebService::Fastly::Object::RequestSettings;
use WebService::Fastly::Object::RequestSettingsResponse;
use WebService::Fastly::Object::Resource;
use WebService::Fastly::Object::ResourceCreate;
use WebService::Fastly::Object::ResourceCreateAllOf;
use WebService::Fastly::Object::ResourceResponse;
use WebService::Fastly::Object::ResourceResponseAllOf;
use WebService::Fastly::Object::ResponseObject;
use WebService::Fastly::Object::ResponseObjectResponse;
use WebService::Fastly::Object::Results;
use WebService::Fastly::Object::RoleUser;
use WebService::Fastly::Object::SchemasContactResponse;
use WebService::Fastly::Object::SchemasSnippetResponse;
use WebService::Fastly::Object::SchemasUserResponse;
use WebService::Fastly::Object::SchemasVclResponse;
use WebService::Fastly::Object::SchemasVersion;
use WebService::Fastly::Object::SchemasVersionResponse;
use WebService::Fastly::Object::SchemasWafFirewallVersion;
use WebService::Fastly::Object::SchemasWafFirewallVersionData;
use WebService::Fastly::Object::Server;
use WebService::Fastly::Object::ServerResponse;
use WebService::Fastly::Object::ServerResponseAllOf;
use WebService::Fastly::Object::Service;
use WebService::Fastly::Object::ServiceAuthorization;
use WebService::Fastly::Object::ServiceAuthorizationData;
use WebService::Fastly::Object::ServiceAuthorizationDataAttributes;
use WebService::Fastly::Object::ServiceAuthorizationResponse;
use WebService::Fastly::Object::ServiceAuthorizationResponseData;
use WebService::Fastly::Object::ServiceAuthorizationResponseDataAllOf;
use WebService::Fastly::Object::ServiceAuthorizationsResponse;
use WebService::Fastly::Object::ServiceAuthorizationsResponseAllOf;
use WebService::Fastly::Object::ServiceCreate;
use WebService::Fastly::Object::ServiceCreateAllOf;
use WebService::Fastly::Object::ServiceDetail;
use WebService::Fastly::Object::ServiceDetailAllOf;
use WebService::Fastly::Object::ServiceIdAndVersion;
use WebService::Fastly::Object::ServiceInvitation;
use WebService::Fastly::Object::ServiceInvitationData;
use WebService::Fastly::Object::ServiceInvitationDataAttributes;
use WebService::Fastly::Object::ServiceInvitationResponse;
use WebService::Fastly::Object::ServiceInvitationResponseAllOf;
use WebService::Fastly::Object::ServiceInvitationResponseAllOfData;
use WebService::Fastly::Object::ServiceListResponse;
use WebService::Fastly::Object::ServiceListResponseAllOf;
use WebService::Fastly::Object::ServiceResponse;
use WebService::Fastly::Object::ServiceResponseAllOf;
use WebService::Fastly::Object::ServiceVersionDetail;
use WebService::Fastly::Object::ServiceVersionDetailOrNull;
use WebService::Fastly::Object::Settings;
use WebService::Fastly::Object::SettingsResponse;
use WebService::Fastly::Object::Snippet;
use WebService::Fastly::Object::SnippetResponse;
use WebService::Fastly::Object::SnippetResponseAllOf;
use WebService::Fastly::Object::Star;
use WebService::Fastly::Object::StarData;
use WebService::Fastly::Object::StarResponse;
use WebService::Fastly::Object::StarResponseAllOf;
use WebService::Fastly::Object::Stats;
use WebService::Fastly::Object::Timestamps;
use WebService::Fastly::Object::TimestampsNoDelete;
use WebService::Fastly::Object::TlsActivation;
use WebService::Fastly::Object::TlsActivationData;
use WebService::Fastly::Object::TlsActivationResponse;
use WebService::Fastly::Object::TlsActivationResponseData;
use WebService::Fastly::Object::TlsActivationResponseDataAllOf;
use WebService::Fastly::Object::TlsActivationsResponse;
use WebService::Fastly::Object::TlsActivationsResponseAllOf;
use WebService::Fastly::Object::TlsBulkCertificate;
use WebService::Fastly::Object::TlsBulkCertificateData;
use WebService::Fastly::Object::TlsBulkCertificateDataAttributes;
use WebService::Fastly::Object::TlsBulkCertificateResponse;
use WebService::Fastly::Object::TlsBulkCertificateResponseAttributes;
use WebService::Fastly::Object::TlsBulkCertificateResponseAttributesAllOf;
use WebService::Fastly::Object::TlsBulkCertificateResponseData;
use WebService::Fastly::Object::TlsBulkCertificateResponseDataAllOf;
use WebService::Fastly::Object::TlsBulkCertificatesResponse;
use WebService::Fastly::Object::TlsBulkCertificatesResponseAllOf;
use WebService::Fastly::Object::TlsCertificate;
use WebService::Fastly::Object::TlsCertificateData;
use WebService::Fastly::Object::TlsCertificateDataAttributes;
use WebService::Fastly::Object::TlsCertificateResponse;
use WebService::Fastly::Object::TlsCertificateResponseAttributes;
use WebService::Fastly::Object::TlsCertificateResponseAttributesAllOf;
use WebService::Fastly::Object::TlsCertificateResponseData;
use WebService::Fastly::Object::TlsCertificateResponseDataAllOf;
use WebService::Fastly::Object::TlsCertificatesResponse;
use WebService::Fastly::Object::TlsCertificatesResponseAllOf;
use WebService::Fastly::Object::TlsCommon;
use WebService::Fastly::Object::TlsConfiguration;
use WebService::Fastly::Object::TlsConfigurationData;
use WebService::Fastly::Object::TlsConfigurationDataAttributes;
use WebService::Fastly::Object::TlsConfigurationResponse;
use WebService::Fastly::Object::TlsConfigurationResponseAttributes;
use WebService::Fastly::Object::TlsConfigurationResponseAttributesAllOf;
use WebService::Fastly::Object::TlsConfigurationResponseData;
use WebService::Fastly::Object::TlsConfigurationResponseDataAllOf;
use WebService::Fastly::Object::TlsConfigurationsResponse;
use WebService::Fastly::Object::TlsConfigurationsResponseAllOf;
use WebService::Fastly::Object::TlsDnsRecord;
use WebService::Fastly::Object::TlsDomainData;
use WebService::Fastly::Object::TlsDomainsResponse;
use WebService::Fastly::Object::TlsDomainsResponseAllOf;
use WebService::Fastly::Object::TlsPrivateKey;
use WebService::Fastly::Object::TlsPrivateKeyData;
use WebService::Fastly::Object::TlsPrivateKeyDataAttributes;
use WebService::Fastly::Object::TlsPrivateKeyResponse;
use WebService::Fastly::Object::TlsPrivateKeyResponseAttributes;
use WebService::Fastly::Object::TlsPrivateKeyResponseAttributesAllOf;
use WebService::Fastly::Object::TlsPrivateKeyResponseData;
use WebService::Fastly::Object::TlsPrivateKeysResponse;
use WebService::Fastly::Object::TlsPrivateKeysResponseAllOf;
use WebService::Fastly::Object::TlsSubscription;
use WebService::Fastly::Object::TlsSubscriptionData;
use WebService::Fastly::Object::TlsSubscriptionDataAttributes;
use WebService::Fastly::Object::TlsSubscriptionResponse;
use WebService::Fastly::Object::TlsSubscriptionResponseAttributes;
use WebService::Fastly::Object::TlsSubscriptionResponseAttributesAllOf;
use WebService::Fastly::Object::TlsSubscriptionResponseData;
use WebService::Fastly::Object::TlsSubscriptionResponseDataAllOf;
use WebService::Fastly::Object::TlsSubscriptionsResponse;
use WebService::Fastly::Object::TlsSubscriptionsResponseAllOf;
use WebService::Fastly::Object::Token;
use WebService::Fastly::Object::TokenCreatedResponse;
use WebService::Fastly::Object::TokenCreatedResponseAllOf;
use WebService::Fastly::Object::TokenResponse;
use WebService::Fastly::Object::TokenResponseAllOf;
use WebService::Fastly::Object::TypeBillingAddress;
use WebService::Fastly::Object::TypeContact;
use WebService::Fastly::Object::TypeCustomer;
use WebService::Fastly::Object::TypeEvent;
use WebService::Fastly::Object::TypeInvitation;
use WebService::Fastly::Object::TypeResource;
use WebService::Fastly::Object::TypeService;
use WebService::Fastly::Object::TypeServiceAuthorization;
use WebService::Fastly::Object::TypeServiceInvitation;
use WebService::Fastly::Object::TypeStar;
use WebService::Fastly::Object::TypeTlsActivation;
use WebService::Fastly::Object::TypeTlsBulkCertificate;
use WebService::Fastly::Object::TypeTlsCertificate;
use WebService::Fastly::Object::TypeTlsConfiguration;
use WebService::Fastly::Object::TypeTlsDnsRecord;
use WebService::Fastly::Object::TypeTlsDomain;
use WebService::Fastly::Object::TypeTlsPrivateKey;
use WebService::Fastly::Object::TypeTlsSubscription;
use WebService::Fastly::Object::TypeUser;
use WebService::Fastly::Object::TypeWafActiveRule;
use WebService::Fastly::Object::TypeWafExclusion;
use WebService::Fastly::Object::TypeWafFirewall;
use WebService::Fastly::Object::TypeWafFirewallVersion;
use WebService::Fastly::Object::TypeWafRule;
use WebService::Fastly::Object::TypeWafRuleRevision;
use WebService::Fastly::Object::TypeWafTag;
use WebService::Fastly::Object::UpdateBillingAddressRequest;
use WebService::Fastly::Object::UpdateBillingAddressRequestData;
use WebService::Fastly::Object::User;
use WebService::Fastly::Object::UserResponse;
use WebService::Fastly::Object::UserResponseAllOf;
use WebService::Fastly::Object::Vcl;
use WebService::Fastly::Object::VclDiff;
use WebService::Fastly::Object::VclResponse;
use WebService::Fastly::Object::Version;
use WebService::Fastly::Object::VersionCreateResponse;
use WebService::Fastly::Object::VersionDetail;
use WebService::Fastly::Object::VersionResponse;
use WebService::Fastly::Object::VersionResponseAllOf;
use WebService::Fastly::Object::WafActiveRule;
use WebService::Fastly::Object::WafActiveRuleCreationResponse;
use WebService::Fastly::Object::WafActiveRuleData;
use WebService::Fastly::Object::WafActiveRuleDataAttributes;
use WebService::Fastly::Object::WafActiveRuleResponse;
use WebService::Fastly::Object::WafActiveRuleResponseData;
use WebService::Fastly::Object::WafActiveRuleResponseDataAllOf;
use WebService::Fastly::Object::WafActiveRuleResponseDataAttributes;
use WebService::Fastly::Object::WafActiveRuleResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafActiveRuleResponseDataRelationships;
use WebService::Fastly::Object::WafActiveRulesResponse;
use WebService::Fastly::Object::WafActiveRulesResponseAllOf;
use WebService::Fastly::Object::WafExclusion;
use WebService::Fastly::Object::WafExclusionData;
use WebService::Fastly::Object::WafExclusionDataAttributes;
use WebService::Fastly::Object::WafExclusionResponse;
use WebService::Fastly::Object::WafExclusionResponseData;
use WebService::Fastly::Object::WafExclusionResponseDataAllOf;
use WebService::Fastly::Object::WafExclusionResponseDataAttributes;
use WebService::Fastly::Object::WafExclusionResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafExclusionResponseDataRelationships;
use WebService::Fastly::Object::WafExclusionsResponse;
use WebService::Fastly::Object::WafExclusionsResponseAllOf;
use WebService::Fastly::Object::WafFirewall;
use WebService::Fastly::Object::WafFirewallData;
use WebService::Fastly::Object::WafFirewallDataAttributes;
use WebService::Fastly::Object::WafFirewallResponse;
use WebService::Fastly::Object::WafFirewallResponseData;
use WebService::Fastly::Object::WafFirewallResponseDataAllOf;
use WebService::Fastly::Object::WafFirewallResponseDataAttributes;
use WebService::Fastly::Object::WafFirewallResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafFirewallVersion;
use WebService::Fastly::Object::WafFirewallVersionData;
use WebService::Fastly::Object::WafFirewallVersionDataAttributes;
use WebService::Fastly::Object::WafFirewallVersionResponse;
use WebService::Fastly::Object::WafFirewallVersionResponseData;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAllOf;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAttributes;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafFirewallVersionsResponse;
use WebService::Fastly::Object::WafFirewallVersionsResponseAllOf;
use WebService::Fastly::Object::WafFirewallsResponse;
use WebService::Fastly::Object::WafFirewallsResponseAllOf;
use WebService::Fastly::Object::WafRule;
use WebService::Fastly::Object::WafRuleAttributes;
use WebService::Fastly::Object::WafRuleResponse;
use WebService::Fastly::Object::WafRuleResponseData;
use WebService::Fastly::Object::WafRuleResponseDataAllOf;
use WebService::Fastly::Object::WafRuleRevision;
use WebService::Fastly::Object::WafRuleRevisionAttributes;
use WebService::Fastly::Object::WafRuleRevisionOrLatest;
use WebService::Fastly::Object::WafRuleRevisionResponse;
use WebService::Fastly::Object::WafRuleRevisionResponseData;
use WebService::Fastly::Object::WafRuleRevisionResponseDataAllOf;
use WebService::Fastly::Object::WafRuleRevisionsResponse;
use WebService::Fastly::Object::WafRuleRevisionsResponseAllOf;
use WebService::Fastly::Object::WafRulesResponse;
use WebService::Fastly::Object::WafRulesResponseAllOf;
use WebService::Fastly::Object::WafTag;
use WebService::Fastly::Object::WafTagAttributes;
use WebService::Fastly::Object::WafTagsResponse;
use WebService::Fastly::Object::WafTagsResponseAllOf;
use WebService::Fastly::Object::WafTagsResponseDataItem;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WebService::Fastly::AclApi;
use WebService::Fastly::AclEntryApi;
use WebService::Fastly::ApexRedirectApi;
use WebService::Fastly::BackendApi;
use WebService::Fastly::BillingApi;
use WebService::Fastly::BillingAddressApi;
use WebService::Fastly::CacheSettingsApi;
use WebService::Fastly::ConditionApi;
use WebService::Fastly::ContactApi;
use WebService::Fastly::ContentApi;
use WebService::Fastly::CustomerApi;
use WebService::Fastly::DictionaryApi;
use WebService::Fastly::DictionaryInfoApi;
use WebService::Fastly::DictionaryItemApi;
use WebService::Fastly::DiffApi;
use WebService::Fastly::DirectorApi;
use WebService::Fastly::DirectorBackendApi;
use WebService::Fastly::DocsApi;
use WebService::Fastly::DomainApi;
use WebService::Fastly::DomainOwnershipsApi;
use WebService::Fastly::EventsApi;
use WebService::Fastly::GzipApi;
use WebService::Fastly::HeaderApi;
use WebService::Fastly::HealthcheckApi;
use WebService::Fastly::HistoricalApi;
use WebService::Fastly::Http3Api;
use WebService::Fastly::IamPermissionsApi;
use WebService::Fastly::IamRolesApi;
use WebService::Fastly::IamServiceGroupsApi;
use WebService::Fastly::IamUserGroupsApi;
use WebService::Fastly::InvitationsApi;
use WebService::Fastly::LoggingAzureblobApi;
use WebService::Fastly::LoggingBigqueryApi;
use WebService::Fastly::LoggingCloudfilesApi;
use WebService::Fastly::LoggingDatadogApi;
use WebService::Fastly::LoggingDigitaloceanApi;
use WebService::Fastly::LoggingElasticsearchApi;
use WebService::Fastly::LoggingFtpApi;
use WebService::Fastly::LoggingGcsApi;
use WebService::Fastly::LoggingHerokuApi;
use WebService::Fastly::LoggingHoneycombApi;
use WebService::Fastly::LoggingHttpsApi;
use WebService::Fastly::LoggingKafkaApi;
use WebService::Fastly::LoggingKinesisApi;
use WebService::Fastly::LoggingLogentriesApi;
use WebService::Fastly::LoggingLogglyApi;
use WebService::Fastly::LoggingLogshuttleApi;
use WebService::Fastly::LoggingNewrelicApi;
use WebService::Fastly::LoggingOpenstackApi;
use WebService::Fastly::LoggingPapertrailApi;
use WebService::Fastly::LoggingPubsubApi;
use WebService::Fastly::LoggingS3Api;
use WebService::Fastly::LoggingScalyrApi;
use WebService::Fastly::LoggingSftpApi;
use WebService::Fastly::LoggingSplunkApi;
use WebService::Fastly::LoggingSumologicApi;
use WebService::Fastly::LoggingSyslogApi;
use WebService::Fastly::PackageApi;
use WebService::Fastly::PoolApi;
use WebService::Fastly::PopApi;
use WebService::Fastly::PublicIpListApi;
use WebService::Fastly::PurgeApi;
use WebService::Fastly::RateLimiterApi;
use WebService::Fastly::RealtimeApi;
use WebService::Fastly::RequestSettingsApi;
use WebService::Fastly::ResourceApi;
use WebService::Fastly::ResponseObjectApi;
use WebService::Fastly::ServerApi;
use WebService::Fastly::ServiceApi;
use WebService::Fastly::ServiceAuthorizationsApi;
use WebService::Fastly::SettingsApi;
use WebService::Fastly::SnippetApi;
use WebService::Fastly::StarApi;
use WebService::Fastly::StatsApi;
use WebService::Fastly::TlsActivationsApi;
use WebService::Fastly::TlsBulkCertificatesApi;
use WebService::Fastly::TlsCertificatesApi;
use WebService::Fastly::TlsConfigurationsApi;
use WebService::Fastly::TlsDomainsApi;
use WebService::Fastly::TlsPrivateKeysApi;
use WebService::Fastly::TlsSubscriptionsApi;
use WebService::Fastly::TokensApi;
use WebService::Fastly::UserApi;
use WebService::Fastly::VclApi;
use WebService::Fastly::VclDiffApi;
use WebService::Fastly::VersionApi;
use WebService::Fastly::WafActiveRulesApi;
use WebService::Fastly::WafExclusionsApi;
use WebService::Fastly::WafFirewallVersionsApi;
use WebService::Fastly::WafFirewallsApi;
use WebService::Fastly::WafRuleRevisionsApi;
use WebService::Fastly::WafRulesApi;
use WebService::Fastly::WafTagsApi;

# load the models
use WebService::Fastly::Object::Acl;
use WebService::Fastly::Object::AclEntry;
use WebService::Fastly::Object::AclEntryResponse;
use WebService::Fastly::Object::AclEntryResponseAllOf;
use WebService::Fastly::Object::AclResponse;
use WebService::Fastly::Object::AclResponseAllOf;
use WebService::Fastly::Object::ApexRedirect;
use WebService::Fastly::Object::ApexRedirectAllOf;
use WebService::Fastly::Object::Backend;
use WebService::Fastly::Object::BackendResponse;
use WebService::Fastly::Object::BackendResponseAllOf;
use WebService::Fastly::Object::Billing;
use WebService::Fastly::Object::BillingAddressAttributes;
use WebService::Fastly::Object::BillingAddressRequest;
use WebService::Fastly::Object::BillingAddressRequestData;
use WebService::Fastly::Object::BillingAddressResponse;
use WebService::Fastly::Object::BillingAddressResponseData;
use WebService::Fastly::Object::BillingEstimateResponse;
use WebService::Fastly::Object::BillingEstimateResponseAllOf;
use WebService::Fastly::Object::BillingEstimateResponseAllOfLine;
use WebService::Fastly::Object::BillingEstimateResponseAllOfLines;
use WebService::Fastly::Object::BillingResponse;
use WebService::Fastly::Object::BillingResponseAllOf;
use WebService::Fastly::Object::BillingResponseLineItem;
use WebService::Fastly::Object::BillingResponseLineItemAllOf;
use WebService::Fastly::Object::BillingStatus;
use WebService::Fastly::Object::BillingTotal;
use WebService::Fastly::Object::BillingTotalExtras;
use WebService::Fastly::Object::BulkUpdateAclEntriesRequest;
use WebService::Fastly::Object::BulkUpdateAclEntry;
use WebService::Fastly::Object::BulkUpdateAclEntryAllOf;
use WebService::Fastly::Object::BulkUpdateDictionaryItem;
use WebService::Fastly::Object::BulkUpdateDictionaryItemAllOf;
use WebService::Fastly::Object::BulkUpdateDictionaryListRequest;
use WebService::Fastly::Object::BulkWafActiveRules;
use WebService::Fastly::Object::CacheSetting;
use WebService::Fastly::Object::CacheSettingResponse;
use WebService::Fastly::Object::Condition;
use WebService::Fastly::Object::ConditionResponse;
use WebService::Fastly::Object::Contact;
use WebService::Fastly::Object::ContactResponse;
use WebService::Fastly::Object::ContactResponseAllOf;
use WebService::Fastly::Object::Content;
use WebService::Fastly::Object::Customer;
use WebService::Fastly::Object::CustomerResponse;
use WebService::Fastly::Object::CustomerResponseAllOf;
use WebService::Fastly::Object::Dictionary;
use WebService::Fastly::Object::DictionaryInfoResponse;
use WebService::Fastly::Object::DictionaryItem;
use WebService::Fastly::Object::DictionaryItemResponse;
use WebService::Fastly::Object::DictionaryItemResponseAllOf;
use WebService::Fastly::Object::DictionaryResponse;
use WebService::Fastly::Object::DictionaryResponseAllOf;
use WebService::Fastly::Object::DiffResponse;
use WebService::Fastly::Object::Director;
use WebService::Fastly::Object::DirectorBackend;
use WebService::Fastly::Object::DirectorBackendAllOf;
use WebService::Fastly::Object::DirectorResponse;
use WebService::Fastly::Object::Domain;
use WebService::Fastly::Object::DomainCheckItem;
use WebService::Fastly::Object::DomainResponse;
use WebService::Fastly::Object::Event;
use WebService::Fastly::Object::EventAttributes;
use WebService::Fastly::Object::EventResponse;
use WebService::Fastly::Object::EventsResponse;
use WebService::Fastly::Object::EventsResponseAllOf;
use WebService::Fastly::Object::GenericTokenError;
use WebService::Fastly::Object::Gzip;
use WebService::Fastly::Object::GzipResponse;
use WebService::Fastly::Object::Header;
use WebService::Fastly::Object::HeaderResponse;
use WebService::Fastly::Object::Healthcheck;
use WebService::Fastly::Object::HealthcheckResponse;
use WebService::Fastly::Object::Historical;
use WebService::Fastly::Object::HistoricalAggregateResponse;
use WebService::Fastly::Object::HistoricalAggregateResponseAllOf;
use WebService::Fastly::Object::HistoricalFieldAggregateResponse;
use WebService::Fastly::Object::HistoricalFieldAggregateResponseAllOf;
use WebService::Fastly::Object::HistoricalFieldResponse;
use WebService::Fastly::Object::HistoricalFieldResponseAllOf;
use WebService::Fastly::Object::HistoricalMeta;
use WebService::Fastly::Object::HistoricalRegionsResponse;
use WebService::Fastly::Object::HistoricalRegionsResponseAllOf;
use WebService::Fastly::Object::HistoricalResponse;
use WebService::Fastly::Object::HistoricalResponseAllOf;
use WebService::Fastly::Object::HistoricalUsageAggregateResponse;
use WebService::Fastly::Object::HistoricalUsageMonthResponse;
use WebService::Fastly::Object::HistoricalUsageMonthResponseAllOf;
use WebService::Fastly::Object::HistoricalUsageMonthResponseAllOfData;
use WebService::Fastly::Object::HistoricalUsageResults;
use WebService::Fastly::Object::HistoricalUsageServiceResponse;
use WebService::Fastly::Object::HistoricalUsageServiceResponseAllOf;
use WebService::Fastly::Object::Http3;
use WebService::Fastly::Object::Http3AllOf;
use WebService::Fastly::Object::IamPermission;
use WebService::Fastly::Object::IamRole;
use WebService::Fastly::Object::IamRoleAllOf;
use WebService::Fastly::Object::IamServiceGroup;
use WebService::Fastly::Object::IamServiceGroupAllOf;
use WebService::Fastly::Object::IamUserGroup;
use WebService::Fastly::Object::IamUserGroupAllOf;
use WebService::Fastly::Object::IncludedWithWafActiveRuleItem;
use WebService::Fastly::Object::IncludedWithWafExclusionItem;
use WebService::Fastly::Object::IncludedWithWafFirewallVersionItem;
use WebService::Fastly::Object::IncludedWithWafRuleItem;
use WebService::Fastly::Object::InlineResponse200;
use WebService::Fastly::Object::InlineResponse2001;
use WebService::Fastly::Object::Invitation;
use WebService::Fastly::Object::InvitationData;
use WebService::Fastly::Object::InvitationDataAttributes;
use WebService::Fastly::Object::InvitationResponse;
use WebService::Fastly::Object::InvitationResponseAllOf;
use WebService::Fastly::Object::InvitationResponseData;
use WebService::Fastly::Object::InvitationResponseDataAllOf;
use WebService::Fastly::Object::InvitationsResponse;
use WebService::Fastly::Object::InvitationsResponseAllOf;
use WebService::Fastly::Object::LoggingAddressAndPort;
use WebService::Fastly::Object::LoggingAzureblob;
use WebService::Fastly::Object::LoggingAzureblobAllOf;
use WebService::Fastly::Object::LoggingAzureblobResponse;
use WebService::Fastly::Object::LoggingBigquery;
use WebService::Fastly::Object::LoggingBigqueryAllOf;
use WebService::Fastly::Object::LoggingBigqueryResponse;
use WebService::Fastly::Object::LoggingCloudfiles;
use WebService::Fastly::Object::LoggingCloudfilesAllOf;
use WebService::Fastly::Object::LoggingCloudfilesResponse;
use WebService::Fastly::Object::LoggingCommon;
use WebService::Fastly::Object::LoggingDatadog;
use WebService::Fastly::Object::LoggingDatadogAllOf;
use WebService::Fastly::Object::LoggingDatadogResponse;
use WebService::Fastly::Object::LoggingDigitalocean;
use WebService::Fastly::Object::LoggingDigitaloceanAllOf;
use WebService::Fastly::Object::LoggingDigitaloceanResponse;
use WebService::Fastly::Object::LoggingElasticsearch;
use WebService::Fastly::Object::LoggingElasticsearchAllOf;
use WebService::Fastly::Object::LoggingElasticsearchResponse;
use WebService::Fastly::Object::LoggingFormatVersion;
use WebService::Fastly::Object::LoggingFtp;
use WebService::Fastly::Object::LoggingFtpAllOf;
use WebService::Fastly::Object::LoggingFtpResponse;
use WebService::Fastly::Object::LoggingGcs;
use WebService::Fastly::Object::LoggingGcsAllOf;
use WebService::Fastly::Object::LoggingGcsCommon;
use WebService::Fastly::Object::LoggingGcsResponse;
use WebService::Fastly::Object::LoggingGenericCommon;
use WebService::Fastly::Object::LoggingGooglePubsub;
use WebService::Fastly::Object::LoggingGooglePubsubAllOf;
use WebService::Fastly::Object::LoggingGooglePubsubResponse;
use WebService::Fastly::Object::LoggingHeroku;
use WebService::Fastly::Object::LoggingHerokuAllOf;
use WebService::Fastly::Object::LoggingHerokuResponse;
use WebService::Fastly::Object::LoggingHoneycomb;
use WebService::Fastly::Object::LoggingHoneycombAllOf;
use WebService::Fastly::Object::LoggingHoneycombResponse;
use WebService::Fastly::Object::LoggingHttps;
use WebService::Fastly::Object::LoggingHttpsAllOf;
use WebService::Fastly::Object::LoggingHttpsResponse;
use WebService::Fastly::Object::LoggingKafka;
use WebService::Fastly::Object::LoggingKafkaAllOf;
use WebService::Fastly::Object::LoggingKafkaResponse;
use WebService::Fastly::Object::LoggingKinesis;
use WebService::Fastly::Object::LoggingKinesisResponse;
use WebService::Fastly::Object::LoggingLogentries;
use WebService::Fastly::Object::LoggingLogentriesAllOf;
use WebService::Fastly::Object::LoggingLogentriesResponse;
use WebService::Fastly::Object::LoggingLoggly;
use WebService::Fastly::Object::LoggingLogglyAllOf;
use WebService::Fastly::Object::LoggingLogglyResponse;
use WebService::Fastly::Object::LoggingLogshuttle;
use WebService::Fastly::Object::LoggingLogshuttleAllOf;
use WebService::Fastly::Object::LoggingLogshuttleResponse;
use WebService::Fastly::Object::LoggingMessageType;
use WebService::Fastly::Object::LoggingNewrelic;
use WebService::Fastly::Object::LoggingNewrelicAllOf;
use WebService::Fastly::Object::LoggingNewrelicResponse;
use WebService::Fastly::Object::LoggingOpenstack;
use WebService::Fastly::Object::LoggingOpenstackAllOf;
use WebService::Fastly::Object::LoggingOpenstackResponse;
use WebService::Fastly::Object::LoggingPapertrail;
use WebService::Fastly::Object::LoggingPapertrailResponse;
use WebService::Fastly::Object::LoggingPlacement;
use WebService::Fastly::Object::LoggingRequestCapsCommon;
use WebService::Fastly::Object::LoggingS3;
use WebService::Fastly::Object::LoggingS3AllOf;
use WebService::Fastly::Object::LoggingS3Response;
use WebService::Fastly::Object::LoggingScalyr;
use WebService::Fastly::Object::LoggingScalyrAllOf;
use WebService::Fastly::Object::LoggingScalyrResponse;
use WebService::Fastly::Object::LoggingSftp;
use WebService::Fastly::Object::LoggingSftpAllOf;
use WebService::Fastly::Object::LoggingSftpResponse;
use WebService::Fastly::Object::LoggingSplunk;
use WebService::Fastly::Object::LoggingSplunkAllOf;
use WebService::Fastly::Object::LoggingSplunkResponse;
use WebService::Fastly::Object::LoggingSumologic;
use WebService::Fastly::Object::LoggingSumologicAllOf;
use WebService::Fastly::Object::LoggingSumologicResponse;
use WebService::Fastly::Object::LoggingSyslog;
use WebService::Fastly::Object::LoggingSyslogAllOf;
use WebService::Fastly::Object::LoggingSyslogResponse;
use WebService::Fastly::Object::LoggingTlsCommon;
use WebService::Fastly::Object::LoggingUseTls;
use WebService::Fastly::Object::ModelPackage;
use WebService::Fastly::Object::PackageMetadata;
use WebService::Fastly::Object::PackageResponse;
use WebService::Fastly::Object::PackageResponseAllOf;
use WebService::Fastly::Object::Pagination;
use WebService::Fastly::Object::PaginationLinks;
use WebService::Fastly::Object::PaginationMeta;
use WebService::Fastly::Object::Permission;
use WebService::Fastly::Object::Pool;
use WebService::Fastly::Object::PoolAllOf;
use WebService::Fastly::Object::PoolResponse;
use WebService::Fastly::Object::PoolResponseAllOf;
use WebService::Fastly::Object::Pop;
use WebService::Fastly::Object::PopCoordinates;
use WebService::Fastly::Object::PublicIpList;
use WebService::Fastly::Object::PurgeKeys;
use WebService::Fastly::Object::PurgeResponse;
use WebService::Fastly::Object::RateLimiter;
use WebService::Fastly::Object::RateLimiterResponse;
use WebService::Fastly::Object::RateLimiterResponse1;
use WebService::Fastly::Object::RateLimiterResponseAllOf;
use WebService::Fastly::Object::Realtime;
use WebService::Fastly::Object::RealtimeEntry;
use WebService::Fastly::Object::RealtimeMeasurements;
use WebService::Fastly::Object::RelationshipCommonName;
use WebService::Fastly::Object::RelationshipCustomer;
use WebService::Fastly::Object::RelationshipCustomerCustomer;
use WebService::Fastly::Object::RelationshipMemberCustomer;
use WebService::Fastly::Object::RelationshipMemberService;
use WebService::Fastly::Object::RelationshipMemberServiceInvitation;
use WebService::Fastly::Object::RelationshipMemberTlsActivation;
use WebService::Fastly::Object::RelationshipMemberTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipMemberTlsCertificate;
use WebService::Fastly::Object::RelationshipMemberTlsConfiguration;
use WebService::Fastly::Object::RelationshipMemberTlsDnsRecord;
use WebService::Fastly::Object::RelationshipMemberTlsDomain;
use WebService::Fastly::Object::RelationshipMemberTlsPrivateKey;
use WebService::Fastly::Object::RelationshipMemberTlsSubscription;
use WebService::Fastly::Object::RelationshipMemberWafActiveRule;
use WebService::Fastly::Object::RelationshipMemberWafFirewall;
use WebService::Fastly::Object::RelationshipMemberWafFirewallVersion;
use WebService::Fastly::Object::RelationshipMemberWafRule;
use WebService::Fastly::Object::RelationshipMemberWafRuleRevision;
use WebService::Fastly::Object::RelationshipMemberWafTag;
use WebService::Fastly::Object::RelationshipService;
use WebService::Fastly::Object::RelationshipServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceInvitationsCreate;
use WebService::Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceInvitationsServiceInvitations;
use WebService::Fastly::Object::RelationshipServiceService;
use WebService::Fastly::Object::RelationshipServices;
use WebService::Fastly::Object::RelationshipTlsActivation;
use WebService::Fastly::Object::RelationshipTlsActivationTlsActivation;
use WebService::Fastly::Object::RelationshipTlsActivations;
use WebService::Fastly::Object::RelationshipTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipTlsBulkCertificates;
use WebService::Fastly::Object::RelationshipTlsCertificate;
use WebService::Fastly::Object::RelationshipTlsCertificateTlsCertificate;
use WebService::Fastly::Object::RelationshipTlsCertificates;
use WebService::Fastly::Object::RelationshipTlsConfiguration;
use WebService::Fastly::Object::RelationshipTlsConfigurationTlsConfiguration;
use WebService::Fastly::Object::RelationshipTlsConfigurations;
use WebService::Fastly::Object::RelationshipTlsDnsRecord;
use WebService::Fastly::Object::RelationshipTlsDnsRecordDnsRecord;
use WebService::Fastly::Object::RelationshipTlsDnsRecords;
use WebService::Fastly::Object::RelationshipTlsDomain;
use WebService::Fastly::Object::RelationshipTlsDomainTlsDomain;
use WebService::Fastly::Object::RelationshipTlsDomains;
use WebService::Fastly::Object::RelationshipTlsPrivateKey;
use WebService::Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey;
use WebService::Fastly::Object::RelationshipTlsPrivateKeys;
use WebService::Fastly::Object::RelationshipTlsSubscription;
use WebService::Fastly::Object::RelationshipTlsSubscriptionTlsSubscription;
use WebService::Fastly::Object::RelationshipTlsSubscriptions;
use WebService::Fastly::Object::RelationshipUser;
use WebService::Fastly::Object::RelationshipUserUser;
use WebService::Fastly::Object::RelationshipUserUserData;
use WebService::Fastly::Object::RelationshipWafActiveRules;
use WebService::Fastly::Object::RelationshipWafActiveRulesWafActiveRules;
use WebService::Fastly::Object::RelationshipWafFirewall;
use WebService::Fastly::Object::RelationshipWafFirewallVersion;
use WebService::Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion;
use WebService::Fastly::Object::RelationshipWafFirewallVersions;
use WebService::Fastly::Object::RelationshipWafFirewallWafFirewall;
use WebService::Fastly::Object::RelationshipWafRule;
use WebService::Fastly::Object::RelationshipWafRuleRevision;
use WebService::Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions;
use WebService::Fastly::Object::RelationshipWafRuleRevisions;
use WebService::Fastly::Object::RelationshipWafRuleWafRule;
use WebService::Fastly::Object::RelationshipWafRules;
use WebService::Fastly::Object::RelationshipWafTags;
use WebService::Fastly::Object::RelationshipWafTagsWafTags;
use WebService::Fastly::Object::RelationshipsForInvitation;
use WebService::Fastly::Object::RelationshipsForStar;
use WebService::Fastly::Object::RelationshipsForTlsActivation;
use WebService::Fastly::Object::RelationshipsForTlsBulkCertificate;
use WebService::Fastly::Object::RelationshipsForTlsConfiguration;
use WebService::Fastly::Object::RelationshipsForTlsDomain;
use WebService::Fastly::Object::RelationshipsForTlsPrivateKey;
use WebService::Fastly::Object::RelationshipsForTlsSubscription;
use WebService::Fastly::Object::RelationshipsForWafActiveRule;
use WebService::Fastly::Object::RelationshipsForWafExclusion;
use WebService::Fastly::Object::RelationshipsForWafFirewallVersion;
use WebService::Fastly::Object::RelationshipsForWafRule;
use WebService::Fastly::Object::RequestSettings;
use WebService::Fastly::Object::RequestSettingsResponse;
use WebService::Fastly::Object::Resource;
use WebService::Fastly::Object::ResourceCreate;
use WebService::Fastly::Object::ResourceCreateAllOf;
use WebService::Fastly::Object::ResourceResponse;
use WebService::Fastly::Object::ResourceResponseAllOf;
use WebService::Fastly::Object::ResponseObject;
use WebService::Fastly::Object::ResponseObjectResponse;
use WebService::Fastly::Object::Results;
use WebService::Fastly::Object::RoleUser;
use WebService::Fastly::Object::SchemasContactResponse;
use WebService::Fastly::Object::SchemasSnippetResponse;
use WebService::Fastly::Object::SchemasUserResponse;
use WebService::Fastly::Object::SchemasVclResponse;
use WebService::Fastly::Object::SchemasVersion;
use WebService::Fastly::Object::SchemasVersionResponse;
use WebService::Fastly::Object::SchemasWafFirewallVersion;
use WebService::Fastly::Object::SchemasWafFirewallVersionData;
use WebService::Fastly::Object::Server;
use WebService::Fastly::Object::ServerResponse;
use WebService::Fastly::Object::ServerResponseAllOf;
use WebService::Fastly::Object::Service;
use WebService::Fastly::Object::ServiceAuthorization;
use WebService::Fastly::Object::ServiceAuthorizationData;
use WebService::Fastly::Object::ServiceAuthorizationDataAttributes;
use WebService::Fastly::Object::ServiceAuthorizationResponse;
use WebService::Fastly::Object::ServiceAuthorizationResponseData;
use WebService::Fastly::Object::ServiceAuthorizationResponseDataAllOf;
use WebService::Fastly::Object::ServiceAuthorizationsResponse;
use WebService::Fastly::Object::ServiceAuthorizationsResponseAllOf;
use WebService::Fastly::Object::ServiceCreate;
use WebService::Fastly::Object::ServiceCreateAllOf;
use WebService::Fastly::Object::ServiceDetail;
use WebService::Fastly::Object::ServiceDetailAllOf;
use WebService::Fastly::Object::ServiceIdAndVersion;
use WebService::Fastly::Object::ServiceInvitation;
use WebService::Fastly::Object::ServiceInvitationData;
use WebService::Fastly::Object::ServiceInvitationDataAttributes;
use WebService::Fastly::Object::ServiceInvitationResponse;
use WebService::Fastly::Object::ServiceInvitationResponseAllOf;
use WebService::Fastly::Object::ServiceInvitationResponseAllOfData;
use WebService::Fastly::Object::ServiceListResponse;
use WebService::Fastly::Object::ServiceListResponseAllOf;
use WebService::Fastly::Object::ServiceResponse;
use WebService::Fastly::Object::ServiceResponseAllOf;
use WebService::Fastly::Object::ServiceVersionDetail;
use WebService::Fastly::Object::ServiceVersionDetailOrNull;
use WebService::Fastly::Object::Settings;
use WebService::Fastly::Object::SettingsResponse;
use WebService::Fastly::Object::Snippet;
use WebService::Fastly::Object::SnippetResponse;
use WebService::Fastly::Object::SnippetResponseAllOf;
use WebService::Fastly::Object::Star;
use WebService::Fastly::Object::StarData;
use WebService::Fastly::Object::StarResponse;
use WebService::Fastly::Object::StarResponseAllOf;
use WebService::Fastly::Object::Stats;
use WebService::Fastly::Object::Timestamps;
use WebService::Fastly::Object::TimestampsNoDelete;
use WebService::Fastly::Object::TlsActivation;
use WebService::Fastly::Object::TlsActivationData;
use WebService::Fastly::Object::TlsActivationResponse;
use WebService::Fastly::Object::TlsActivationResponseData;
use WebService::Fastly::Object::TlsActivationResponseDataAllOf;
use WebService::Fastly::Object::TlsActivationsResponse;
use WebService::Fastly::Object::TlsActivationsResponseAllOf;
use WebService::Fastly::Object::TlsBulkCertificate;
use WebService::Fastly::Object::TlsBulkCertificateData;
use WebService::Fastly::Object::TlsBulkCertificateDataAttributes;
use WebService::Fastly::Object::TlsBulkCertificateResponse;
use WebService::Fastly::Object::TlsBulkCertificateResponseAttributes;
use WebService::Fastly::Object::TlsBulkCertificateResponseAttributesAllOf;
use WebService::Fastly::Object::TlsBulkCertificateResponseData;
use WebService::Fastly::Object::TlsBulkCertificateResponseDataAllOf;
use WebService::Fastly::Object::TlsBulkCertificatesResponse;
use WebService::Fastly::Object::TlsBulkCertificatesResponseAllOf;
use WebService::Fastly::Object::TlsCertificate;
use WebService::Fastly::Object::TlsCertificateData;
use WebService::Fastly::Object::TlsCertificateDataAttributes;
use WebService::Fastly::Object::TlsCertificateResponse;
use WebService::Fastly::Object::TlsCertificateResponseAttributes;
use WebService::Fastly::Object::TlsCertificateResponseAttributesAllOf;
use WebService::Fastly::Object::TlsCertificateResponseData;
use WebService::Fastly::Object::TlsCertificateResponseDataAllOf;
use WebService::Fastly::Object::TlsCertificatesResponse;
use WebService::Fastly::Object::TlsCertificatesResponseAllOf;
use WebService::Fastly::Object::TlsCommon;
use WebService::Fastly::Object::TlsConfiguration;
use WebService::Fastly::Object::TlsConfigurationData;
use WebService::Fastly::Object::TlsConfigurationDataAttributes;
use WebService::Fastly::Object::TlsConfigurationResponse;
use WebService::Fastly::Object::TlsConfigurationResponseAttributes;
use WebService::Fastly::Object::TlsConfigurationResponseAttributesAllOf;
use WebService::Fastly::Object::TlsConfigurationResponseData;
use WebService::Fastly::Object::TlsConfigurationResponseDataAllOf;
use WebService::Fastly::Object::TlsConfigurationsResponse;
use WebService::Fastly::Object::TlsConfigurationsResponseAllOf;
use WebService::Fastly::Object::TlsDnsRecord;
use WebService::Fastly::Object::TlsDomainData;
use WebService::Fastly::Object::TlsDomainsResponse;
use WebService::Fastly::Object::TlsDomainsResponseAllOf;
use WebService::Fastly::Object::TlsPrivateKey;
use WebService::Fastly::Object::TlsPrivateKeyData;
use WebService::Fastly::Object::TlsPrivateKeyDataAttributes;
use WebService::Fastly::Object::TlsPrivateKeyResponse;
use WebService::Fastly::Object::TlsPrivateKeyResponseAttributes;
use WebService::Fastly::Object::TlsPrivateKeyResponseAttributesAllOf;
use WebService::Fastly::Object::TlsPrivateKeyResponseData;
use WebService::Fastly::Object::TlsPrivateKeysResponse;
use WebService::Fastly::Object::TlsPrivateKeysResponseAllOf;
use WebService::Fastly::Object::TlsSubscription;
use WebService::Fastly::Object::TlsSubscriptionData;
use WebService::Fastly::Object::TlsSubscriptionDataAttributes;
use WebService::Fastly::Object::TlsSubscriptionResponse;
use WebService::Fastly::Object::TlsSubscriptionResponseAttributes;
use WebService::Fastly::Object::TlsSubscriptionResponseAttributesAllOf;
use WebService::Fastly::Object::TlsSubscriptionResponseData;
use WebService::Fastly::Object::TlsSubscriptionResponseDataAllOf;
use WebService::Fastly::Object::TlsSubscriptionsResponse;
use WebService::Fastly::Object::TlsSubscriptionsResponseAllOf;
use WebService::Fastly::Object::Token;
use WebService::Fastly::Object::TokenCreatedResponse;
use WebService::Fastly::Object::TokenCreatedResponseAllOf;
use WebService::Fastly::Object::TokenResponse;
use WebService::Fastly::Object::TokenResponseAllOf;
use WebService::Fastly::Object::TypeBillingAddress;
use WebService::Fastly::Object::TypeContact;
use WebService::Fastly::Object::TypeCustomer;
use WebService::Fastly::Object::TypeEvent;
use WebService::Fastly::Object::TypeInvitation;
use WebService::Fastly::Object::TypeResource;
use WebService::Fastly::Object::TypeService;
use WebService::Fastly::Object::TypeServiceAuthorization;
use WebService::Fastly::Object::TypeServiceInvitation;
use WebService::Fastly::Object::TypeStar;
use WebService::Fastly::Object::TypeTlsActivation;
use WebService::Fastly::Object::TypeTlsBulkCertificate;
use WebService::Fastly::Object::TypeTlsCertificate;
use WebService::Fastly::Object::TypeTlsConfiguration;
use WebService::Fastly::Object::TypeTlsDnsRecord;
use WebService::Fastly::Object::TypeTlsDomain;
use WebService::Fastly::Object::TypeTlsPrivateKey;
use WebService::Fastly::Object::TypeTlsSubscription;
use WebService::Fastly::Object::TypeUser;
use WebService::Fastly::Object::TypeWafActiveRule;
use WebService::Fastly::Object::TypeWafExclusion;
use WebService::Fastly::Object::TypeWafFirewall;
use WebService::Fastly::Object::TypeWafFirewallVersion;
use WebService::Fastly::Object::TypeWafRule;
use WebService::Fastly::Object::TypeWafRuleRevision;
use WebService::Fastly::Object::TypeWafTag;
use WebService::Fastly::Object::UpdateBillingAddressRequest;
use WebService::Fastly::Object::UpdateBillingAddressRequestData;
use WebService::Fastly::Object::User;
use WebService::Fastly::Object::UserResponse;
use WebService::Fastly::Object::UserResponseAllOf;
use WebService::Fastly::Object::Vcl;
use WebService::Fastly::Object::VclDiff;
use WebService::Fastly::Object::VclResponse;
use WebService::Fastly::Object::Version;
use WebService::Fastly::Object::VersionCreateResponse;
use WebService::Fastly::Object::VersionDetail;
use WebService::Fastly::Object::VersionResponse;
use WebService::Fastly::Object::VersionResponseAllOf;
use WebService::Fastly::Object::WafActiveRule;
use WebService::Fastly::Object::WafActiveRuleCreationResponse;
use WebService::Fastly::Object::WafActiveRuleData;
use WebService::Fastly::Object::WafActiveRuleDataAttributes;
use WebService::Fastly::Object::WafActiveRuleResponse;
use WebService::Fastly::Object::WafActiveRuleResponseData;
use WebService::Fastly::Object::WafActiveRuleResponseDataAllOf;
use WebService::Fastly::Object::WafActiveRuleResponseDataAttributes;
use WebService::Fastly::Object::WafActiveRuleResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafActiveRuleResponseDataRelationships;
use WebService::Fastly::Object::WafActiveRulesResponse;
use WebService::Fastly::Object::WafActiveRulesResponseAllOf;
use WebService::Fastly::Object::WafExclusion;
use WebService::Fastly::Object::WafExclusionData;
use WebService::Fastly::Object::WafExclusionDataAttributes;
use WebService::Fastly::Object::WafExclusionResponse;
use WebService::Fastly::Object::WafExclusionResponseData;
use WebService::Fastly::Object::WafExclusionResponseDataAllOf;
use WebService::Fastly::Object::WafExclusionResponseDataAttributes;
use WebService::Fastly::Object::WafExclusionResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafExclusionResponseDataRelationships;
use WebService::Fastly::Object::WafExclusionsResponse;
use WebService::Fastly::Object::WafExclusionsResponseAllOf;
use WebService::Fastly::Object::WafFirewall;
use WebService::Fastly::Object::WafFirewallData;
use WebService::Fastly::Object::WafFirewallDataAttributes;
use WebService::Fastly::Object::WafFirewallResponse;
use WebService::Fastly::Object::WafFirewallResponseData;
use WebService::Fastly::Object::WafFirewallResponseDataAllOf;
use WebService::Fastly::Object::WafFirewallResponseDataAttributes;
use WebService::Fastly::Object::WafFirewallResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafFirewallVersion;
use WebService::Fastly::Object::WafFirewallVersionData;
use WebService::Fastly::Object::WafFirewallVersionDataAttributes;
use WebService::Fastly::Object::WafFirewallVersionResponse;
use WebService::Fastly::Object::WafFirewallVersionResponseData;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAllOf;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAttributes;
use WebService::Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf;
use WebService::Fastly::Object::WafFirewallVersionsResponse;
use WebService::Fastly::Object::WafFirewallVersionsResponseAllOf;
use WebService::Fastly::Object::WafFirewallsResponse;
use WebService::Fastly::Object::WafFirewallsResponseAllOf;
use WebService::Fastly::Object::WafRule;
use WebService::Fastly::Object::WafRuleAttributes;
use WebService::Fastly::Object::WafRuleResponse;
use WebService::Fastly::Object::WafRuleResponseData;
use WebService::Fastly::Object::WafRuleResponseDataAllOf;
use WebService::Fastly::Object::WafRuleRevision;
use WebService::Fastly::Object::WafRuleRevisionAttributes;
use WebService::Fastly::Object::WafRuleRevisionOrLatest;
use WebService::Fastly::Object::WafRuleRevisionResponse;
use WebService::Fastly::Object::WafRuleRevisionResponseData;
use WebService::Fastly::Object::WafRuleRevisionResponseDataAllOf;
use WebService::Fastly::Object::WafRuleRevisionsResponse;
use WebService::Fastly::Object::WafRuleRevisionsResponseAllOf;
use WebService::Fastly::Object::WafRulesResponse;
use WebService::Fastly::Object::WafRulesResponseAllOf;
use WebService::Fastly::Object::WafTag;
use WebService::Fastly::Object::WafTagAttributes;
use WebService::Fastly::Object::WafTagsResponse;
use WebService::Fastly::Object::WafTagsResponseAllOf;
use WebService::Fastly::Object::WafTagsResponseDataItem;

# for displaying the API response data
use Data::Dumper;


my $api_instance = WebService::Fastly::AclApi->new(
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
 - [WebService::Fastly::Object::Acl](docs/Acl.md)
 - [WebService::Fastly::Object::AclEntry](docs/AclEntry.md)
 - [WebService::Fastly::Object::AclEntryResponse](docs/AclEntryResponse.md)
 - [WebService::Fastly::Object::AclEntryResponseAllOf](docs/AclEntryResponseAllOf.md)
 - [WebService::Fastly::Object::AclResponse](docs/AclResponse.md)
 - [WebService::Fastly::Object::AclResponseAllOf](docs/AclResponseAllOf.md)
 - [WebService::Fastly::Object::ApexRedirect](docs/ApexRedirect.md)
 - [WebService::Fastly::Object::ApexRedirectAllOf](docs/ApexRedirectAllOf.md)
 - [WebService::Fastly::Object::Backend](docs/Backend.md)
 - [WebService::Fastly::Object::BackendResponse](docs/BackendResponse.md)
 - [WebService::Fastly::Object::BackendResponseAllOf](docs/BackendResponseAllOf.md)
 - [WebService::Fastly::Object::Billing](docs/Billing.md)
 - [WebService::Fastly::Object::BillingAddressAttributes](docs/BillingAddressAttributes.md)
 - [WebService::Fastly::Object::BillingAddressRequest](docs/BillingAddressRequest.md)
 - [WebService::Fastly::Object::BillingAddressRequestData](docs/BillingAddressRequestData.md)
 - [WebService::Fastly::Object::BillingAddressResponse](docs/BillingAddressResponse.md)
 - [WebService::Fastly::Object::BillingAddressResponseData](docs/BillingAddressResponseData.md)
 - [WebService::Fastly::Object::BillingEstimateResponse](docs/BillingEstimateResponse.md)
 - [WebService::Fastly::Object::BillingEstimateResponseAllOf](docs/BillingEstimateResponseAllOf.md)
 - [WebService::Fastly::Object::BillingEstimateResponseAllOfLine](docs/BillingEstimateResponseAllOfLine.md)
 - [WebService::Fastly::Object::BillingEstimateResponseAllOfLines](docs/BillingEstimateResponseAllOfLines.md)
 - [WebService::Fastly::Object::BillingResponse](docs/BillingResponse.md)
 - [WebService::Fastly::Object::BillingResponseAllOf](docs/BillingResponseAllOf.md)
 - [WebService::Fastly::Object::BillingResponseLineItem](docs/BillingResponseLineItem.md)
 - [WebService::Fastly::Object::BillingResponseLineItemAllOf](docs/BillingResponseLineItemAllOf.md)
 - [WebService::Fastly::Object::BillingStatus](docs/BillingStatus.md)
 - [WebService::Fastly::Object::BillingTotal](docs/BillingTotal.md)
 - [WebService::Fastly::Object::BillingTotalExtras](docs/BillingTotalExtras.md)
 - [WebService::Fastly::Object::BulkUpdateAclEntriesRequest](docs/BulkUpdateAclEntriesRequest.md)
 - [WebService::Fastly::Object::BulkUpdateAclEntry](docs/BulkUpdateAclEntry.md)
 - [WebService::Fastly::Object::BulkUpdateAclEntryAllOf](docs/BulkUpdateAclEntryAllOf.md)
 - [WebService::Fastly::Object::BulkUpdateDictionaryItem](docs/BulkUpdateDictionaryItem.md)
 - [WebService::Fastly::Object::BulkUpdateDictionaryItemAllOf](docs/BulkUpdateDictionaryItemAllOf.md)
 - [WebService::Fastly::Object::BulkUpdateDictionaryListRequest](docs/BulkUpdateDictionaryListRequest.md)
 - [WebService::Fastly::Object::BulkWafActiveRules](docs/BulkWafActiveRules.md)
 - [WebService::Fastly::Object::CacheSetting](docs/CacheSetting.md)
 - [WebService::Fastly::Object::CacheSettingResponse](docs/CacheSettingResponse.md)
 - [WebService::Fastly::Object::Condition](docs/Condition.md)
 - [WebService::Fastly::Object::ConditionResponse](docs/ConditionResponse.md)
 - [WebService::Fastly::Object::Contact](docs/Contact.md)
 - [WebService::Fastly::Object::ContactResponse](docs/ContactResponse.md)
 - [WebService::Fastly::Object::ContactResponseAllOf](docs/ContactResponseAllOf.md)
 - [WebService::Fastly::Object::Content](docs/Content.md)
 - [WebService::Fastly::Object::Customer](docs/Customer.md)
 - [WebService::Fastly::Object::CustomerResponse](docs/CustomerResponse.md)
 - [WebService::Fastly::Object::CustomerResponseAllOf](docs/CustomerResponseAllOf.md)
 - [WebService::Fastly::Object::Dictionary](docs/Dictionary.md)
 - [WebService::Fastly::Object::DictionaryInfoResponse](docs/DictionaryInfoResponse.md)
 - [WebService::Fastly::Object::DictionaryItem](docs/DictionaryItem.md)
 - [WebService::Fastly::Object::DictionaryItemResponse](docs/DictionaryItemResponse.md)
 - [WebService::Fastly::Object::DictionaryItemResponseAllOf](docs/DictionaryItemResponseAllOf.md)
 - [WebService::Fastly::Object::DictionaryResponse](docs/DictionaryResponse.md)
 - [WebService::Fastly::Object::DictionaryResponseAllOf](docs/DictionaryResponseAllOf.md)
 - [WebService::Fastly::Object::DiffResponse](docs/DiffResponse.md)
 - [WebService::Fastly::Object::Director](docs/Director.md)
 - [WebService::Fastly::Object::DirectorBackend](docs/DirectorBackend.md)
 - [WebService::Fastly::Object::DirectorBackendAllOf](docs/DirectorBackendAllOf.md)
 - [WebService::Fastly::Object::DirectorResponse](docs/DirectorResponse.md)
 - [WebService::Fastly::Object::Domain](docs/Domain.md)
 - [WebService::Fastly::Object::DomainCheckItem](docs/DomainCheckItem.md)
 - [WebService::Fastly::Object::DomainResponse](docs/DomainResponse.md)
 - [WebService::Fastly::Object::Event](docs/Event.md)
 - [WebService::Fastly::Object::EventAttributes](docs/EventAttributes.md)
 - [WebService::Fastly::Object::EventResponse](docs/EventResponse.md)
 - [WebService::Fastly::Object::EventsResponse](docs/EventsResponse.md)
 - [WebService::Fastly::Object::EventsResponseAllOf](docs/EventsResponseAllOf.md)
 - [WebService::Fastly::Object::GenericTokenError](docs/GenericTokenError.md)
 - [WebService::Fastly::Object::Gzip](docs/Gzip.md)
 - [WebService::Fastly::Object::GzipResponse](docs/GzipResponse.md)
 - [WebService::Fastly::Object::Header](docs/Header.md)
 - [WebService::Fastly::Object::HeaderResponse](docs/HeaderResponse.md)
 - [WebService::Fastly::Object::Healthcheck](docs/Healthcheck.md)
 - [WebService::Fastly::Object::HealthcheckResponse](docs/HealthcheckResponse.md)
 - [WebService::Fastly::Object::Historical](docs/Historical.md)
 - [WebService::Fastly::Object::HistoricalAggregateResponse](docs/HistoricalAggregateResponse.md)
 - [WebService::Fastly::Object::HistoricalAggregateResponseAllOf](docs/HistoricalAggregateResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalFieldAggregateResponse](docs/HistoricalFieldAggregateResponse.md)
 - [WebService::Fastly::Object::HistoricalFieldAggregateResponseAllOf](docs/HistoricalFieldAggregateResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalFieldResponse](docs/HistoricalFieldResponse.md)
 - [WebService::Fastly::Object::HistoricalFieldResponseAllOf](docs/HistoricalFieldResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalMeta](docs/HistoricalMeta.md)
 - [WebService::Fastly::Object::HistoricalRegionsResponse](docs/HistoricalRegionsResponse.md)
 - [WebService::Fastly::Object::HistoricalRegionsResponseAllOf](docs/HistoricalRegionsResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalResponse](docs/HistoricalResponse.md)
 - [WebService::Fastly::Object::HistoricalResponseAllOf](docs/HistoricalResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalUsageAggregateResponse](docs/HistoricalUsageAggregateResponse.md)
 - [WebService::Fastly::Object::HistoricalUsageMonthResponse](docs/HistoricalUsageMonthResponse.md)
 - [WebService::Fastly::Object::HistoricalUsageMonthResponseAllOf](docs/HistoricalUsageMonthResponseAllOf.md)
 - [WebService::Fastly::Object::HistoricalUsageMonthResponseAllOfData](docs/HistoricalUsageMonthResponseAllOfData.md)
 - [WebService::Fastly::Object::HistoricalUsageResults](docs/HistoricalUsageResults.md)
 - [WebService::Fastly::Object::HistoricalUsageServiceResponse](docs/HistoricalUsageServiceResponse.md)
 - [WebService::Fastly::Object::HistoricalUsageServiceResponseAllOf](docs/HistoricalUsageServiceResponseAllOf.md)
 - [WebService::Fastly::Object::Http3](docs/Http3.md)
 - [WebService::Fastly::Object::Http3AllOf](docs/Http3AllOf.md)
 - [WebService::Fastly::Object::IamPermission](docs/IamPermission.md)
 - [WebService::Fastly::Object::IamRole](docs/IamRole.md)
 - [WebService::Fastly::Object::IamRoleAllOf](docs/IamRoleAllOf.md)
 - [WebService::Fastly::Object::IamServiceGroup](docs/IamServiceGroup.md)
 - [WebService::Fastly::Object::IamServiceGroupAllOf](docs/IamServiceGroupAllOf.md)
 - [WebService::Fastly::Object::IamUserGroup](docs/IamUserGroup.md)
 - [WebService::Fastly::Object::IamUserGroupAllOf](docs/IamUserGroupAllOf.md)
 - [WebService::Fastly::Object::IncludedWithWafActiveRuleItem](docs/IncludedWithWafActiveRuleItem.md)
 - [WebService::Fastly::Object::IncludedWithWafExclusionItem](docs/IncludedWithWafExclusionItem.md)
 - [WebService::Fastly::Object::IncludedWithWafFirewallVersionItem](docs/IncludedWithWafFirewallVersionItem.md)
 - [WebService::Fastly::Object::IncludedWithWafRuleItem](docs/IncludedWithWafRuleItem.md)
 - [WebService::Fastly::Object::InlineResponse200](docs/InlineResponse200.md)
 - [WebService::Fastly::Object::InlineResponse2001](docs/InlineResponse2001.md)
 - [WebService::Fastly::Object::Invitation](docs/Invitation.md)
 - [WebService::Fastly::Object::InvitationData](docs/InvitationData.md)
 - [WebService::Fastly::Object::InvitationDataAttributes](docs/InvitationDataAttributes.md)
 - [WebService::Fastly::Object::InvitationResponse](docs/InvitationResponse.md)
 - [WebService::Fastly::Object::InvitationResponseAllOf](docs/InvitationResponseAllOf.md)
 - [WebService::Fastly::Object::InvitationResponseData](docs/InvitationResponseData.md)
 - [WebService::Fastly::Object::InvitationResponseDataAllOf](docs/InvitationResponseDataAllOf.md)
 - [WebService::Fastly::Object::InvitationsResponse](docs/InvitationsResponse.md)
 - [WebService::Fastly::Object::InvitationsResponseAllOf](docs/InvitationsResponseAllOf.md)
 - [WebService::Fastly::Object::LoggingAddressAndPort](docs/LoggingAddressAndPort.md)
 - [WebService::Fastly::Object::LoggingAzureblob](docs/LoggingAzureblob.md)
 - [WebService::Fastly::Object::LoggingAzureblobAllOf](docs/LoggingAzureblobAllOf.md)
 - [WebService::Fastly::Object::LoggingAzureblobResponse](docs/LoggingAzureblobResponse.md)
 - [WebService::Fastly::Object::LoggingBigquery](docs/LoggingBigquery.md)
 - [WebService::Fastly::Object::LoggingBigqueryAllOf](docs/LoggingBigqueryAllOf.md)
 - [WebService::Fastly::Object::LoggingBigqueryResponse](docs/LoggingBigqueryResponse.md)
 - [WebService::Fastly::Object::LoggingCloudfiles](docs/LoggingCloudfiles.md)
 - [WebService::Fastly::Object::LoggingCloudfilesAllOf](docs/LoggingCloudfilesAllOf.md)
 - [WebService::Fastly::Object::LoggingCloudfilesResponse](docs/LoggingCloudfilesResponse.md)
 - [WebService::Fastly::Object::LoggingCommon](docs/LoggingCommon.md)
 - [WebService::Fastly::Object::LoggingDatadog](docs/LoggingDatadog.md)
 - [WebService::Fastly::Object::LoggingDatadogAllOf](docs/LoggingDatadogAllOf.md)
 - [WebService::Fastly::Object::LoggingDatadogResponse](docs/LoggingDatadogResponse.md)
 - [WebService::Fastly::Object::LoggingDigitalocean](docs/LoggingDigitalocean.md)
 - [WebService::Fastly::Object::LoggingDigitaloceanAllOf](docs/LoggingDigitaloceanAllOf.md)
 - [WebService::Fastly::Object::LoggingDigitaloceanResponse](docs/LoggingDigitaloceanResponse.md)
 - [WebService::Fastly::Object::LoggingElasticsearch](docs/LoggingElasticsearch.md)
 - [WebService::Fastly::Object::LoggingElasticsearchAllOf](docs/LoggingElasticsearchAllOf.md)
 - [WebService::Fastly::Object::LoggingElasticsearchResponse](docs/LoggingElasticsearchResponse.md)
 - [WebService::Fastly::Object::LoggingFormatVersion](docs/LoggingFormatVersion.md)
 - [WebService::Fastly::Object::LoggingFtp](docs/LoggingFtp.md)
 - [WebService::Fastly::Object::LoggingFtpAllOf](docs/LoggingFtpAllOf.md)
 - [WebService::Fastly::Object::LoggingFtpResponse](docs/LoggingFtpResponse.md)
 - [WebService::Fastly::Object::LoggingGcs](docs/LoggingGcs.md)
 - [WebService::Fastly::Object::LoggingGcsAllOf](docs/LoggingGcsAllOf.md)
 - [WebService::Fastly::Object::LoggingGcsCommon](docs/LoggingGcsCommon.md)
 - [WebService::Fastly::Object::LoggingGcsResponse](docs/LoggingGcsResponse.md)
 - [WebService::Fastly::Object::LoggingGenericCommon](docs/LoggingGenericCommon.md)
 - [WebService::Fastly::Object::LoggingGooglePubsub](docs/LoggingGooglePubsub.md)
 - [WebService::Fastly::Object::LoggingGooglePubsubAllOf](docs/LoggingGooglePubsubAllOf.md)
 - [WebService::Fastly::Object::LoggingGooglePubsubResponse](docs/LoggingGooglePubsubResponse.md)
 - [WebService::Fastly::Object::LoggingHeroku](docs/LoggingHeroku.md)
 - [WebService::Fastly::Object::LoggingHerokuAllOf](docs/LoggingHerokuAllOf.md)
 - [WebService::Fastly::Object::LoggingHerokuResponse](docs/LoggingHerokuResponse.md)
 - [WebService::Fastly::Object::LoggingHoneycomb](docs/LoggingHoneycomb.md)
 - [WebService::Fastly::Object::LoggingHoneycombAllOf](docs/LoggingHoneycombAllOf.md)
 - [WebService::Fastly::Object::LoggingHoneycombResponse](docs/LoggingHoneycombResponse.md)
 - [WebService::Fastly::Object::LoggingHttps](docs/LoggingHttps.md)
 - [WebService::Fastly::Object::LoggingHttpsAllOf](docs/LoggingHttpsAllOf.md)
 - [WebService::Fastly::Object::LoggingHttpsResponse](docs/LoggingHttpsResponse.md)
 - [WebService::Fastly::Object::LoggingKafka](docs/LoggingKafka.md)
 - [WebService::Fastly::Object::LoggingKafkaAllOf](docs/LoggingKafkaAllOf.md)
 - [WebService::Fastly::Object::LoggingKafkaResponse](docs/LoggingKafkaResponse.md)
 - [WebService::Fastly::Object::LoggingKinesis](docs/LoggingKinesis.md)
 - [WebService::Fastly::Object::LoggingKinesisResponse](docs/LoggingKinesisResponse.md)
 - [WebService::Fastly::Object::LoggingLogentries](docs/LoggingLogentries.md)
 - [WebService::Fastly::Object::LoggingLogentriesAllOf](docs/LoggingLogentriesAllOf.md)
 - [WebService::Fastly::Object::LoggingLogentriesResponse](docs/LoggingLogentriesResponse.md)
 - [WebService::Fastly::Object::LoggingLoggly](docs/LoggingLoggly.md)
 - [WebService::Fastly::Object::LoggingLogglyAllOf](docs/LoggingLogglyAllOf.md)
 - [WebService::Fastly::Object::LoggingLogglyResponse](docs/LoggingLogglyResponse.md)
 - [WebService::Fastly::Object::LoggingLogshuttle](docs/LoggingLogshuttle.md)
 - [WebService::Fastly::Object::LoggingLogshuttleAllOf](docs/LoggingLogshuttleAllOf.md)
 - [WebService::Fastly::Object::LoggingLogshuttleResponse](docs/LoggingLogshuttleResponse.md)
 - [WebService::Fastly::Object::LoggingMessageType](docs/LoggingMessageType.md)
 - [WebService::Fastly::Object::LoggingNewrelic](docs/LoggingNewrelic.md)
 - [WebService::Fastly::Object::LoggingNewrelicAllOf](docs/LoggingNewrelicAllOf.md)
 - [WebService::Fastly::Object::LoggingNewrelicResponse](docs/LoggingNewrelicResponse.md)
 - [WebService::Fastly::Object::LoggingOpenstack](docs/LoggingOpenstack.md)
 - [WebService::Fastly::Object::LoggingOpenstackAllOf](docs/LoggingOpenstackAllOf.md)
 - [WebService::Fastly::Object::LoggingOpenstackResponse](docs/LoggingOpenstackResponse.md)
 - [WebService::Fastly::Object::LoggingPapertrail](docs/LoggingPapertrail.md)
 - [WebService::Fastly::Object::LoggingPapertrailResponse](docs/LoggingPapertrailResponse.md)
 - [WebService::Fastly::Object::LoggingPlacement](docs/LoggingPlacement.md)
 - [WebService::Fastly::Object::LoggingRequestCapsCommon](docs/LoggingRequestCapsCommon.md)
 - [WebService::Fastly::Object::LoggingS3](docs/LoggingS3.md)
 - [WebService::Fastly::Object::LoggingS3AllOf](docs/LoggingS3AllOf.md)
 - [WebService::Fastly::Object::LoggingS3Response](docs/LoggingS3Response.md)
 - [WebService::Fastly::Object::LoggingScalyr](docs/LoggingScalyr.md)
 - [WebService::Fastly::Object::LoggingScalyrAllOf](docs/LoggingScalyrAllOf.md)
 - [WebService::Fastly::Object::LoggingScalyrResponse](docs/LoggingScalyrResponse.md)
 - [WebService::Fastly::Object::LoggingSftp](docs/LoggingSftp.md)
 - [WebService::Fastly::Object::LoggingSftpAllOf](docs/LoggingSftpAllOf.md)
 - [WebService::Fastly::Object::LoggingSftpResponse](docs/LoggingSftpResponse.md)
 - [WebService::Fastly::Object::LoggingSplunk](docs/LoggingSplunk.md)
 - [WebService::Fastly::Object::LoggingSplunkAllOf](docs/LoggingSplunkAllOf.md)
 - [WebService::Fastly::Object::LoggingSplunkResponse](docs/LoggingSplunkResponse.md)
 - [WebService::Fastly::Object::LoggingSumologic](docs/LoggingSumologic.md)
 - [WebService::Fastly::Object::LoggingSumologicAllOf](docs/LoggingSumologicAllOf.md)
 - [WebService::Fastly::Object::LoggingSumologicResponse](docs/LoggingSumologicResponse.md)
 - [WebService::Fastly::Object::LoggingSyslog](docs/LoggingSyslog.md)
 - [WebService::Fastly::Object::LoggingSyslogAllOf](docs/LoggingSyslogAllOf.md)
 - [WebService::Fastly::Object::LoggingSyslogResponse](docs/LoggingSyslogResponse.md)
 - [WebService::Fastly::Object::LoggingTlsCommon](docs/LoggingTlsCommon.md)
 - [WebService::Fastly::Object::LoggingUseTls](docs/LoggingUseTls.md)
 - [WebService::Fastly::Object::ModelPackage](docs/ModelPackage.md)
 - [WebService::Fastly::Object::PackageMetadata](docs/PackageMetadata.md)
 - [WebService::Fastly::Object::PackageResponse](docs/PackageResponse.md)
 - [WebService::Fastly::Object::PackageResponseAllOf](docs/PackageResponseAllOf.md)
 - [WebService::Fastly::Object::Pagination](docs/Pagination.md)
 - [WebService::Fastly::Object::PaginationLinks](docs/PaginationLinks.md)
 - [WebService::Fastly::Object::PaginationMeta](docs/PaginationMeta.md)
 - [WebService::Fastly::Object::Permission](docs/Permission.md)
 - [WebService::Fastly::Object::Pool](docs/Pool.md)
 - [WebService::Fastly::Object::PoolAllOf](docs/PoolAllOf.md)
 - [WebService::Fastly::Object::PoolResponse](docs/PoolResponse.md)
 - [WebService::Fastly::Object::PoolResponseAllOf](docs/PoolResponseAllOf.md)
 - [WebService::Fastly::Object::Pop](docs/Pop.md)
 - [WebService::Fastly::Object::PopCoordinates](docs/PopCoordinates.md)
 - [WebService::Fastly::Object::PublicIpList](docs/PublicIpList.md)
 - [WebService::Fastly::Object::PurgeKeys](docs/PurgeKeys.md)
 - [WebService::Fastly::Object::PurgeResponse](docs/PurgeResponse.md)
 - [WebService::Fastly::Object::RateLimiter](docs/RateLimiter.md)
 - [WebService::Fastly::Object::RateLimiterResponse](docs/RateLimiterResponse.md)
 - [WebService::Fastly::Object::RateLimiterResponse1](docs/RateLimiterResponse1.md)
 - [WebService::Fastly::Object::RateLimiterResponseAllOf](docs/RateLimiterResponseAllOf.md)
 - [WebService::Fastly::Object::Realtime](docs/Realtime.md)
 - [WebService::Fastly::Object::RealtimeEntry](docs/RealtimeEntry.md)
 - [WebService::Fastly::Object::RealtimeMeasurements](docs/RealtimeMeasurements.md)
 - [WebService::Fastly::Object::RelationshipCommonName](docs/RelationshipCommonName.md)
 - [WebService::Fastly::Object::RelationshipCustomer](docs/RelationshipCustomer.md)
 - [WebService::Fastly::Object::RelationshipCustomerCustomer](docs/RelationshipCustomerCustomer.md)
 - [WebService::Fastly::Object::RelationshipMemberCustomer](docs/RelationshipMemberCustomer.md)
 - [WebService::Fastly::Object::RelationshipMemberService](docs/RelationshipMemberService.md)
 - [WebService::Fastly::Object::RelationshipMemberServiceInvitation](docs/RelationshipMemberServiceInvitation.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsActivation](docs/RelationshipMemberTlsActivation.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsBulkCertificate](docs/RelationshipMemberTlsBulkCertificate.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsCertificate](docs/RelationshipMemberTlsCertificate.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsConfiguration](docs/RelationshipMemberTlsConfiguration.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsDnsRecord](docs/RelationshipMemberTlsDnsRecord.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsDomain](docs/RelationshipMemberTlsDomain.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsPrivateKey](docs/RelationshipMemberTlsPrivateKey.md)
 - [WebService::Fastly::Object::RelationshipMemberTlsSubscription](docs/RelationshipMemberTlsSubscription.md)
 - [WebService::Fastly::Object::RelationshipMemberWafActiveRule](docs/RelationshipMemberWafActiveRule.md)
 - [WebService::Fastly::Object::RelationshipMemberWafFirewall](docs/RelationshipMemberWafFirewall.md)
 - [WebService::Fastly::Object::RelationshipMemberWafFirewallVersion](docs/RelationshipMemberWafFirewallVersion.md)
 - [WebService::Fastly::Object::RelationshipMemberWafRule](docs/RelationshipMemberWafRule.md)
 - [WebService::Fastly::Object::RelationshipMemberWafRuleRevision](docs/RelationshipMemberWafRuleRevision.md)
 - [WebService::Fastly::Object::RelationshipMemberWafTag](docs/RelationshipMemberWafTag.md)
 - [WebService::Fastly::Object::RelationshipService](docs/RelationshipService.md)
 - [WebService::Fastly::Object::RelationshipServiceInvitations](docs/RelationshipServiceInvitations.md)
 - [WebService::Fastly::Object::RelationshipServiceInvitationsCreate](docs/RelationshipServiceInvitationsCreate.md)
 - [WebService::Fastly::Object::RelationshipServiceInvitationsCreateServiceInvitations](docs/RelationshipServiceInvitationsCreateServiceInvitations.md)
 - [WebService::Fastly::Object::RelationshipServiceInvitationsServiceInvitations](docs/RelationshipServiceInvitationsServiceInvitations.md)
 - [WebService::Fastly::Object::RelationshipServiceService](docs/RelationshipServiceService.md)
 - [WebService::Fastly::Object::RelationshipServices](docs/RelationshipServices.md)
 - [WebService::Fastly::Object::RelationshipTlsActivation](docs/RelationshipTlsActivation.md)
 - [WebService::Fastly::Object::RelationshipTlsActivationTlsActivation](docs/RelationshipTlsActivationTlsActivation.md)
 - [WebService::Fastly::Object::RelationshipTlsActivations](docs/RelationshipTlsActivations.md)
 - [WebService::Fastly::Object::RelationshipTlsBulkCertificate](docs/RelationshipTlsBulkCertificate.md)
 - [WebService::Fastly::Object::RelationshipTlsBulkCertificateTlsBulkCertificate](docs/RelationshipTlsBulkCertificateTlsBulkCertificate.md)
 - [WebService::Fastly::Object::RelationshipTlsBulkCertificates](docs/RelationshipTlsBulkCertificates.md)
 - [WebService::Fastly::Object::RelationshipTlsCertificate](docs/RelationshipTlsCertificate.md)
 - [WebService::Fastly::Object::RelationshipTlsCertificateTlsCertificate](docs/RelationshipTlsCertificateTlsCertificate.md)
 - [WebService::Fastly::Object::RelationshipTlsCertificates](docs/RelationshipTlsCertificates.md)
 - [WebService::Fastly::Object::RelationshipTlsConfiguration](docs/RelationshipTlsConfiguration.md)
 - [WebService::Fastly::Object::RelationshipTlsConfigurationTlsConfiguration](docs/RelationshipTlsConfigurationTlsConfiguration.md)
 - [WebService::Fastly::Object::RelationshipTlsConfigurations](docs/RelationshipTlsConfigurations.md)
 - [WebService::Fastly::Object::RelationshipTlsDnsRecord](docs/RelationshipTlsDnsRecord.md)
 - [WebService::Fastly::Object::RelationshipTlsDnsRecordDnsRecord](docs/RelationshipTlsDnsRecordDnsRecord.md)
 - [WebService::Fastly::Object::RelationshipTlsDnsRecords](docs/RelationshipTlsDnsRecords.md)
 - [WebService::Fastly::Object::RelationshipTlsDomain](docs/RelationshipTlsDomain.md)
 - [WebService::Fastly::Object::RelationshipTlsDomainTlsDomain](docs/RelationshipTlsDomainTlsDomain.md)
 - [WebService::Fastly::Object::RelationshipTlsDomains](docs/RelationshipTlsDomains.md)
 - [WebService::Fastly::Object::RelationshipTlsPrivateKey](docs/RelationshipTlsPrivateKey.md)
 - [WebService::Fastly::Object::RelationshipTlsPrivateKeyTlsPrivateKey](docs/RelationshipTlsPrivateKeyTlsPrivateKey.md)
 - [WebService::Fastly::Object::RelationshipTlsPrivateKeys](docs/RelationshipTlsPrivateKeys.md)
 - [WebService::Fastly::Object::RelationshipTlsSubscription](docs/RelationshipTlsSubscription.md)
 - [WebService::Fastly::Object::RelationshipTlsSubscriptionTlsSubscription](docs/RelationshipTlsSubscriptionTlsSubscription.md)
 - [WebService::Fastly::Object::RelationshipTlsSubscriptions](docs/RelationshipTlsSubscriptions.md)
 - [WebService::Fastly::Object::RelationshipUser](docs/RelationshipUser.md)
 - [WebService::Fastly::Object::RelationshipUserUser](docs/RelationshipUserUser.md)
 - [WebService::Fastly::Object::RelationshipUserUserData](docs/RelationshipUserUserData.md)
 - [WebService::Fastly::Object::RelationshipWafActiveRules](docs/RelationshipWafActiveRules.md)
 - [WebService::Fastly::Object::RelationshipWafActiveRulesWafActiveRules](docs/RelationshipWafActiveRulesWafActiveRules.md)
 - [WebService::Fastly::Object::RelationshipWafFirewall](docs/RelationshipWafFirewall.md)
 - [WebService::Fastly::Object::RelationshipWafFirewallVersion](docs/RelationshipWafFirewallVersion.md)
 - [WebService::Fastly::Object::RelationshipWafFirewallVersionWafFirewallVersion](docs/RelationshipWafFirewallVersionWafFirewallVersion.md)
 - [WebService::Fastly::Object::RelationshipWafFirewallVersions](docs/RelationshipWafFirewallVersions.md)
 - [WebService::Fastly::Object::RelationshipWafFirewallWafFirewall](docs/RelationshipWafFirewallWafFirewall.md)
 - [WebService::Fastly::Object::RelationshipWafRule](docs/RelationshipWafRule.md)
 - [WebService::Fastly::Object::RelationshipWafRuleRevision](docs/RelationshipWafRuleRevision.md)
 - [WebService::Fastly::Object::RelationshipWafRuleRevisionWafRuleRevisions](docs/RelationshipWafRuleRevisionWafRuleRevisions.md)
 - [WebService::Fastly::Object::RelationshipWafRuleRevisions](docs/RelationshipWafRuleRevisions.md)
 - [WebService::Fastly::Object::RelationshipWafRuleWafRule](docs/RelationshipWafRuleWafRule.md)
 - [WebService::Fastly::Object::RelationshipWafRules](docs/RelationshipWafRules.md)
 - [WebService::Fastly::Object::RelationshipWafTags](docs/RelationshipWafTags.md)
 - [WebService::Fastly::Object::RelationshipWafTagsWafTags](docs/RelationshipWafTagsWafTags.md)
 - [WebService::Fastly::Object::RelationshipsForInvitation](docs/RelationshipsForInvitation.md)
 - [WebService::Fastly::Object::RelationshipsForStar](docs/RelationshipsForStar.md)
 - [WebService::Fastly::Object::RelationshipsForTlsActivation](docs/RelationshipsForTlsActivation.md)
 - [WebService::Fastly::Object::RelationshipsForTlsBulkCertificate](docs/RelationshipsForTlsBulkCertificate.md)
 - [WebService::Fastly::Object::RelationshipsForTlsConfiguration](docs/RelationshipsForTlsConfiguration.md)
 - [WebService::Fastly::Object::RelationshipsForTlsDomain](docs/RelationshipsForTlsDomain.md)
 - [WebService::Fastly::Object::RelationshipsForTlsPrivateKey](docs/RelationshipsForTlsPrivateKey.md)
 - [WebService::Fastly::Object::RelationshipsForTlsSubscription](docs/RelationshipsForTlsSubscription.md)
 - [WebService::Fastly::Object::RelationshipsForWafActiveRule](docs/RelationshipsForWafActiveRule.md)
 - [WebService::Fastly::Object::RelationshipsForWafExclusion](docs/RelationshipsForWafExclusion.md)
 - [WebService::Fastly::Object::RelationshipsForWafFirewallVersion](docs/RelationshipsForWafFirewallVersion.md)
 - [WebService::Fastly::Object::RelationshipsForWafRule](docs/RelationshipsForWafRule.md)
 - [WebService::Fastly::Object::RequestSettings](docs/RequestSettings.md)
 - [WebService::Fastly::Object::RequestSettingsResponse](docs/RequestSettingsResponse.md)
 - [WebService::Fastly::Object::Resource](docs/Resource.md)
 - [WebService::Fastly::Object::ResourceCreate](docs/ResourceCreate.md)
 - [WebService::Fastly::Object::ResourceCreateAllOf](docs/ResourceCreateAllOf.md)
 - [WebService::Fastly::Object::ResourceResponse](docs/ResourceResponse.md)
 - [WebService::Fastly::Object::ResourceResponseAllOf](docs/ResourceResponseAllOf.md)
 - [WebService::Fastly::Object::ResponseObject](docs/ResponseObject.md)
 - [WebService::Fastly::Object::ResponseObjectResponse](docs/ResponseObjectResponse.md)
 - [WebService::Fastly::Object::Results](docs/Results.md)
 - [WebService::Fastly::Object::RoleUser](docs/RoleUser.md)
 - [WebService::Fastly::Object::SchemasContactResponse](docs/SchemasContactResponse.md)
 - [WebService::Fastly::Object::SchemasSnippetResponse](docs/SchemasSnippetResponse.md)
 - [WebService::Fastly::Object::SchemasUserResponse](docs/SchemasUserResponse.md)
 - [WebService::Fastly::Object::SchemasVclResponse](docs/SchemasVclResponse.md)
 - [WebService::Fastly::Object::SchemasVersion](docs/SchemasVersion.md)
 - [WebService::Fastly::Object::SchemasVersionResponse](docs/SchemasVersionResponse.md)
 - [WebService::Fastly::Object::SchemasWafFirewallVersion](docs/SchemasWafFirewallVersion.md)
 - [WebService::Fastly::Object::SchemasWafFirewallVersionData](docs/SchemasWafFirewallVersionData.md)
 - [WebService::Fastly::Object::Server](docs/Server.md)
 - [WebService::Fastly::Object::ServerResponse](docs/ServerResponse.md)
 - [WebService::Fastly::Object::ServerResponseAllOf](docs/ServerResponseAllOf.md)
 - [WebService::Fastly::Object::Service](docs/Service.md)
 - [WebService::Fastly::Object::ServiceAuthorization](docs/ServiceAuthorization.md)
 - [WebService::Fastly::Object::ServiceAuthorizationData](docs/ServiceAuthorizationData.md)
 - [WebService::Fastly::Object::ServiceAuthorizationDataAttributes](docs/ServiceAuthorizationDataAttributes.md)
 - [WebService::Fastly::Object::ServiceAuthorizationResponse](docs/ServiceAuthorizationResponse.md)
 - [WebService::Fastly::Object::ServiceAuthorizationResponseData](docs/ServiceAuthorizationResponseData.md)
 - [WebService::Fastly::Object::ServiceAuthorizationResponseDataAllOf](docs/ServiceAuthorizationResponseDataAllOf.md)
 - [WebService::Fastly::Object::ServiceAuthorizationsResponse](docs/ServiceAuthorizationsResponse.md)
 - [WebService::Fastly::Object::ServiceAuthorizationsResponseAllOf](docs/ServiceAuthorizationsResponseAllOf.md)
 - [WebService::Fastly::Object::ServiceCreate](docs/ServiceCreate.md)
 - [WebService::Fastly::Object::ServiceCreateAllOf](docs/ServiceCreateAllOf.md)
 - [WebService::Fastly::Object::ServiceDetail](docs/ServiceDetail.md)
 - [WebService::Fastly::Object::ServiceDetailAllOf](docs/ServiceDetailAllOf.md)
 - [WebService::Fastly::Object::ServiceIdAndVersion](docs/ServiceIdAndVersion.md)
 - [WebService::Fastly::Object::ServiceInvitation](docs/ServiceInvitation.md)
 - [WebService::Fastly::Object::ServiceInvitationData](docs/ServiceInvitationData.md)
 - [WebService::Fastly::Object::ServiceInvitationDataAttributes](docs/ServiceInvitationDataAttributes.md)
 - [WebService::Fastly::Object::ServiceInvitationResponse](docs/ServiceInvitationResponse.md)
 - [WebService::Fastly::Object::ServiceInvitationResponseAllOf](docs/ServiceInvitationResponseAllOf.md)
 - [WebService::Fastly::Object::ServiceInvitationResponseAllOfData](docs/ServiceInvitationResponseAllOfData.md)
 - [WebService::Fastly::Object::ServiceListResponse](docs/ServiceListResponse.md)
 - [WebService::Fastly::Object::ServiceListResponseAllOf](docs/ServiceListResponseAllOf.md)
 - [WebService::Fastly::Object::ServiceResponse](docs/ServiceResponse.md)
 - [WebService::Fastly::Object::ServiceResponseAllOf](docs/ServiceResponseAllOf.md)
 - [WebService::Fastly::Object::ServiceVersionDetail](docs/ServiceVersionDetail.md)
 - [WebService::Fastly::Object::ServiceVersionDetailOrNull](docs/ServiceVersionDetailOrNull.md)
 - [WebService::Fastly::Object::Settings](docs/Settings.md)
 - [WebService::Fastly::Object::SettingsResponse](docs/SettingsResponse.md)
 - [WebService::Fastly::Object::Snippet](docs/Snippet.md)
 - [WebService::Fastly::Object::SnippetResponse](docs/SnippetResponse.md)
 - [WebService::Fastly::Object::SnippetResponseAllOf](docs/SnippetResponseAllOf.md)
 - [WebService::Fastly::Object::Star](docs/Star.md)
 - [WebService::Fastly::Object::StarData](docs/StarData.md)
 - [WebService::Fastly::Object::StarResponse](docs/StarResponse.md)
 - [WebService::Fastly::Object::StarResponseAllOf](docs/StarResponseAllOf.md)
 - [WebService::Fastly::Object::Stats](docs/Stats.md)
 - [WebService::Fastly::Object::Timestamps](docs/Timestamps.md)
 - [WebService::Fastly::Object::TimestampsNoDelete](docs/TimestampsNoDelete.md)
 - [WebService::Fastly::Object::TlsActivation](docs/TlsActivation.md)
 - [WebService::Fastly::Object::TlsActivationData](docs/TlsActivationData.md)
 - [WebService::Fastly::Object::TlsActivationResponse](docs/TlsActivationResponse.md)
 - [WebService::Fastly::Object::TlsActivationResponseData](docs/TlsActivationResponseData.md)
 - [WebService::Fastly::Object::TlsActivationResponseDataAllOf](docs/TlsActivationResponseDataAllOf.md)
 - [WebService::Fastly::Object::TlsActivationsResponse](docs/TlsActivationsResponse.md)
 - [WebService::Fastly::Object::TlsActivationsResponseAllOf](docs/TlsActivationsResponseAllOf.md)
 - [WebService::Fastly::Object::TlsBulkCertificate](docs/TlsBulkCertificate.md)
 - [WebService::Fastly::Object::TlsBulkCertificateData](docs/TlsBulkCertificateData.md)
 - [WebService::Fastly::Object::TlsBulkCertificateDataAttributes](docs/TlsBulkCertificateDataAttributes.md)
 - [WebService::Fastly::Object::TlsBulkCertificateResponse](docs/TlsBulkCertificateResponse.md)
 - [WebService::Fastly::Object::TlsBulkCertificateResponseAttributes](docs/TlsBulkCertificateResponseAttributes.md)
 - [WebService::Fastly::Object::TlsBulkCertificateResponseAttributesAllOf](docs/TlsBulkCertificateResponseAttributesAllOf.md)
 - [WebService::Fastly::Object::TlsBulkCertificateResponseData](docs/TlsBulkCertificateResponseData.md)
 - [WebService::Fastly::Object::TlsBulkCertificateResponseDataAllOf](docs/TlsBulkCertificateResponseDataAllOf.md)
 - [WebService::Fastly::Object::TlsBulkCertificatesResponse](docs/TlsBulkCertificatesResponse.md)
 - [WebService::Fastly::Object::TlsBulkCertificatesResponseAllOf](docs/TlsBulkCertificatesResponseAllOf.md)
 - [WebService::Fastly::Object::TlsCertificate](docs/TlsCertificate.md)
 - [WebService::Fastly::Object::TlsCertificateData](docs/TlsCertificateData.md)
 - [WebService::Fastly::Object::TlsCertificateDataAttributes](docs/TlsCertificateDataAttributes.md)
 - [WebService::Fastly::Object::TlsCertificateResponse](docs/TlsCertificateResponse.md)
 - [WebService::Fastly::Object::TlsCertificateResponseAttributes](docs/TlsCertificateResponseAttributes.md)
 - [WebService::Fastly::Object::TlsCertificateResponseAttributesAllOf](docs/TlsCertificateResponseAttributesAllOf.md)
 - [WebService::Fastly::Object::TlsCertificateResponseData](docs/TlsCertificateResponseData.md)
 - [WebService::Fastly::Object::TlsCertificateResponseDataAllOf](docs/TlsCertificateResponseDataAllOf.md)
 - [WebService::Fastly::Object::TlsCertificatesResponse](docs/TlsCertificatesResponse.md)
 - [WebService::Fastly::Object::TlsCertificatesResponseAllOf](docs/TlsCertificatesResponseAllOf.md)
 - [WebService::Fastly::Object::TlsCommon](docs/TlsCommon.md)
 - [WebService::Fastly::Object::TlsConfiguration](docs/TlsConfiguration.md)
 - [WebService::Fastly::Object::TlsConfigurationData](docs/TlsConfigurationData.md)
 - [WebService::Fastly::Object::TlsConfigurationDataAttributes](docs/TlsConfigurationDataAttributes.md)
 - [WebService::Fastly::Object::TlsConfigurationResponse](docs/TlsConfigurationResponse.md)
 - [WebService::Fastly::Object::TlsConfigurationResponseAttributes](docs/TlsConfigurationResponseAttributes.md)
 - [WebService::Fastly::Object::TlsConfigurationResponseAttributesAllOf](docs/TlsConfigurationResponseAttributesAllOf.md)
 - [WebService::Fastly::Object::TlsConfigurationResponseData](docs/TlsConfigurationResponseData.md)
 - [WebService::Fastly::Object::TlsConfigurationResponseDataAllOf](docs/TlsConfigurationResponseDataAllOf.md)
 - [WebService::Fastly::Object::TlsConfigurationsResponse](docs/TlsConfigurationsResponse.md)
 - [WebService::Fastly::Object::TlsConfigurationsResponseAllOf](docs/TlsConfigurationsResponseAllOf.md)
 - [WebService::Fastly::Object::TlsDnsRecord](docs/TlsDnsRecord.md)
 - [WebService::Fastly::Object::TlsDomainData](docs/TlsDomainData.md)
 - [WebService::Fastly::Object::TlsDomainsResponse](docs/TlsDomainsResponse.md)
 - [WebService::Fastly::Object::TlsDomainsResponseAllOf](docs/TlsDomainsResponseAllOf.md)
 - [WebService::Fastly::Object::TlsPrivateKey](docs/TlsPrivateKey.md)
 - [WebService::Fastly::Object::TlsPrivateKeyData](docs/TlsPrivateKeyData.md)
 - [WebService::Fastly::Object::TlsPrivateKeyDataAttributes](docs/TlsPrivateKeyDataAttributes.md)
 - [WebService::Fastly::Object::TlsPrivateKeyResponse](docs/TlsPrivateKeyResponse.md)
 - [WebService::Fastly::Object::TlsPrivateKeyResponseAttributes](docs/TlsPrivateKeyResponseAttributes.md)
 - [WebService::Fastly::Object::TlsPrivateKeyResponseAttributesAllOf](docs/TlsPrivateKeyResponseAttributesAllOf.md)
 - [WebService::Fastly::Object::TlsPrivateKeyResponseData](docs/TlsPrivateKeyResponseData.md)
 - [WebService::Fastly::Object::TlsPrivateKeysResponse](docs/TlsPrivateKeysResponse.md)
 - [WebService::Fastly::Object::TlsPrivateKeysResponseAllOf](docs/TlsPrivateKeysResponseAllOf.md)
 - [WebService::Fastly::Object::TlsSubscription](docs/TlsSubscription.md)
 - [WebService::Fastly::Object::TlsSubscriptionData](docs/TlsSubscriptionData.md)
 - [WebService::Fastly::Object::TlsSubscriptionDataAttributes](docs/TlsSubscriptionDataAttributes.md)
 - [WebService::Fastly::Object::TlsSubscriptionResponse](docs/TlsSubscriptionResponse.md)
 - [WebService::Fastly::Object::TlsSubscriptionResponseAttributes](docs/TlsSubscriptionResponseAttributes.md)
 - [WebService::Fastly::Object::TlsSubscriptionResponseAttributesAllOf](docs/TlsSubscriptionResponseAttributesAllOf.md)
 - [WebService::Fastly::Object::TlsSubscriptionResponseData](docs/TlsSubscriptionResponseData.md)
 - [WebService::Fastly::Object::TlsSubscriptionResponseDataAllOf](docs/TlsSubscriptionResponseDataAllOf.md)
 - [WebService::Fastly::Object::TlsSubscriptionsResponse](docs/TlsSubscriptionsResponse.md)
 - [WebService::Fastly::Object::TlsSubscriptionsResponseAllOf](docs/TlsSubscriptionsResponseAllOf.md)
 - [WebService::Fastly::Object::Token](docs/Token.md)
 - [WebService::Fastly::Object::TokenCreatedResponse](docs/TokenCreatedResponse.md)
 - [WebService::Fastly::Object::TokenCreatedResponseAllOf](docs/TokenCreatedResponseAllOf.md)
 - [WebService::Fastly::Object::TokenResponse](docs/TokenResponse.md)
 - [WebService::Fastly::Object::TokenResponseAllOf](docs/TokenResponseAllOf.md)
 - [WebService::Fastly::Object::TypeBillingAddress](docs/TypeBillingAddress.md)
 - [WebService::Fastly::Object::TypeContact](docs/TypeContact.md)
 - [WebService::Fastly::Object::TypeCustomer](docs/TypeCustomer.md)
 - [WebService::Fastly::Object::TypeEvent](docs/TypeEvent.md)
 - [WebService::Fastly::Object::TypeInvitation](docs/TypeInvitation.md)
 - [WebService::Fastly::Object::TypeResource](docs/TypeResource.md)
 - [WebService::Fastly::Object::TypeService](docs/TypeService.md)
 - [WebService::Fastly::Object::TypeServiceAuthorization](docs/TypeServiceAuthorization.md)
 - [WebService::Fastly::Object::TypeServiceInvitation](docs/TypeServiceInvitation.md)
 - [WebService::Fastly::Object::TypeStar](docs/TypeStar.md)
 - [WebService::Fastly::Object::TypeTlsActivation](docs/TypeTlsActivation.md)
 - [WebService::Fastly::Object::TypeTlsBulkCertificate](docs/TypeTlsBulkCertificate.md)
 - [WebService::Fastly::Object::TypeTlsCertificate](docs/TypeTlsCertificate.md)
 - [WebService::Fastly::Object::TypeTlsConfiguration](docs/TypeTlsConfiguration.md)
 - [WebService::Fastly::Object::TypeTlsDnsRecord](docs/TypeTlsDnsRecord.md)
 - [WebService::Fastly::Object::TypeTlsDomain](docs/TypeTlsDomain.md)
 - [WebService::Fastly::Object::TypeTlsPrivateKey](docs/TypeTlsPrivateKey.md)
 - [WebService::Fastly::Object::TypeTlsSubscription](docs/TypeTlsSubscription.md)
 - [WebService::Fastly::Object::TypeUser](docs/TypeUser.md)
 - [WebService::Fastly::Object::TypeWafActiveRule](docs/TypeWafActiveRule.md)
 - [WebService::Fastly::Object::TypeWafExclusion](docs/TypeWafExclusion.md)
 - [WebService::Fastly::Object::TypeWafFirewall](docs/TypeWafFirewall.md)
 - [WebService::Fastly::Object::TypeWafFirewallVersion](docs/TypeWafFirewallVersion.md)
 - [WebService::Fastly::Object::TypeWafRule](docs/TypeWafRule.md)
 - [WebService::Fastly::Object::TypeWafRuleRevision](docs/TypeWafRuleRevision.md)
 - [WebService::Fastly::Object::TypeWafTag](docs/TypeWafTag.md)
 - [WebService::Fastly::Object::UpdateBillingAddressRequest](docs/UpdateBillingAddressRequest.md)
 - [WebService::Fastly::Object::UpdateBillingAddressRequestData](docs/UpdateBillingAddressRequestData.md)
 - [WebService::Fastly::Object::User](docs/User.md)
 - [WebService::Fastly::Object::UserResponse](docs/UserResponse.md)
 - [WebService::Fastly::Object::UserResponseAllOf](docs/UserResponseAllOf.md)
 - [WebService::Fastly::Object::Vcl](docs/Vcl.md)
 - [WebService::Fastly::Object::VclDiff](docs/VclDiff.md)
 - [WebService::Fastly::Object::VclResponse](docs/VclResponse.md)
 - [WebService::Fastly::Object::Version](docs/Version.md)
 - [WebService::Fastly::Object::VersionCreateResponse](docs/VersionCreateResponse.md)
 - [WebService::Fastly::Object::VersionDetail](docs/VersionDetail.md)
 - [WebService::Fastly::Object::VersionResponse](docs/VersionResponse.md)
 - [WebService::Fastly::Object::VersionResponseAllOf](docs/VersionResponseAllOf.md)
 - [WebService::Fastly::Object::WafActiveRule](docs/WafActiveRule.md)
 - [WebService::Fastly::Object::WafActiveRuleCreationResponse](docs/WafActiveRuleCreationResponse.md)
 - [WebService::Fastly::Object::WafActiveRuleData](docs/WafActiveRuleData.md)
 - [WebService::Fastly::Object::WafActiveRuleDataAttributes](docs/WafActiveRuleDataAttributes.md)
 - [WebService::Fastly::Object::WafActiveRuleResponse](docs/WafActiveRuleResponse.md)
 - [WebService::Fastly::Object::WafActiveRuleResponseData](docs/WafActiveRuleResponseData.md)
 - [WebService::Fastly::Object::WafActiveRuleResponseDataAllOf](docs/WafActiveRuleResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafActiveRuleResponseDataAttributes](docs/WafActiveRuleResponseDataAttributes.md)
 - [WebService::Fastly::Object::WafActiveRuleResponseDataAttributesAllOf](docs/WafActiveRuleResponseDataAttributesAllOf.md)
 - [WebService::Fastly::Object::WafActiveRuleResponseDataRelationships](docs/WafActiveRuleResponseDataRelationships.md)
 - [WebService::Fastly::Object::WafActiveRulesResponse](docs/WafActiveRulesResponse.md)
 - [WebService::Fastly::Object::WafActiveRulesResponseAllOf](docs/WafActiveRulesResponseAllOf.md)
 - [WebService::Fastly::Object::WafExclusion](docs/WafExclusion.md)
 - [WebService::Fastly::Object::WafExclusionData](docs/WafExclusionData.md)
 - [WebService::Fastly::Object::WafExclusionDataAttributes](docs/WafExclusionDataAttributes.md)
 - [WebService::Fastly::Object::WafExclusionResponse](docs/WafExclusionResponse.md)
 - [WebService::Fastly::Object::WafExclusionResponseData](docs/WafExclusionResponseData.md)
 - [WebService::Fastly::Object::WafExclusionResponseDataAllOf](docs/WafExclusionResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafExclusionResponseDataAttributes](docs/WafExclusionResponseDataAttributes.md)
 - [WebService::Fastly::Object::WafExclusionResponseDataAttributesAllOf](docs/WafExclusionResponseDataAttributesAllOf.md)
 - [WebService::Fastly::Object::WafExclusionResponseDataRelationships](docs/WafExclusionResponseDataRelationships.md)
 - [WebService::Fastly::Object::WafExclusionsResponse](docs/WafExclusionsResponse.md)
 - [WebService::Fastly::Object::WafExclusionsResponseAllOf](docs/WafExclusionsResponseAllOf.md)
 - [WebService::Fastly::Object::WafFirewall](docs/WafFirewall.md)
 - [WebService::Fastly::Object::WafFirewallData](docs/WafFirewallData.md)
 - [WebService::Fastly::Object::WafFirewallDataAttributes](docs/WafFirewallDataAttributes.md)
 - [WebService::Fastly::Object::WafFirewallResponse](docs/WafFirewallResponse.md)
 - [WebService::Fastly::Object::WafFirewallResponseData](docs/WafFirewallResponseData.md)
 - [WebService::Fastly::Object::WafFirewallResponseDataAllOf](docs/WafFirewallResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafFirewallResponseDataAttributes](docs/WafFirewallResponseDataAttributes.md)
 - [WebService::Fastly::Object::WafFirewallResponseDataAttributesAllOf](docs/WafFirewallResponseDataAttributesAllOf.md)
 - [WebService::Fastly::Object::WafFirewallVersion](docs/WafFirewallVersion.md)
 - [WebService::Fastly::Object::WafFirewallVersionData](docs/WafFirewallVersionData.md)
 - [WebService::Fastly::Object::WafFirewallVersionDataAttributes](docs/WafFirewallVersionDataAttributes.md)
 - [WebService::Fastly::Object::WafFirewallVersionResponse](docs/WafFirewallVersionResponse.md)
 - [WebService::Fastly::Object::WafFirewallVersionResponseData](docs/WafFirewallVersionResponseData.md)
 - [WebService::Fastly::Object::WafFirewallVersionResponseDataAllOf](docs/WafFirewallVersionResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafFirewallVersionResponseDataAttributes](docs/WafFirewallVersionResponseDataAttributes.md)
 - [WebService::Fastly::Object::WafFirewallVersionResponseDataAttributesAllOf](docs/WafFirewallVersionResponseDataAttributesAllOf.md)
 - [WebService::Fastly::Object::WafFirewallVersionsResponse](docs/WafFirewallVersionsResponse.md)
 - [WebService::Fastly::Object::WafFirewallVersionsResponseAllOf](docs/WafFirewallVersionsResponseAllOf.md)
 - [WebService::Fastly::Object::WafFirewallsResponse](docs/WafFirewallsResponse.md)
 - [WebService::Fastly::Object::WafFirewallsResponseAllOf](docs/WafFirewallsResponseAllOf.md)
 - [WebService::Fastly::Object::WafRule](docs/WafRule.md)
 - [WebService::Fastly::Object::WafRuleAttributes](docs/WafRuleAttributes.md)
 - [WebService::Fastly::Object::WafRuleResponse](docs/WafRuleResponse.md)
 - [WebService::Fastly::Object::WafRuleResponseData](docs/WafRuleResponseData.md)
 - [WebService::Fastly::Object::WafRuleResponseDataAllOf](docs/WafRuleResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafRuleRevision](docs/WafRuleRevision.md)
 - [WebService::Fastly::Object::WafRuleRevisionAttributes](docs/WafRuleRevisionAttributes.md)
 - [WebService::Fastly::Object::WafRuleRevisionOrLatest](docs/WafRuleRevisionOrLatest.md)
 - [WebService::Fastly::Object::WafRuleRevisionResponse](docs/WafRuleRevisionResponse.md)
 - [WebService::Fastly::Object::WafRuleRevisionResponseData](docs/WafRuleRevisionResponseData.md)
 - [WebService::Fastly::Object::WafRuleRevisionResponseDataAllOf](docs/WafRuleRevisionResponseDataAllOf.md)
 - [WebService::Fastly::Object::WafRuleRevisionsResponse](docs/WafRuleRevisionsResponse.md)
 - [WebService::Fastly::Object::WafRuleRevisionsResponseAllOf](docs/WafRuleRevisionsResponseAllOf.md)
 - [WebService::Fastly::Object::WafRulesResponse](docs/WafRulesResponse.md)
 - [WebService::Fastly::Object::WafRulesResponseAllOf](docs/WafRulesResponseAllOf.md)
 - [WebService::Fastly::Object::WafTag](docs/WafTag.md)
 - [WebService::Fastly::Object::WafTagAttributes](docs/WafTagAttributes.md)
 - [WebService::Fastly::Object::WafTagsResponse](docs/WafTagsResponse.md)
 - [WebService::Fastly::Object::WafTagsResponseAllOf](docs/WafTagsResponseAllOf.md)
 - [WebService::Fastly::Object::WafTagsResponseDataItem](docs/WafTagsResponseDataItem.md)


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

