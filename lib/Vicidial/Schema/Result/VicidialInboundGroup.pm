use utf8;
package Vicidial::Schema::Result::VicidialInboundGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialInboundGroup

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

=head1 TABLE: C<vicidial_inbound_groups>

=cut

__PACKAGE__->table("vicidial_inbound_groups");

=head1 ACCESSORS

=head2 group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 group_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 group_color

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 web_form_address

  data_type: 'text'
  is_nullable: 1

=head2 voicemail_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 next_agent_call

  data_type: 'varchar'
  default_value: 'longest_wait_time'
  is_nullable: 1
  size: 30

=head2 fronter_display

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 ingroup_script

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 get_call_launch

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","SCRIPT","WEBFORM","WEBFORMTWO","FORM"]}
  is_nullable: 1

=head2 xferconf_a_dtmf

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 xferconf_a_number

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 xferconf_b_dtmf

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 xferconf_b_number

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 drop_call_seconds

  data_type: 'smallint'
  default_value: 360
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drop_action

  data_type: 'enum'
  default_value: 'MESSAGE'
  extra: {list => ["HANGUP","MESSAGE","VOICEMAIL","IN_GROUP","CALLMENU"]}
  is_nullable: 1

=head2 drop_exten

  data_type: 'varchar'
  default_value: 8307
  is_nullable: 1
  size: 20

=head2 call_time_id

  data_type: 'varchar'
  default_value: '24hours'
  is_nullable: 1
  size: 20

=head2 after_hours_action

  data_type: 'enum'
  default_value: 'MESSAGE'
  extra: {list => ["HANGUP","MESSAGE","EXTENSION","VOICEMAIL","IN_GROUP","CALLMENU"]}
  is_nullable: 1

=head2 after_hours_message_filename

  data_type: 'varchar'
  default_value: 'vm-goodbye'
  is_nullable: 1
  size: 255

=head2 after_hours_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 after_hours_voicemail

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 welcome_message_filename

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 255

=head2 moh_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 50

=head2 onhold_prompt_filename

  data_type: 'varchar'
  default_value: 'generic_hold'
  is_nullable: 1
  size: 255

=head2 prompt_interval

  data_type: 'smallint'
  default_value: 60
  extra: {unsigned => 1}
  is_nullable: 1

=head2 agent_alert_exten

  data_type: 'varchar'
  default_value: 'ding'
  is_nullable: 1
  size: 100

=head2 agent_alert_delay

  data_type: 'integer'
  default_value: 1000
  is_nullable: 1

=head2 default_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 queue_priority

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 drop_inbound_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 ingroup_recording_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","NEVER","ONDEMAND","ALLCALLS","ALLFORCE"]}
  is_nullable: 1

=head2 ingroup_rec_filename

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 50

=head2 afterhours_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 qc_enabled

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 qc_statuses

  data_type: 'text'
  is_nullable: 1

=head2 qc_shift_id

  data_type: 'varchar'
  default_value: '24HRMIDNIGHT'
  is_nullable: 1
  size: 20

=head2 qc_get_record_launch

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","SCRIPT","WEBFORM","QCSCRIPT","QCWEBFORM"]}
  is_nullable: 1

=head2 qc_show_recording

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 qc_web_form_address

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 qc_script

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 play_place_in_line

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 play_estimate_hold_time

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 hold_time_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 hold_time_option_seconds

  data_type: 'smallint'
  default_value: 360
  is_nullable: 1

=head2 hold_time_option_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 hold_time_option_voicemail

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 hold_time_option_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 hold_time_option_callback_filename

  data_type: 'varchar'
  default_value: 'vm-hangup'
  is_nullable: 1
  size: 255

=head2 hold_time_option_callback_list_id

  data_type: 'bigint'
  default_value: 999
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hold_recall_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 no_delay_call_route

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 play_welcome_message

  data_type: 'enum'
  default_value: 'ALWAYS'
  extra: {list => ["ALWAYS","NEVER","IF_WAIT_ONLY","YES_UNLESS_NODELAY"]}
  is_nullable: 1

=head2 answer_sec_pct_rt_stat_one

  data_type: 'smallint'
  default_value: 20
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answer_sec_pct_rt_stat_two

  data_type: 'smallint'
  default_value: 30
  extra: {unsigned => 1}
  is_nullable: 1

=head2 default_group_alias

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 30

=head2 no_agent_no_queue

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y","NO_PAUSED"]}
  is_nullable: 1

=head2 no_agent_action

  data_type: 'enum'
  default_value: 'MESSAGE'
  extra: {list => ["CALLMENU","INGROUP","DID","MESSAGE","EXTENSION","VOICEMAIL"]}
  is_nullable: 1

=head2 no_agent_action_value

  data_type: 'varchar'
  default_value: 'nbdy-avail-to-take-call|vm-goodbye'
  is_nullable: 1
  size: 255

=head2 web_form_address_two

  data_type: 'text'
  is_nullable: 1

=head2 timer_action

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 20

=head2 timer_action_message

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 timer_action_seconds

  data_type: 'mediumint'
  default_value: -1
  is_nullable: 1

=head2 start_call_url

  data_type: 'text'
  is_nullable: 1

=head2 dispo_call_url

  data_type: 'text'
  is_nullable: 1

=head2 xferconf_c_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_d_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_e_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 ignore_list_script_override

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 extension_appended_cidname

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 uniqueid_status_display

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED","ENABLED_PREFIX","ENABLED_PRESERVE"]}
  is_nullable: 1

=head2 uniqueid_status_prefix

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 hold_time_option_minimum

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 hold_time_option_press_filename

  data_type: 'varchar'
  default_value: 'to-be-called-back|digits/1'
  is_nullable: 1
  size: 255

=head2 hold_time_option_callmenu

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 hold_time_option_no_block

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 hold_time_option_prompt_seconds

  data_type: 'smallint'
  default_value: 10
  is_nullable: 1

=head2 onhold_prompt_no_block

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 onhold_prompt_seconds

  data_type: 'smallint'
  default_value: 10
  is_nullable: 1

=head2 hold_time_second_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 hold_time_third_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 wait_hold_option_priority

  data_type: 'enum'
  default_value: 'WAIT'
  extra: {list => ["WAIT","HOLD","BOTH"]}
  is_nullable: 1

=head2 wait_time_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 wait_time_second_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 wait_time_third_option

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 30

=head2 wait_time_option_seconds

  data_type: 'smallint'
  default_value: 120
  is_nullable: 1

=head2 wait_time_option_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 wait_time_option_voicemail

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 wait_time_option_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 wait_time_option_callmenu

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 wait_time_option_callback_filename

  data_type: 'varchar'
  default_value: 'vm-hangup'
  is_nullable: 1
  size: 255

=head2 wait_time_option_callback_list_id

  data_type: 'bigint'
  default_value: 999
  extra: {unsigned => 1}
  is_nullable: 1

=head2 wait_time_option_press_filename

  data_type: 'varchar'
  default_value: 'to-be-called-back|digits/1'
  is_nullable: 1
  size: 255

=head2 wait_time_option_no_block

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 wait_time_option_prompt_seconds

  data_type: 'smallint'
  default_value: 10
  is_nullable: 1

=head2 timer_action_destination

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 30

=head2 calculate_estimated_hold_seconds

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 add_lead_url

  data_type: 'text'
  is_nullable: 1

=head2 eht_minimum_prompt_filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 eht_minimum_prompt_no_block

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 eht_minimum_prompt_seconds

  data_type: 'smallint'
  default_value: 10
  is_nullable: 1

=head2 on_hook_ring_time

  data_type: 'smallint'
  default_value: 15
  is_nullable: 1

=head2 na_call_url

  data_type: 'text'
  is_nullable: 1

=head2 on_hook_cid

  data_type: 'varchar'
  default_value: 'GENERIC'
  is_nullable: 1
  size: 30

=head2 group_calldate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 action_xfer_cid

  data_type: 'varchar'
  default_value: 'CUSTOMER'
  is_nullable: 1
  size: 18

=head2 drop_callmenu

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 after_hours_callmenu

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=head2 max_calls_method

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["TOTAL","IN_QUEUE","DISABLED"]}
  is_nullable: 1

=head2 max_calls_count

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 max_calls_action

  data_type: 'enum'
  default_value: 'NO_AGENT_NO_QUEUE'
  extra: {list => ["DROP","AFTERHOURS","NO_AGENT_NO_QUEUE"]}
  is_nullable: 1

=head2 dial_ingroup_cid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "group_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "group_color",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "web_form_address",
  { data_type => "text", is_nullable => 1 },
  "voicemail_ext",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "next_agent_call",
  {
    data_type => "varchar",
    default_value => "longest_wait_time",
    is_nullable => 1,
    size => 30,
  },
  "fronter_display",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "ingroup_script",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "get_call_launch",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "SCRIPT", "WEBFORM", "WEBFORMTWO", "FORM"] },
    is_nullable => 1,
  },
  "xferconf_a_dtmf",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "xferconf_a_number",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "xferconf_b_dtmf",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "xferconf_b_number",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "drop_call_seconds",
  {
    data_type => "smallint",
    default_value => 360,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drop_action",
  {
    data_type => "enum",
    default_value => "MESSAGE",
    extra => {
      list => ["HANGUP", "MESSAGE", "VOICEMAIL", "IN_GROUP", "CALLMENU"],
    },
    is_nullable => 1,
  },
  "drop_exten",
  { data_type => "varchar", default_value => 8307, is_nullable => 1, size => 20 },
  "call_time_id",
  {
    data_type => "varchar",
    default_value => "24hours",
    is_nullable => 1,
    size => 20,
  },
  "after_hours_action",
  {
    data_type => "enum",
    default_value => "MESSAGE",
    extra => {
      list => [
        "HANGUP",
        "MESSAGE",
        "EXTENSION",
        "VOICEMAIL",
        "IN_GROUP",
        "CALLMENU",
      ],
    },
    is_nullable => 1,
  },
  "after_hours_message_filename",
  {
    data_type => "varchar",
    default_value => "vm-goodbye",
    is_nullable => 1,
    size => 255,
  },
  "after_hours_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "after_hours_voicemail",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "welcome_message_filename",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 255,
  },
  "moh_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 50,
  },
  "onhold_prompt_filename",
  {
    data_type => "varchar",
    default_value => "generic_hold",
    is_nullable => 1,
    size => 255,
  },
  "prompt_interval",
  {
    data_type => "smallint",
    default_value => 60,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "agent_alert_exten",
  {
    data_type => "varchar",
    default_value => "ding",
    is_nullable => 1,
    size => 100,
  },
  "agent_alert_delay",
  { data_type => "integer", default_value => 1000, is_nullable => 1 },
  "default_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "queue_priority",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "drop_inbound_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "ingroup_recording_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => ["DISABLED", "NEVER", "ONDEMAND", "ALLCALLS", "ALLFORCE"],
    },
    is_nullable => 1,
  },
  "ingroup_rec_filename",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 50,
  },
  "afterhours_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "qc_enabled",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "qc_statuses",
  { data_type => "text", is_nullable => 1 },
  "qc_shift_id",
  {
    data_type => "varchar",
    default_value => "24HRMIDNIGHT",
    is_nullable => 1,
    size => 20,
  },
  "qc_get_record_launch",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "SCRIPT", "WEBFORM", "QCSCRIPT", "QCWEBFORM"] },
    is_nullable => 1,
  },
  "qc_show_recording",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "qc_web_form_address",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "qc_script",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "play_place_in_line",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "play_estimate_hold_time",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "hold_time_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "hold_time_option_seconds",
  { data_type => "smallint", default_value => 360, is_nullable => 1 },
  "hold_time_option_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "hold_time_option_voicemail",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "hold_time_option_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "hold_time_option_callback_filename",
  {
    data_type => "varchar",
    default_value => "vm-hangup",
    is_nullable => 1,
    size => 255,
  },
  "hold_time_option_callback_list_id",
  {
    data_type => "bigint",
    default_value => 999,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "hold_recall_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "no_delay_call_route",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "play_welcome_message",
  {
    data_type => "enum",
    default_value => "ALWAYS",
    extra => {
      list => ["ALWAYS", "NEVER", "IF_WAIT_ONLY", "YES_UNLESS_NODELAY"],
    },
    is_nullable => 1,
  },
  "answer_sec_pct_rt_stat_one",
  {
    data_type => "smallint",
    default_value => 20,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answer_sec_pct_rt_stat_two",
  {
    data_type => "smallint",
    default_value => 30,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "default_group_alias",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 30 },
  "no_agent_no_queue",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y", "NO_PAUSED"] },
    is_nullable => 1,
  },
  "no_agent_action",
  {
    data_type => "enum",
    default_value => "MESSAGE",
    extra => {
      list => ["CALLMENU", "INGROUP", "DID", "MESSAGE", "EXTENSION", "VOICEMAIL"],
    },
    is_nullable => 1,
  },
  "no_agent_action_value",
  {
    data_type => "varchar",
    default_value => "nbdy-avail-to-take-call|vm-goodbye",
    is_nullable => 1,
    size => 255,
  },
  "web_form_address_two",
  { data_type => "text", is_nullable => 1 },
  "timer_action",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 20,
  },
  "timer_action_message",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "timer_action_seconds",
  { data_type => "mediumint", default_value => -1, is_nullable => 1 },
  "start_call_url",
  { data_type => "text", is_nullable => 1 },
  "dispo_call_url",
  { data_type => "text", is_nullable => 1 },
  "xferconf_c_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_d_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_e_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "ignore_list_script_override",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "extension_appended_cidname",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "uniqueid_status_display",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => ["DISABLED", "ENABLED", "ENABLED_PREFIX", "ENABLED_PRESERVE"],
    },
    is_nullable => 1,
  },
  "uniqueid_status_prefix",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "hold_time_option_minimum",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "hold_time_option_press_filename",
  {
    data_type => "varchar",
    default_value => "to-be-called-back|digits/1",
    is_nullable => 1,
    size => 255,
  },
  "hold_time_option_callmenu",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "hold_time_option_no_block",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "hold_time_option_prompt_seconds",
  { data_type => "smallint", default_value => 10, is_nullable => 1 },
  "onhold_prompt_no_block",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "onhold_prompt_seconds",
  { data_type => "smallint", default_value => 10, is_nullable => 1 },
  "hold_time_second_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "hold_time_third_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "wait_hold_option_priority",
  {
    data_type => "enum",
    default_value => "WAIT",
    extra => { list => ["WAIT", "HOLD", "BOTH"] },
    is_nullable => 1,
  },
  "wait_time_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "wait_time_second_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "wait_time_third_option",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 30,
  },
  "wait_time_option_seconds",
  { data_type => "smallint", default_value => 120, is_nullable => 1 },
  "wait_time_option_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "wait_time_option_voicemail",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "wait_time_option_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "wait_time_option_callmenu",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "wait_time_option_callback_filename",
  {
    data_type => "varchar",
    default_value => "vm-hangup",
    is_nullable => 1,
    size => 255,
  },
  "wait_time_option_callback_list_id",
  {
    data_type => "bigint",
    default_value => 999,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "wait_time_option_press_filename",
  {
    data_type => "varchar",
    default_value => "to-be-called-back|digits/1",
    is_nullable => 1,
    size => 255,
  },
  "wait_time_option_no_block",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "wait_time_option_prompt_seconds",
  { data_type => "smallint", default_value => 10, is_nullable => 1 },
  "timer_action_destination",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 30 },
  "calculate_estimated_hold_seconds",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "add_lead_url",
  { data_type => "text", is_nullable => 1 },
  "eht_minimum_prompt_filename",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "eht_minimum_prompt_no_block",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "eht_minimum_prompt_seconds",
  { data_type => "smallint", default_value => 10, is_nullable => 1 },
  "on_hook_ring_time",
  { data_type => "smallint", default_value => 15, is_nullable => 1 },
  "na_call_url",
  { data_type => "text", is_nullable => 1 },
  "on_hook_cid",
  {
    data_type => "varchar",
    default_value => "GENERIC",
    is_nullable => 1,
    size => 30,
  },
  "group_calldate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "action_xfer_cid",
  {
    data_type => "varchar",
    default_value => "CUSTOMER",
    is_nullable => 1,
    size => 18,
  },
  "drop_callmenu",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "after_hours_callmenu",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
  "max_calls_method",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["TOTAL", "IN_QUEUE", "DISABLED"] },
    is_nullable => 1,
  },
  "max_calls_count",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "max_calls_action",
  {
    data_type => "enum",
    default_value => "NO_AGENT_NO_QUEUE",
    extra => { list => ["DROP", "AFTERHOURS", "NO_AGENT_NO_QUEUE"] },
    is_nullable => 1,
  },
  "dial_ingroup_cid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</group_id>

=back

=cut

__PACKAGE__->set_primary_key("group_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YJCl7pONwVm3MWVRqfFfhg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
