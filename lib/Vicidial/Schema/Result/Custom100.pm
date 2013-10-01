use utf8;
package Vicidial::Schema::Result::Custom100;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::Custom100

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

=head1 TABLE: C<custom_100>

=cut

__PACKAGE__->table("custom_100");

=head1 ACCESSORS

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 operator

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 client

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 family

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 age

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 district

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 street

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 house

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 housing

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 flat

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 staircase

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2

=head2 intercom

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 floor

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2

=head2 phone_h

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 phone_m

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 meeting_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 meeting_time

  data_type: 'time'
  is_nullable: 1

=head2 recommended_by

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 manager

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 water

  data_type: 'enum'
  extra: {list => [1,2,3,0]}
  is_nullable: 1

=head2 employed

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "operator",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "client",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "family",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "age",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "district",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "street",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "house",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "housing",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "flat",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "staircase",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2 },
  "intercom",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "floor",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2 },
  "phone_h",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "phone_m",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "meeting_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "meeting_time",
  { data_type => "time", is_nullable => 1 },
  "recommended_by",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "manager",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "water",
  {
    data_type => "enum",
    extra => { list => [1, 2, 3, 0] },
    is_nullable => 1,
  },
  "employed",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</lead_id>

=back

=cut

__PACKAGE__->set_primary_key("lead_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:llVao1MwwGT1JesWUynoKw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
