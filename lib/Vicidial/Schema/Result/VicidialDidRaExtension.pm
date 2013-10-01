use utf8;
package Vicidial::Schema::Result::VicidialDidRaExtension;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialDidRaExtension

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

=head1 TABLE: C<vicidial_did_ra_extensions>

=cut

__PACKAGE__->table("vicidial_did_ra_extensions");

=head1 ACCESSORS

=head2 did_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user_start

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 extension

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 active

  data_type: 'enum'
  default_value: (empty string)
  extra: {list => ["Y","N",""]}
  is_nullable: 1

=head2 call_count_today

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "did_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user_start",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "extension",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "active",
  {
    data_type => "enum",
    default_value => "",
    extra => { list => ["Y", "N", ""] },
    is_nullable => 1,
  },
  "call_count_today",
  { data_type => "mediumint", default_value => 0, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<didraexten>

=over 4

=item * L</did_id>

=item * L</user_start>

=item * L</extension>

=back

=cut

__PACKAGE__->add_unique_constraint("didraexten", ["did_id", "user_start", "extension"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZCVtpfH8vphwbKavD0jEgA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
