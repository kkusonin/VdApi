use utf8;
package Vicidial::Schema::Result::PhonesAlias;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::PhonesAlias

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

=head1 TABLE: C<phones_alias>

=cut

__PACKAGE__->table("phones_alias");

=head1 ACCESSORS

=head2 alias_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 alias_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 logins_list

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "alias_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "alias_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "logins_list",
  { data_type => "varchar", is_nullable => 1, size => 255 },
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

=item * L</alias_id>

=back

=cut

__PACKAGE__->set_primary_key("alias_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kr1x1aRnoduz0cN0zHTlAQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
