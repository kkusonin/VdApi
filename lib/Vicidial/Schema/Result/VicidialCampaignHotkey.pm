use utf8;
package Vicidial::Schema::Result::VicidialCampaignHotkey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignHotkey

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

=head1 TABLE: C<vicidial_campaign_hotkeys>

=cut

__PACKAGE__->table("vicidial_campaign_hotkeys");

=head1 ACCESSORS

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 hotkey

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 status_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 selectable

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "status",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "hotkey",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "status_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "selectable",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vaE7OpcELptCnfpI1RH8Ug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
