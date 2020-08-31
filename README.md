# NAME

Net::Fastly - client library for interacting with the Fastly web acceleration service

# SYNOPSIS

    use Net::Fastly;

    # username/password authentication is deprecated and will not be available
    # starting September 2020; use {api_key: 'your-key'} as the login option
    my $fastly = Net::Fastly->new(%login_opts);
    
    my $current_user     = $fastly->current_user;
    my $current_customer = $fastly->current_customer;
    
    my $user     = $fastly->get_user($current_user->id);
    my $customer = $fastly->get_customer($current_customer->id);
    
    print "Name: ".$user->name."\n";
    print "Works for ".$user->customer->name."\n";
    print "Which is the same as ".$customer->name."\n";
    print "Which has the owner ".$customer->owner->name."\n";
    
    # Let's see which services we have defined
    foreach my $service ($fastly->list_services) {
        print $service->name." (".$service->id.")\n";
        foreach my $version ($service->versions) {
            print "\t".$version->number."\n";
        }
    }
    
    my $service        = $fastly->create_service(name => "MyFirstService");
    my $latest_version = $service->version;
    
    # Create a domain and a backend for the service ...
    my $domain         = $fastly->create_domain(service_id => $service->id, version => $latest_version->number, name => "www.example.com");
    my $backend        = $fastly->create_backend(service_id => $service->id, version => $latest_version->number, ipv4 => "127.0.0.1", port => 80);
    
    # ... and activate it. You're now hosted on Fastly.
    $latest_version->activate;
    
    # Let's take a peek at the VCL that Fastly generated for us
    my $vcl = $latest_version->generated_vcl;
    print "Generated VCL file is:\n".$vcl->content."\n";
    
    # Now let's create a new version ...
    my $new_version    = $latest_version->clone;
    # ... add a new backend ...
    my $new_backend    = $fastly->create_backend(service_id => $service->id, version => $new_version->number, ipv4 => "192.0.0.1", port => 8080);
    # ... and upload some custome vcl (presuming we have permissions)
    $new_version->upload_vcl($vcl_name, slurp($vcl_file));    
    
    $new_version->activate;

    # Purging
    $fastly->purge('http://www.example.com');    # regular purge
    $fastly->purge('http://www.example.com', 1); # 'soft' purge (see note below)
    $service->purge_by_key('article-1');         # purge by surrogate key, note this works on $service
    $service->purge_by_key('article-1', 1);      # 'soft' purge by surrogate key
    $service->purge_all;                         # use with caution!

# DESCRIPTION

## A Note About Authentication

Authenticating with a username/password is deprecated and will no longer be available starting September 2020.

Authenticating with an API Token is shown in the example synopsis below. For more information on API Tokens, please see \[Fastly's API Token documentation\](https://developer.fastly.com/reference/api/auth/). For more information about authenticating to our API, please see our \[Authentication section\](https://developer.fastly.com/reference/api/#authentication).

# METHODS

## new &lt;opt\[s\]>

Create a new Fastly client. Options are

- user - your Fastly login
- password - your Fastly password
- api\_key - your Fastly api key

You only need to pass in `api_key` OR `user` and `password`. 

Some methods require full username and password rather than just auth token.

## client

Get the current Net::Fastly::Client

## set\_customer &lt;customer id>

Set the current customer to act as.

**NOTE**: this will only work if you're an admin

## authed

Whether or not we're authed at all by either username & password or API key

## fully\_authed

Whether or not we're fully (username and password) authed

## current\_user 

Return a User object representing the current logged in user.

This will not work if you're logged in with an API key.

## current\_customer

Return a Customer object representing the customer of the current logged in user.

## commands 

Return a hash representing all commands available.

Useful for information.

## purge &lt;path> \[soft\]

Purge the specified path from your cache.

You can optionally pass in a true value to enable "soft" purging e.g

    $fastly->purge($url, 1);

See [https://docs.fastly.com/guides/purging/soft-purges](https://docs.fastly.com/guides/purging/soft-purges)

Previously purging made an API call to the `/purge` endpoint of the Fastly API.

The new method of purging is done by making an HTTP request against the URL using the `PURGE` HTTP method.

This module now uses the new method. The old method can be used by passing the `use_old_purge_method` into the constructor.

    my $fastly = Net::Fastly->new(%login_opts, use_old_purge_method => 1);

## stats \[opt\[s\]\]

Fetches historical stats for each of your fastly services and groups the results by service id.

If you pass in a `field` opt then fetches only the specified field.

If you pass in a `service` opt then fetches only the specified service.

The `field` and `service` opts can be combined.

If you pass in an `aggregate` flag then fetches historical stats information aggregated across all of your Fastly services. This cannot be combined with `field` and `service`.

Other options available are:

- from & to
- by
- region

See http://docs.fastly.com/docs/stats for details.

## usage \[opt\[s\]\]

Returns usage information aggregated across all Fastly services and grouped by region.

If the `by_service` flag is passed then teturns usage information aggregated by service and grouped by service & region.

Other options available are:

- from & to
- by
- region

See http://docs.fastly.com/docs/stats for details.

## regions

Fetches the list of codes for regions that are covered by the Fastly CDN service.

## create\_user &lt;opts>

## create\_customer &lt;opts>

## create\_service &lt;opts>

## create\_version service\_id => &lt;service id>, \[opts\]

## create\_backend service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_director service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_domain service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_healthcheck service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_match service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_origin service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_syslog service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_vcl service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

## create\_condition service\_id => &lt;service id>, version => &lt;version number>, name => &lt;name> &lt;opts>

Create new objects.

## get\_user &lt;id>

## get\_customer &lt;id>

## get\_service &lt;id>

## get\_version &lt;service id> &lt;number>

## get\_backend &lt;service id> &lt;version number> &lt;name>

## get\_director &lt;service id> &lt;version number> &lt;name>

## get\_domain &lt;service id> &lt;version number> &lt;name>

## get\_healthcheck &lt;service id> &lt;version number> &lt;name>

## get\_invoice \[&lt;year> &lt;month>\]

Return a Net::Fastly::Invoice objects representing an invoice for all services.

If a year and month are passed in returns the invoice for that whole month. 

Otherwise it returns the invoices for the current month to date.

## get\_match &lt;service id> &lt;version number> &lt;name>

## get\_origin &lt;service id> &lt;version number> &lt;name>

## get\_syslog &lt;service id> &lt;version number> &lt;name>

## get\_vcl &lt;service id> &lt;version number> &lt;name>

## get\_version &lt;service id> &lt;version number> &lt;name>

## get\_settings &lt;service id> &lt;version number>

## get\_condition &lt;service id> &lt;version number> &lt;name>

Get existing objects.

## update\_user &lt;obj>

## update\_customer &lt;obj>

## update\_service &lt;obj>

## update\_version &lt;obj>

## update\_backend &lt;obj>

## update\_director &lt;obj>

## update\_domain &lt;obj>

## update\_healthcheck &lt;obj>

## update\_match &lt;obj>

## update\_origin &lt;obj>

## update\_syslog &lt;obj>

## update\_vcl &lt;obj>

## update\_version &lt;obj>

## update\_settings &lt;obj>

## update\_condition &lt;obj>

Update existing objects.

Note - you can also do

    $obj->save;

## delete\_user &lt;obj> 

## delete\_customer &lt;obj>

## delete\_service &lt;obj>

## delete\_version &lt;obj>

## delete\_backend &lt;obj>

## delete\_director &lt;obj>

## delete\_domain &lt;obj>

## delete\_healthcheck &lt;obj>

## delete\_match &lt;obj>

## delete\_origin &lt;obj>

## delete\_syslog &lt;obj>

## delete\_vcl &lt;obj>

## delete\_version &lt;obj>

## delete\_condition &lt;obj>

Delete existing objects.

Note - you can also do

    $obj->delete

## list\_users

## list\_customers 

## list\_versions

## list\_services 

## list\_backends 

## list\_directors 

## list\_domains 

## list\_healthchecks

## list\_matchs 

## list\_origins 

## list\_syslogs

## list\_vcls 

## list\_versions 

## list\_conditions

Get a list of all objects

## search\_services &lt;param\[s\]>

Search all the services that the current customer has.

In general you'll want to do

        my @services = $fastly->search_services(name => $name);

or

        my ($service) = $fastly->search_services(name => $name, version => $number);

# CLASS METHODS

## load\_options &lt;file>

Attempts to load various config options in the form

    <key> = <value>
    

From a file.

Skips whitespace and lines starting with `#`.

## get\_options &lt;file\[s\]>

Tries to load options from the file\[s\] passed in using, 
`load_options`, stopping when it finds the first one.

Then it overrides those options with command line options 
of the form

    --<key>=<value>

# COPYRIGHT

Copyright 2011 - Fastly Inc

Distributed under the same terms as Perl itself.

# SUPPORT 

Mail support at fastly dot com if you have problems.

# DEVELOPERS

http://github.com/fastly/fastly-perl

http://www.fastly.com/documentation
