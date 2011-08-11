package Fastly::VCL;

use strict;
use base qw(Fastly::BelongsToServiceAndVersion);

Fastly::VCL->mk_accessors(qw(service version name content created_at updated_at deleted_at));

1;