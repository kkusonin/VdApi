use utf8;
package Vicidial::Schema::Result::ServerPerformance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::ServerPerformance

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<server_performance>

=cut

__PACKAGE__->table("server_performance");

=head1 ACCESSORS

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 sysload

  data_type: 'integer'
  is_nullable: 0

=head2 freeram

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 usedram

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 processes

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 channels_total

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 trunks_total

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 clients_total

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 clients_zap

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 clients_iax

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 clients_local

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 clients_sip

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 live_recordings

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cpu_user_percent

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cpu_system_percent

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cpu_idle_percent

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "sysload",
  { data_type => "integer", is_nullable => 0 },
  "freeram",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "usedram",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "processes",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "channels_total",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "trunks_total",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "clients_total",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "clients_zap",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "clients_iax",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "clients_local",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "clients_sip",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "live_recordings",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "cpu_user_percent",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cpu_system_percent",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cpu_idle_percent",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k/2EoR6CJNI2eYl3S49o0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
