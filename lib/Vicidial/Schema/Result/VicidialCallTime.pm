use utf8;
package Vicidial::Schema::Result::VicidialCallTime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCallTime

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

=head1 TABLE: C<vicidial_call_times>

=cut

__PACKAGE__->table("vicidial_call_times");

=head1 ACCESSORS

=head2 call_time_id

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 call_time_name

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 call_time_comments

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 ct_default_start

  data_type: 'smallint'
  default_value: 900
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ct_default_stop

  data_type: 'smallint'
  default_value: 2100
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ct_sunday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_sunday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_monday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_monday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_tuesday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_tuesday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_wednesday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_wednesday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_thursday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_thursday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_friday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_friday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_saturday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_saturday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ct_state_call_times

  data_type: 'text'
  is_nullable: 1

=head2 default_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 sunday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 monday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 tuesday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 wednesday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 thursday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 friday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 saturday_afterhours_filename_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "call_time_id",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "call_time_name",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "call_time_comments",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "ct_default_start",
  {
    data_type => "smallint",
    default_value => 900,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ct_default_stop",
  {
    data_type => "smallint",
    default_value => 2100,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ct_sunday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_sunday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_monday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_monday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_tuesday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_tuesday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_wednesday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_wednesday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_thursday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_thursday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_friday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_friday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_saturday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_saturday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ct_state_call_times",
  { data_type => "text", is_nullable => 1 },
  "default_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "sunday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "monday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "tuesday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "wednesday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "thursday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "friday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "saturday_afterhours_filename_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</call_time_id>

=back

=cut

__PACKAGE__->set_primary_key("call_time_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FD9y95REG/4ZN9DYin2TTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
