use utf8;
package Vicidial::Schema::Result::VicidialCampaignStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignStat

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

=head1 TABLE: C<vicidial_campaign_stats>

=cut

__PACKAGE__->table("vicidial_campaign_stats");

=head1 ACCESSORS

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 dialable_leads

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 calls_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_today_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 drops_answers_today_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 calls_hour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_hour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_hour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_hour_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 calls_halfhour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_halfhour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_halfhour

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_halfhour_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 calls_fivemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_fivemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_fivemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_fivemin_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 calls_onemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_onemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_onemin

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_onemin_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 differential_onemin

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 20

=head2 agents_average_onemin

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 20

=head2 balance_trunk_fill

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 status_category_1

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status_category_count_1

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 status_category_2

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status_category_count_2

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 status_category_3

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status_category_count_3

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 status_category_4

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status_category_count_4

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_sec_stat_one

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_sec_stat_two

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_non_pause_sec

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_sec_answer_calls

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_sec_drop_calls

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_sec_queue_calls

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_calls_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_wait_today

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_custtalk_today

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_acw_today

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_pause_today

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "dialable_leads",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "calls_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_today_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "drops_answers_today_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "calls_hour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_hour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_hour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_hour_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "calls_halfhour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_halfhour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_halfhour",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_halfhour_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "calls_fivemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_fivemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_fivemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_fivemin_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "calls_onemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_onemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_onemin",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_onemin_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "differential_onemin",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 20 },
  "agents_average_onemin",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 20 },
  "balance_trunk_fill",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "status_category_1",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status_category_count_1",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "status_category_2",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status_category_count_2",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "status_category_3",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status_category_count_3",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "status_category_4",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status_category_count_4",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_sec_stat_one",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_sec_stat_two",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_non_pause_sec",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_sec_answer_calls",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_sec_drop_calls",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_sec_queue_calls",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_calls_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_wait_today",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_custtalk_today",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_acw_today",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_pause_today",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</campaign_id>

=back

=cut

__PACKAGE__->set_primary_key("campaign_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ws0Uqp3IKPMGAhPyflr+oQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
