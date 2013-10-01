use strict;
use Module::Build;

my $build = Module::Build
  ->new( module_name  => "Net::Fastly",
         configure_requires => { 'Module::Build' => 0.38 },
         requires     => {
                          'Class::Accessor::Fast'        => 0,
                          'File::Basename'               => 0,
                          'File::Spec'                   => 0,
                          'File::Temp'                   => 0,
                          'IO::Socket::SSL'              => 1.54, # the actual required version, 1.38, causes problems
                          'JSON::XS'                     => 0,
                          'LWP::UserAgent'               => 6.02,
                          'LWP::Protocol::https'         => 0,
                          'Term::ANSIColor'              => 0,
                          'Term::ShellUI'                => 0,
                          'Test::More'                   => 0,
                          'URI'                          => 0,
                          'URI::Escape'                  => 0,
                          'YAML'                         => 0,
                        },
         create_makefile_pl => 'traditional',
       );

$build->create_build_script;

