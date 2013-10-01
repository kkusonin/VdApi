use utf8;
package Vicidial::Schema::Result::VicidialStateCallTime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialStateCallTime

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

=head1 TABLE: C<vicidial_state_call_times>

=cut

__PACKAGE__->table("vicidial_state_call_times");

=head1 ACCESSORS

=head2 state_call_time_id

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 state_call_time_state

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 state_call_time_name

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 state_call_time_comments

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 sct_default_start

  data_type: 'smallint'
  default_value: 900
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sct_default_stop

  data_type: 'smallint'
  default_value: 2100
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sct_sunday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_sunday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_monday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_monday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_tuesday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_tuesday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_wednesday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_wednesday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_thursday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_thursday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_friday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_friday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_saturday_start

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sct_saturday_stop

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "state_call_time_id",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "state_call_time_state",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "state_call_time_name",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "state_call_time_comments",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "sct_default_start",
  {
    data_type => "smallint",
    default_value => 900,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sct_default_stop",
  {
    data_type => "smallint",
    default_value => 2100,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sct_sunday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_sunday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_monday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_monday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_tuesday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_tuesday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_wednesday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_wednesday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_thursday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_thursday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_friday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_friday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_saturday_start",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sct_saturday_stop",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
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

=item * L</state_call_time_id>

=back

=cut

__PACKAGE__->set_primary_key("state_call_time_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ca8UwnWizEvNWCptB1v7Hw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
