use strict;
use Module::Build;

my $build = Module::Build
  ->new( module_name  => "Net::Fastly",
         configure_requires => { 'Module::Build' => 0.38 },
         license      => 'perl',
         requires     => {
                          'Class::Accessor::Fast'        => 0,
                          'File::Basename'               => 0,
                          'File::Spec'                   => 0,
                          'File::Temp'                   => 0,
                          'IO::Socket::SSL'              => '!=1.38', # this version required by LWP::UserAgent 1.38, causes problems[*]
                          'JSON::XS'                     => 0,
                          'LWP::UserAgent'               => 5.813,
                          'LWP::Protocol::https'         => 0,
                          'Test::More'                   => 0,
                          'URI'                          => 0,
                          'URI::Escape'                  => 0,
                          'YAML'                         => 0,
                        },
         recommends =>  {
                          'Term::ShellUI'                => 0,
                          'Term::ANSIColor'              => 0,
                        },
         create_makefile_pl => 'small',
         meta_merge => {
             resources => {
                 repository => 'https://github.com/fastly/fastly-perl',
             }
         },
       );

$build->create_build_script;

# [*] http://stackoverflow.com/questions/9054883/lwp-read-fail-error/

