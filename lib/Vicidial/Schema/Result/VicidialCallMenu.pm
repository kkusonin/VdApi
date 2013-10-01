use utf8;
package Vicidial::Schema::Result::VicidialCallMenu;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCallMenu

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

=head1 TABLE: C<vicidial_call_menu>

=cut

__PACKAGE__->table("vicidial_call_menu");

=head1 ACCESSORS

=head2 menu_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 menu_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 menu_prompt

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 menu_timeout

  data_type: 'smallint'
  default_value: 10
  extra: {unsigned => 1}
  is_nullable: 1

=head2 menu_timeout_prompt

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 255

=head2 menu_invalid_prompt

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 255

=head2 menu_repeat

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 menu_time_check

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 call_time_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 track_in_vdac

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 custom_dialplan_entry

  data_type: 'text'
  is_nullable: 1

=head2 tracking_group

  data_type: 'varchar'
  default_value: 'CALLMENU'
  is_nullable: 1
  size: 20

=head2 dtmf_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 dtmf_field

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 50

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=head2 qualify_sql

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "menu_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "menu_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "menu_prompt",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "menu_timeout",
  {
    data_type => "smallint",
    default_value => 10,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "menu_timeout_prompt",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 255,
  },
  "menu_invalid_prompt",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 255,
  },
  "menu_repeat",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "menu_time_check",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "call_time_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "track_in_vdac",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "custom_dialplan_entry",
  { data_type => "text", is_nullable => 1 },
  "tracking_group",
  {
    data_type => "varchar",
    default_value => "CALLMENU",
    is_nullable => 1,
    size => 20,
  },
  "dtmf_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "dtmf_field",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 50,
  },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
  "qualify_sql",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</menu_id>

=back

=cut

__PACKAGE__->set_primary_key("menu_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qhzbQyjgpYf7dwqCDv7G7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
