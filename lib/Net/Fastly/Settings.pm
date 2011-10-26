package Net::Fastly::Settings;

use strict;
use base qw(Net::Fastly::Model);

Net::Fastly::Settings->mk_accessors(qw(service_id version settings));

=head1 NAME

Net::Fastly::Invoice - - a representation of a Fastly monthly invoice

=head1 ACCESSORS

=head2 service_id

The id of the service these settings are for

=head2 version

The version number these settings for

=head2 settings

A hash ref of all the individual settings

=cut

sub _get_path {
    my $class   = shift;
    my $service = shift;
    my $number  = shift;
    return "/service/$service/version/$number/settings";
}

sub _put_path {
    my $class = shift;
    my $obj   = shift;
    return $class->_get_path($obj->service_id, $obj->version);
}

sub _as_hash {
    my $self     = shift;
    my $settings = $self->settings;
    return %$settings;
}

sub _list_path   { die "You can't list settings" }
sub _post_path   { die "You can't POST to settings"   }
sub _delete_path { die "You can't DELETE to settings" }

=head2 delete

Delete this object. Equivalent to

   $fastly->delete_<class>($object);

=cut
sub delete       { die "You can't delete an invoice" }

package Net::Fastly;

sub get_settings {
    my $self  = shift;
    my $class = "Net::Fastly::Settings"; 
    $self->_get($class, @_);
}

sub update_settings {
    my $self  = shift;
    my $class = "Net::Fastly::Settings"; 
    $self->_update($class, @_);
}
1;