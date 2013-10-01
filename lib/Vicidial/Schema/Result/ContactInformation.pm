use utf8;
package Vicidial::Schema::Result::ContactInformation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::ContactInformation

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

=head1 TABLE: C<contact_information>

=cut

__PACKAGE__->table("contact_information");

=head1 ACCESSORS

=head2 contact_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 first_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 last_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 office_num

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 cell_num

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 other_num1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 other_num2

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 bu_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 department

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 group_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 job_title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 location

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "contact_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "first_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "last_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "office_num",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "cell_num",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "other_num1",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "other_num2",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "bu_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "department",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "group_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "job_title",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "location",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contact_id>

=back

=cut

__PACKAGE__->set_primary_key("contact_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vwM5DXVsBEMhEjwNYFv0fA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
