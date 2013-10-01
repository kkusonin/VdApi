use utf8;
package Vicidial::Schema::Result::VicidialNanpaPrefixCode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialNanpaPrefixCode

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

=head1 TABLE: C<vicidial_nanpa_prefix_codes>

=cut

__PACKAGE__->table("vicidial_nanpa_prefix_codes");

=head1 ACCESSORS

=head2 areacode

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 prefix

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 gmt_offset

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dst

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 latitude

  data_type: 'varchar'
  is_nullable: 1
  size: 17

=head2 longitude

  data_type: 'varchar'
  is_nullable: 1
  size: 17

=head2 city

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 state

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2

=head2 postal_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 country

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "areacode",
  { data_type => "char", is_nullable => 1, size => 3 },
  "prefix",
  { data_type => "char", is_nullable => 1, size => 3 },
  "gmt_offset",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dst",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "latitude",
  { data_type => "varchar", is_nullable => 1, size => 17 },
  "longitude",
  { data_type => "varchar", is_nullable => 1, size => 17 },
  "city",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "state",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2 },
  "postal_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "country",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yJscnqPubmstecr/2xIxyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
