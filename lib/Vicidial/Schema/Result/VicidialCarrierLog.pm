use utf8;
package Vicidial::Schema::Result::VicidialCarrierLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCarrierLog

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

=head1 TABLE: C<vicidial_carrier_log>

=cut

__PACKAGE__->table("vicidial_carrier_log");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hangup_cause

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dialstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 dial_time

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answered_time

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "hangup_cause",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "dialstatus",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "dial_time",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answered_time",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</uniqueid>

=back

=cut

__PACKAGE__->set_primary_key("uniqueid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q4MvtGjVe3L0QZX9CHm2sg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
