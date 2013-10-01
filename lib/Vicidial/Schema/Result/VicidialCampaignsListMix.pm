use utf8;
package Vicidial::Schema::Result::VicidialCampaignsListMix;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignsListMix

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

=head1 TABLE: C<vicidial_campaigns_list_mix>

=cut

__PACKAGE__->table("vicidial_campaigns_list_mix");

=head1 ACCESSORS

=head2 vcl_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 vcl_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 list_mix_container

  data_type: 'text'
  is_nullable: 1

=head2 mix_method

  data_type: 'enum'
  default_value: 'IN_ORDER'
  extra: {list => ["EVEN_MIX","IN_ORDER","RANDOM"]}
  is_nullable: 1

=head2 status

  data_type: 'enum'
  default_value: 'INACTIVE'
  extra: {list => ["ACTIVE","INACTIVE"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vcl_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "vcl_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "list_mix_container",
  { data_type => "text", is_nullable => 1 },
  "mix_method",
  {
    data_type => "enum",
    default_value => "IN_ORDER",
    extra => { list => ["EVEN_MIX", "IN_ORDER", "RANDOM"] },
    is_nullable => 1,
  },
  "status",
  {
    data_type => "enum",
    default_value => "INACTIVE",
    extra => { list => ["ACTIVE", "INACTIVE"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</vcl_id>

=back

=cut

__PACKAGE__->set_primary_key("vcl_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dc7H445mIC1bobzabS8TMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
