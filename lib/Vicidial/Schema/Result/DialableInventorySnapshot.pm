use utf8;
package Vicidial::Schema::Result::DialableInventorySnapshot;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::DialableInventorySnapshot

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

=head1 TABLE: C<dialable_inventory_snapshots>

=cut

__PACKAGE__->table("dialable_inventory_snapshots");

=head1 ACCESSORS

=head2 snapshot_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 snapshot_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 list_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 list_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 list_lastcalldate

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 list_start_inv

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dialable_count

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dialable_count_nofilter

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dialable_count_oneoff

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dialable_count_inactive

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 average_call_count

  data_type: 'decimal'
  is_nullable: 1
  size: [3,1]

=head2 penetration

  data_type: 'decimal'
  is_nullable: 1
  size: [5,2]

=head2 shift_data

  data_type: 'text'
  is_nullable: 1

=head2 time_setting

  data_type: 'enum'
  extra: {list => ["LOCAL","SERVER"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "snapshot_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "snapshot_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "list_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "list_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "list_lastcalldate",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "list_start_inv",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "dialable_count",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "dialable_count_nofilter",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "dialable_count_oneoff",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "dialable_count_inactive",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "average_call_count",
  { data_type => "decimal", is_nullable => 1, size => [3, 1] },
  "penetration",
  { data_type => "decimal", is_nullable => 1, size => [5, 2] },
  "shift_data",
  { data_type => "text", is_nullable => 1 },
  "time_setting",
  {
    data_type => "enum",
    extra => { list => ["LOCAL", "SERVER"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</snapshot_id>

=back

=cut

__PACKAGE__->set_primary_key("snapshot_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<snapshot_date_list_key>

=over 4

=item * L</snapshot_time>

=item * L</list_id>

=item * L</time_setting>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "snapshot_date_list_key",
  ["snapshot_time", "list_id", "time_setting"],
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CiKOEXUWr6CqIMM+OxbHMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
