package Fastly::Origin;

use strict;
use base qw(Fastly::BelongsToServiceAndVersion);

Fastly::Origin->mk_accessors(qw(service version name owner_id created_at updated_at));

1;