use strict;
use Module::Build;

my $build = Module::Build
  ->new( module_name  => "Fastly",
         script_files => [ ],
         requires     => {
                          'Class::Accessor::Fast'        => 0,
                          'JSON::Any'                    => 0,
                          'JSON::XS'                     => 0,
                          'LWP::UserAgent'               => 6.02,
                        },
         create_makefile_pl => 'traditional',
       );

$build->create_build_script;

