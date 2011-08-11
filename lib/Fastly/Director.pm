package Fastly::Director;

use strict;
use base qw(Fastly::BelongsToServiceAndVersion);

Fastly::Director->mk_accessors(qw(service version name type retries location capacity quorum created_at updated_at deleted_at));

1;