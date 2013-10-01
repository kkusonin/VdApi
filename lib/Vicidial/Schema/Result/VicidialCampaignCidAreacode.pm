use utf8;
package Vicidial::Schema::Result::VicidialCampaignCidAreacode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignCidAreacode

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

=head1 TABLE: C<vicidial_campaign_cid_areacodes>

=cut

__PACKAGE__->table("vicidial_campaign_cid_areacodes");

=head1 ACCESSORS

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 areacode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 outbound_cid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 active

  data_type: 'enum'
  default_value: (empty string)
  extra: {list => ["Y","N",""]}
  is_nullable: 1

=head2 cid_description

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 call_count_today

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "areacode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "outbound_cid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "active",
  {
    data_type => "enum",
    default_value => "",
    extra => { list => ["Y", "N", ""] },
    is_nullable => 1,
  },
  "cid_description",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "call_count_today",
  { data_type => "mediumint", default_value => 0, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<campareacode>

=over 4

=item * L</campaign_id>

=item * L</areacode>

=item * L</outbound_cid>

=back

=cut

__PACKAGE__->add_unique_constraint("campareacode", ["campaign_id", "areacode", "outbound_cid"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6TlVyqndyZyHZikQP+T5WQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
