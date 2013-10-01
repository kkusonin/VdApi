use utf8;
package Vicidial::Schema::Result::VicidialStatusCategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialStatusCategory

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

=head1 TABLE: C<vicidial_status_categories>

=cut

__PACKAGE__->table("vicidial_status_categories");

=head1 ACCESSORS

=head2 vsc_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 vsc_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 vsc_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tovdad_display

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 sale_category

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 dead_lead_category

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vsc_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "vsc_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "vsc_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tovdad_display",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "sale_category",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "dead_lead_category",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</vsc_id>

=back

=cut

__PACKAGE__->set_primary_key("vsc_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x7qXb0qYDhm2ZiKKHHTTfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
