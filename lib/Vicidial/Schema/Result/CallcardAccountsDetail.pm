use utf8;
package Vicidial::Schema::Result::CallcardAccountsDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::CallcardAccountsDetail

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

=head1 TABLE: C<callcard_accounts_details>

=cut

__PACKAGE__->table("callcard_accounts_details");

=head1 ACCESSORS

=head2 card_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 run

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 4

=head2 batch

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 5

=head2 pack

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 5

=head2 sequence

  accessor: 'column_sequence'
  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 5

=head2 status

  data_type: 'enum'
  default_value: 'GENERATE'
  extra: {list => ["GENERATE","PRINT","SHIP","HOLD","ACTIVE","USED","EMPTY","CANCEL","VOID"]}
  is_nullable: 1

=head2 balance_minutes

  data_type: 'smallint'
  default_value: 3
  is_nullable: 1

=head2 initial_value

  data_type: 'varchar'
  default_value: 0.00
  is_nullable: 1
  size: 6

=head2 initial_minutes

  data_type: 'smallint'
  default_value: 3
  is_nullable: 1

=head2 note_purchase_order

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 note_printer

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 note_did

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 18

=head2 inbound_group_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 note_language

  data_type: 'varchar'
  default_value: 'English'
  is_nullable: 1
  size: 10

=head2 note_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 note_comments

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 create_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 activate_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 used_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 void_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 create_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 activate_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 used_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 void_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "card_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "run",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 4 },
  "batch",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 5 },
  "pack",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 5 },
  "sequence",
  {
    accessor => "column_sequence",
    data_type => "varchar",
    default_value => "",
    is_nullable => 1,
    size => 5,
  },
  "status",
  {
    data_type => "enum",
    default_value => "GENERATE",
    extra => {
      list => [
        "GENERATE",
        "PRINT",
        "SHIP",
        "HOLD",
        "ACTIVE",
        "USED",
        "EMPTY",
        "CANCEL",
        "VOID",
      ],
    },
    is_nullable => 1,
  },
  "balance_minutes",
  { data_type => "smallint", default_value => 3, is_nullable => 1 },
  "initial_value",
  {
    data_type => "varchar",
    default_value => "0.00",
    is_nullable => 1,
    size => 6,
  },
  "initial_minutes",
  { data_type => "smallint", default_value => 3, is_nullable => 1 },
  "note_purchase_order",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "note_printer",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "note_did",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 18 },
  "inbound_group_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "note_language",
  {
    data_type => "varchar",
    default_value => "English",
    is_nullable => 1,
    size => 10,
  },
  "note_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "note_comments",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "create_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "activate_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "used_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "void_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "create_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "activate_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "used_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "void_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</card_id>

=back

=cut

__PACKAGE__->set_primary_key("card_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MmQa7q/he1Z/ARdgtKseGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
