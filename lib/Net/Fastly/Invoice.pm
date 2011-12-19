package Net::Fastly::Invoice;

use strict;
use base qw(Net::Fastly::Model);

Net::Fastly::Invoice->mk_accessors(qw(service_id service_name start_time end_time total regions));

=head1 NAME

Net::Fastly::Invoice - - a representation of a Fastly monthly invoice

=head1 ACCESSORS

=head2 service_id

The id of the service this invoice is for

=head2 service_name

The id of the service this invoice is for

=head2 start_time

The earliest date and time this invoice covers

=head2 end_time

The latest date and time this invoice covers

=head2 total

The total for this invoice in US dollars

=head2 regions

A hash reference with all the different regions and their subtotals

=cut

# Not included because trying not to have DateTime as a dependency
# use DateTime::Format::ISO8601;
# =head2 start
# 
# The I<start_time> as a DateTime object
# 
# =cut
# sub start {
#     my $self = shift;
#     DateTime::Format::ISO8601->parse_datetime($self->start_time)->set_time_zone('UTC');
# }
# 
# =head2 end 
# 
# The I<end_time> as a DateTime object
# 
# =cut
# sub end {
#     my $self = shift;
#     DateTime::Format::ISO8601->parse_datetime($self->end_time)->set_time_zone('UTC');    
# }


sub _get_path {
    my $class = shift;
    my %opts  = @_;
    
    my $url  = "/billing";
    if ($opts{service_id}) {
        $url .= "/service/".$opts{service_id};
    }
    if ($opts{year} && $opts{month}) {
        $url .= "/year/".$opts{year}."/month/".$opts{month};
    }
    return $url;
}

sub _list_path   { shift->_get_path(@_) }
sub _post_path   { die "You can't POST to an invoice"   }
sub _put_path    { die "You can't PUT to an invoice"    }
sub _delete_path { die "You can't DELETE to an invoice" }


=head2 save

Save this object. Equivalent to

   $fastly->update_<class>($object);

=cut
sub save   { die "You can't save an invoice" }

=head2 delete

Delete this object. Equivalent to

   $fastly->delete_<class>($object);

=cut
sub delete { die "You can't delete an invoice" }

package Net::Fastly;

sub list_invoices {
    my $self  = shift;
    my $year  = shift;
    my $month = shift;
    my %opts  = ();
    if ($year && $month) {
        $opts{year}  = $year;
        $opts{month} = $month;
    }
    my $list     = $self->client->_get(Net::Fastly::Invoice->_list_path(%opts));
    return () unless $list;
    return map { Net::Fastly::Invoice->new($self, %$_) } @$list;
}

1;