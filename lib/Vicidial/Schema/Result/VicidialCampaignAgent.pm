use utf8;
package Vicidial::Schema::Result::VicidialCampaignAgent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignAgent

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

=head1 TABLE: C<vicidial_campaign_agents>

=cut

__PACKAGE__->table("vicidial_campaign_agents");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 campaign_rank

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 campaign_weight

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 calls_today

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 group_web_vars

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 campaign_grade

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "campaign_rank",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "campaign_weight",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "calls_today",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "group_web_vars",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "campaign_grade",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r1ssjlYZZSzFj3oiJpJIiQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
