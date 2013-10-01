use utf8;
package Vicidial::Schema::Result::VicidialXferPreset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialXferPreset

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

=head1 TABLE: C<vicidial_xfer_presets>

=cut

__PACKAGE__->table("vicidial_xfer_presets");

=head1 ACCESSORS

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 preset_name

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 preset_number

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 preset_dtmf

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 preset_hide_number

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "preset_name",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "preset_number",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "preset_dtmf",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "preset_hide_number",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gm4tnGvTTHtCKlCugqdBIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
