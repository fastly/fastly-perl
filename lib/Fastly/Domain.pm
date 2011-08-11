package Fastly::Domain;

use strict;
use base qw(Fastly::BelongsToServiceAndVersion);

Fastly::Domain->mk_accessors(qw(service version name created_at updated_at id owner_id));

1;