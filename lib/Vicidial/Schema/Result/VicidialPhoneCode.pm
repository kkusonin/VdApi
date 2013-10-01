use utf8;
package Vicidial::Schema::Result::VicidialPhoneCode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialPhoneCode

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

=head1 TABLE: C<vicidial_phone_codes>

=cut

__PACKAGE__->table("vicidial_phone_codes");

=head1 ACCESSORS

=head2 country_code

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 country

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 areacode

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 gmt_offset

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 6

=head2 dst

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 dst_range

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 geographic_description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 tz_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "country_code",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "country",
  { data_type => "char", is_nullable => 1, size => 3 },
  "areacode",
  { data_type => "char", is_nullable => 1, size => 3 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "gmt_offset",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 6 },
  "dst",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "dst_range",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "geographic_description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "tz_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hCsV93pdPRu+FT9q3ciYgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
