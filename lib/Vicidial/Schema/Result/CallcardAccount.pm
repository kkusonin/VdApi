use utf8;
package Vicidial::Schema::Result::CallcardAccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::CallcardAccount

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

=head1 TABLE: C<callcard_accounts>

=cut

__PACKAGE__->table("callcard_accounts");

=head1 ACCESSORS

=head2 card_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 status

  data_type: 'enum'
  default_value: 'GENERATE'
  extra: {list => ["GENERATE","PRINT","SHIP","HOLD","ACTIVE","USED","EMPTY","CANCEL","VOID"]}
  is_nullable: 1

=head2 balance_minutes

  data_type: 'smallint'
  default_value: 3
  is_nullable: 1

=head2 inbound_group_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "card_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "pin",
  { data_type => "varchar", is_nullable => 0, size => 10 },
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
  "inbound_group_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</card_id>

=back

=cut

__PACKAGE__->set_primary_key("card_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FLltTU7QFduNP6Ymf6br4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
