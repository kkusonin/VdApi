use utf8;
package Vicidial::Schema::Result::VtigerRankParameter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VtigerRankParameter

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

=head1 TABLE: C<vtiger_rank_parameters>

=cut

__PACKAGE__->table("vtiger_rank_parameters");

=head1 ACCESSORS

=head2 parameter_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 parameter

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 lower_range

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 upper_range

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 points

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "parameter_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "parameter",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "lower_range",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "upper_range",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "points",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</parameter_id>

=back

=cut

__PACKAGE__->set_primary_key("parameter_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gjAXKV5CnmMQDXCTkMELcQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
