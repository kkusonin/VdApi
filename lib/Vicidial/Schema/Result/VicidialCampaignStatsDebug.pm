use utf8;
package Vicidial::Schema::Result::VicidialCampaignStatsDebug;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignStatsDebug

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

=head1 TABLE: C<vicidial_campaign_stats_debug>

=cut

__PACKAGE__->table("vicidial_campaign_stats_debug");

=head1 ACCESSORS

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 entry_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 debug_output

  data_type: 'text'
  is_nullable: 1

=head2 adapt_output

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "entry_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "debug_output",
  { data_type => "text", is_nullable => 1 },
  "adapt_output",
  { data_type => "text", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<campserver>

=over 4

=item * L</campaign_id>

=item * L</server_ip>

=back

=cut

__PACKAGE__->add_unique_constraint("campserver", ["campaign_id", "server_ip"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BQyxqA2sGst+hyshrMfNww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
