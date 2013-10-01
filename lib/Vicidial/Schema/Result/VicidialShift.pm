use utf8;
package Vicidial::Schema::Result::VicidialShift;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialShift

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

=head1 TABLE: C<vicidial_shifts>

=cut

__PACKAGE__->table("vicidial_shifts");

=head1 ACCESSORS

=head2 shift_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 shift_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 shift_start_time

  data_type: 'varchar'
  default_value: 0900
  is_nullable: 1
  size: 4

=head2 shift_length

  data_type: 'varchar'
  default_value: '16:00'
  is_nullable: 1
  size: 5

=head2 shift_weekdays

  data_type: 'varchar'
  default_value: 0123456
  is_nullable: 1
  size: 7

=head2 report_option

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=head2 report_rank

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "shift_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "shift_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "shift_start_time",
  {
    data_type => "varchar",
    default_value => "0900",
    is_nullable => 1,
    size => 4,
  },
  "shift_length",
  {
    data_type => "varchar",
    default_value => "16:00",
    is_nullable => 1,
    size => 5,
  },
  "shift_weekdays",
  {
    data_type => "varchar",
    default_value => "0123456",
    is_nullable => 1,
    size => 7,
  },
  "report_option",
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
  "report_rank",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BhdzHLyH72SxY01rQ8+nJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
