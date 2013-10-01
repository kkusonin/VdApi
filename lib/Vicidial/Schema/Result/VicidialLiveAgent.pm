use utf8;
package Vicidial::Schema::Result::VicidialLiveAgent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLiveAgent

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

=head1 TABLE: C<vicidial_live_agents>

=cut

__PACKAGE__->table("vicidial_live_agents");

=head1 ACCESSORS

=head2 live_agent_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 conf_exten

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 status

  data_type: 'enum'
  default_value: 'PAUSED'
  extra: {list => ["READY","QUEUE","INCALL","PAUSED","CLOSER"]}
  is_nullable: 1

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 callerid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 random_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 last_call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 last_call_finish

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 closer_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 call_server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 user_level

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 campaign_weight

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 calls_today

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 external_hangup

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 1

=head2 external_status

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 external_pause

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 external_dial

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 external_ingroups

  data_type: 'text'
  is_nullable: 1

=head2 external_blended

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 external_igb_set_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 external_update_fields

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 external_update_fields_data

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 external_timer_action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 external_timer_action_message

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 external_timer_action_seconds

  data_type: 'mediumint'
  default_value: -1
  is_nullable: 1

=head2 agent_log_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 last_state_change

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 agent_territories

  data_type: 'text'
  is_nullable: 1

=head2 outbound_autodial

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 manager_ingroup_set

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","SET"]}
  is_nullable: 1

=head2 ra_user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 ra_extension

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 external_dtmf

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 external_transferconf

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 external_park

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 external_timer_action_destination

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 on_hook_agent

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 on_hook_ring_time

  data_type: 'smallint'
  default_value: 15
  is_nullable: 1

=head2 ring_callerid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 last_inbound_call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_inbound_call_finish

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 campaign_grade

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=head2 external_recording

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "live_agent_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "conf_exten",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "status",
  {
    data_type => "enum",
    default_value => "PAUSED",
    extra => { list => ["READY", "QUEUE", "INCALL", "PAUSED", "CLOSER"] },
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "callerid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "random_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "last_call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "last_call_finish",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "closer_campaigns",
  { data_type => "text", is_nullable => 1 },
  "call_server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "user_level",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "campaign_weight",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "calls_today",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "external_hangup",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 1 },
  "external_status",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "external_pause",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "external_dial",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "external_ingroups",
  { data_type => "text", is_nullable => 1 },
  "external_blended",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "external_igb_set_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "external_update_fields",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "external_update_fields_data",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "external_timer_action",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "external_timer_action_message",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "external_timer_action_seconds",
  { data_type => "mediumint", default_value => -1, is_nullable => 1 },
  "agent_log_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "last_state_change",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "agent_territories",
  { data_type => "text", is_nullable => 1 },
  "outbound_autodial",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "manager_ingroup_set",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "SET"] },
    is_nullable => 1,
  },
  "ra_user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "ra_extension",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "external_dtmf",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "external_transferconf",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "external_park",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "external_timer_action_destination",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "on_hook_agent",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "on_hook_ring_time",
  { data_type => "smallint", default_value => 15, is_nullable => 1 },
  "ring_callerid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "last_inbound_call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_inbound_call_finish",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "campaign_grade",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "external_recording",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</live_agent_id>

=back

=cut

__PACKAGE__->set_primary_key("live_agent_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nu6Jv56NGIGEtYlJNJ+rsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
