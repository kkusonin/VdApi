use utf8;
package Vicidial::Schema::Result::VicidialListsField;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialListsField

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

=head1 TABLE: C<vicidial_lists_fields>

=cut

__PACKAGE__->table("vicidial_lists_fields");

=head1 ACCESSORS

=head2 field_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 field_label

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 field_name

  data_type: 'varchar'
  is_nullable: 1
  size: 5000

=head2 field_description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 field_rank

  data_type: 'smallint'
  is_nullable: 1

=head2 field_help

  data_type: 'varchar'
  is_nullable: 1
  size: 1000

=head2 field_type

  data_type: 'enum'
  default_value: 'TEXT'
  extra: {list => ["TEXT","AREA","SELECT","MULTI","RADIO","CHECKBOX","DATE","TIME","DISPLAY","SCRIPT","HIDDEN","READONLY","HIDEBLOB"]}
  is_nullable: 1

=head2 field_options

  data_type: 'varchar'
  is_nullable: 1
  size: 5000

=head2 field_size

  data_type: 'smallint'
  is_nullable: 1

=head2 field_max

  data_type: 'smallint'
  is_nullable: 1

=head2 field_default

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 field_cost

  data_type: 'smallint'
  is_nullable: 1

=head2 field_required

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 name_position

  data_type: 'enum'
  default_value: 'LEFT'
  extra: {list => ["LEFT","TOP"]}
  is_nullable: 1

=head2 multi_position

  data_type: 'enum'
  default_value: 'HORIZONTAL'
  extra: {list => ["HORIZONTAL","VERTICAL"]}
  is_nullable: 1

=head2 field_order

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "field_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "list_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "field_label",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "field_name",
  { data_type => "varchar", is_nullable => 1, size => 5000 },
  "field_description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "field_rank",
  { data_type => "smallint", is_nullable => 1 },
  "field_help",
  { data_type => "varchar", is_nullable => 1, size => 1000 },
  "field_type",
  {
    data_type => "enum",
    default_value => "TEXT",
    extra => {
      list => [
        "TEXT",
        "AREA",
        "SELECT",
        "MULTI",
        "RADIO",
        "CHECKBOX",
        "DATE",
        "TIME",
        "DISPLAY",
        "SCRIPT",
        "HIDDEN",
        "READONLY",
        "HIDEBLOB",
      ],
    },
    is_nullable => 1,
  },
  "field_options",
  { data_type => "varchar", is_nullable => 1, size => 5000 },
  "field_size",
  { data_type => "smallint", is_nullable => 1 },
  "field_max",
  { data_type => "smallint", is_nullable => 1 },
  "field_default",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "field_cost",
  { data_type => "smallint", is_nullable => 1 },
  "field_required",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "name_position",
  {
    data_type => "enum",
    default_value => "LEFT",
    extra => { list => ["LEFT", "TOP"] },
    is_nullable => 1,
  },
  "multi_position",
  {
    data_type => "enum",
    default_value => "HORIZONTAL",
    extra => { list => ["HORIZONTAL", "VERTICAL"] },
    is_nullable => 1,
  },
  "field_order",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</field_id>

=back

=cut

__PACKAGE__->set_primary_key("field_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<listfield>

=over 4

=item * L</list_id>

=item * L</field_label>

=back

=cut

__PACKAGE__->add_unique_constraint("listfield", ["list_id", "field_label"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uIwK1CIDOy68ggyBmp0nMg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
