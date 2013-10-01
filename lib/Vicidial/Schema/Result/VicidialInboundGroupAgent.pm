use utf8;
package Vicidial::Schema::Result::VicidialInboundGroupAgent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialInboundGroupAgent

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

=head1 TABLE: C<vicidial_inbound_group_agents>

=cut

__PACKAGE__->table("vicidial_inbound_group_agents");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 group_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 group_rank

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 group_weight

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 calls_today

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 group_web_vars

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 group_grade

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "group_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "group_rank",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "group_weight",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "calls_today",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "group_web_vars",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "group_grade",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<viga_user_group_id>

=over 4

=item * L</user>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("viga_user_group_id", ["user", "group_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rY4X7O9995wa5g8p9Oq8aA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
