use utf8;
package Vicidial::Schema::Result::GroupsAlias;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::GroupsAlias

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

=head1 TABLE: C<groups_alias>

=cut

__PACKAGE__->table("groups_alias");

=head1 ACCESSORS

=head2 group_alias_id

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 group_alias_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 caller_id_number

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 caller_id_name

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 active

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "group_alias_id",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "group_alias_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "caller_id_number",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "caller_id_name",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "active",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
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

=item * L</group_alias_id>

=back

=cut

__PACKAGE__->set_primary_key("group_alias_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BgBvSFR9dUqj3IvQfZvoBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
