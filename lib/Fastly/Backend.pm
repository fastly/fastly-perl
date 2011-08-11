package Fastly::Backend;

use strict;
use base qw(Fastly::BelongsToServiceAndVersion);

Fastly::Backend->mk_accessors(qw(service version name healthcheck address ipv4 ipv6 hostname user_ssl client_cert port
                                 connect_timeout first_byte_timeout between_bytes_timeout error_threshold max_conn weight
                                 created_at updated_at deleted_at));             

1;