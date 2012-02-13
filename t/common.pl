sub common_tests {
    my $fastly = shift;
    my $name = "fastly-test-service-".get_rand;
    my $service = eval { $fastly->create_service(name => $name) };
    is($@, '', "Didn't raise an error");
    ok($service, "Service is defined");
    is($service->name, $name, "Service name is correct");


    $tmp = eval { $fastly->get_service($service->id) };
    is($@, '', "Didn't raise an error");
    ok($tmp, "Service is defined again");
    is($tmp->name, $service->name, "Name is correct");

    my $version = eval { $service->version };
    is($@, '', "Didn't raise an error");
    ok($version, "Version is defined");

    my $settings = eval { $fastly->get_settings($service->id, $version->number) };
    is($@, '', "Didn't raise an error");
    ok($settings, "Settings is defined");
    is($settings->service_id, $service->id, "Service id is the same");
    is($settings->version, $version->number, "Version number is the same");

    my $default_ttl = $settings->settings->{'general.default_ttl'};
    $settings       = eval { $version->settings };
    is($@, '', "Didn't raise an error");
    ok($settings, "Settings is defined");
    is($settings->service_id, $service->id, "Service id is still the same");
    is($settings->version, $version->number, "Version number is still the same");
    is($settings->settings->{'general.default_ttl'}, $default_ttl, "Default TTL is the same");

    $settings->settings->{'general.default_ttl'} = $default_ttl = 888_888_888;
    $settings->save;

    $settings       = eval { $version->settings };
    is($settings->settings->{'general.default_ttl'}, $default_ttl, "Default TTL is the same");

    my @services;
    
    @services = eval { $fastly->list_services };
    is($@, '', "Didn't raise an error");
    ok(scalar @services, "Got some services back");
    ok(scalar(grep { $name eq $_->name } @services), "List services returns the service with the correct name");
    
    @services = eval { $fastly->search_services(name => $name) };
    is($@, '', "Didn't raise an error");
    ok(scalar @services, "Got some services back after a search by name");
    ok(scalar(grep { $name eq $_->name } @services), "Search services returns the service with the correct name after a search by name");
    
    @services = eval { $fastly->search_services(name => $name, version => $version->number) };
    is($@, '', "Didn't raise an error");
    ok(scalar @services, "Got some services back after a search by name and version");
    ok(scalar(grep { $name eq $_->name } @services), "Search services returns the service with the correct name after a search by name and version");
    
    my $version2 = eval { $fastly->create_version( service_id => $service->id ) };
    is($@, '', "Didn't raise an error");
    ok($version2, "Version 2 is defined");
    is($version->number+1, $version2->number, "Version is incremented");
    
    my $version3 = eval { $version2->clone };
    is($@, '', "Didn't raise an error");
    ok($version3, "Version 3 is defined");
    is($version2->number+1, $version3->number, "Version is incremented again");
    
    is ($version3->service_id, $service->id, "Version 3 has the right service id");
    is ($version3->service->id, $service->id, "Version 3 has the right service");
    
    
    my $number = $version3->number;
    
    my $backend_name = "fastly-test-backend-".get_rand;
    my $backend;
    
    $backend = eval { $fastly->create_backend(service_id => $service->id, version => $number, hostname => 'localhost', name => $backend_name) };
    isnt($@, '', "Did raise an error when trying to create a backend against localhost");
    is($backend, undef, "Backend isn't defined");
    
    $backend = eval { $fastly->create_backend(service_id => $service->id, version => $number, address => '74.125.224.146', name => $backend_name) };
    is($@, '', "Didn't raise an error");
    ok($backend, "Backend is defined");
    is($backend->service_id, $service->id, "Backend's service id is correct");
    is($backend->address, '74.125.224.146', "Got the right address");
    #is($backend->ipv4, '74.125.224.146', "Got the right ipv4");
    is($backend->port, 80, "Got the right port");
    
    $backend->address('thegestalt.org');
    $backend->port(9092);
    my $r = eval { $fastly->update_backend($backend) };
    is($@, '', "Didn't raise an error");
    $backend = $fastly->get_backend($service->id, $number, $backend_name); 
    ok($backend, "Got the backend again");
    is($backend->address, 'thegestalt.org', "Got the updated address");
    #is($backend->hostname, 'thegestalt.org', "Got the updated hostname");
    is($backend->port, 9092, "Got the updated port");
    
    my $domain_name = "fastly-test-domain-".get_rand."-example.com";
     my $domain      = eval { $fastly->create_domain(service_id => $service->id, version => $number, name => $domain_name) };
     is($@, '', "Didn't raise an error");
     ok($domain, "Domain is defined");
     is($domain->name, $domain_name, "Domain's name is correct");
     is($domain->service->id, $service->id, "Domain's service id is correct");
     is($domain->version_number, $number, "Domain's version number is correct");
     is($domain->version->number, $number, "Domain's version's number is correct");
     
     
     $domain->comment("Flibbety gibbet");
     eval { $fastly->update_domain($domain) };
     is($@, '', "Didn't raise an error when updating domain");
     
     $domain = eval { $fastly->get_domain($service->id, $number, $domain_name) };
     is($@, '', "Didn't raise an error");
     ok($domain, "Domain is defined");
     is($domain->name, $domain_name, "Domain's name is correct still");
     is($domain->comment, "Flibbety gibbet", "Got comment");
     
     my $director_name = "fastly-test-director-".get_rand;
     my $director      = eval { $fastly->create_director(service_id => $service->id, version => $number, name => $director_name) };
     is($@, '', "Didn't raise an error");
     ok($director, "Director is defined");
     is($director->name, $director_name, "Director's name is correct");
     is($director->service->id, $service->id, "Director's service id is correct");
     is($director->version_number, $number, "Director's version number is correct");
     is($director->version->number, $number, "Director's version's number is correct");
     
     ok($director->add_backend($backend), "Added backend to director");
     
     
     my $origin_name = "fastly-test-origin-".get_rand;
     my $origin      = eval { $fastly->create_origin(service_id => $service->id, version => $number, name => $origin_name) };
     is($@, '', "Didn't raise an error");
     ok($origin, "Origin is defined");
     is($origin->name, $origin_name, "Origin's name is correct");
     is($origin->service->id, $service->id, "Origin's service id is correct");
     is($origin->version_number, $number, "Origin's version number is correct");
     is($origin->version->number, $number, "Origin's version's number is correct");
     
     ok($origin->add_director($director), "Added director to origin");
     
     
     my $generated2 = eval { $version3->generated_vcl };
     
     ok($version3->activate,   "Activated version");
     ok($version3->deactivate, "Deactivated version");
     ok(!$fastly->get_service($version3->service_id)->version->active, "Version is correctly not active");
     ok($version3->activate,   "Activated version again");
     ok($fastly->get_service($version3->service_id)->version->active, "Version is correctly active");
     
     
     my $generated = eval { $version3->generated_vcl(no_content => 1) };
     is($@, '', "Didn't raise an error");
     ok($generated, "Generated VCL is defined");
     ok(!defined $generated->content, "Generate VCL has no content");
     $generated = $version3->generated_vcl();
     ok($generated->content, "Generate VCL has content");
     ok($generated->content =~ /\.port = "9092"/msg, "Generated VCL has right port");
     
     my $valid = eval { $version3->validate };
     is($@, '', "Didn't raise an error");
     ok($valid, "Version3 is valid");
     
     my %stats       = $service->stats;
     ok(keys %stats, "Got stats");
     
     my $invoice     = $service->invoice;
     is($@, '', "Didn't raise an error");
     is(ref($invoice), "Net::Fastly::Invoice", "Got invoice");
     ok($invoice->regions, "Got invoice regions");
     
     is($invoice->service_id, $service->id, "Invoice has correct service id");
     is($@, '', "Didn't raise an error");
     
     $invoice = $fastly->get_invoice;
     is(ref($invoice), "Net::Fastly::Invoice", "Got an invoice object");
     
     
     my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
     $year += 1900;
     $mon   = 12 if $mon == 0;
     $invoice = $fastly->get_invoice($year, $mon);
     is(ref($invoice), "Net::Fastly::Invoice", "Got an invoice object");
     # is($invoice->start->year,  $year,  "Got the correct service start year");
     # is($invoice->start->month, $mon,   "Got the correct service start month");
     # is($invoice->start->day,   1,      "Got the correct service start day");
     # is($invoice->end->year,    $year,  "Got the correct service end year");
     # is($invoice->end->month,   $mon, " Got the correct service end month");
     # use DateTime;
     # my $last_day = DateTime->last_day_of_month( year => $year, month => $mon);
     # is($invoices[0]->end->day,   $last_day->day, "Got the correct service end day");
}

1;