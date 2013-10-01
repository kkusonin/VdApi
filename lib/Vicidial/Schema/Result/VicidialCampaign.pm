use utf8;
package Vicidial::Schema::Result::VicidialCampaign;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaign

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

=head1 TABLE: C<vicidial_campaigns>

=cut

__PACKAGE__->table("vicidial_campaigns");

=head1 ACCESSORS

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 campaign_name

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 dial_status_a

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dial_status_b

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dial_status_c

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dial_status_d

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dial_status_e

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 lead_order

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 park_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 park_file_name

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 100

=head2 web_form_address

  data_type: 'text'
  is_nullable: 1

=head2 allow_closers

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 hopper_level

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=head2 auto_dial_level

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 next_agent_call

  data_type: 'enum'
  default_value: 'longest_wait_time'
  extra: {list => ["random","oldest_call_start","oldest_call_finish","campaign_rank","overall_user_level","fewest_calls","longest_wait_time","campaign_grade_random"]}
  is_nullable: 1

=head2 local_call_time

  data_type: 'varchar'
  default_value: '9am-9pm'
  is_nullable: 1
  size: 10

=head2 voicemail_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 dial_timeout

  data_type: 'tinyint'
  default_value: 60
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dial_prefix

  data_type: 'varchar'
  default_value: 9
  is_nullable: 1
  size: 20

=head2 campaign_cid

  data_type: 'varchar'
  default_value: 0000000000
  is_nullable: 1
  size: 20

=head2 campaign_vdad_exten

  data_type: 'varchar'
  default_value: 8368
  is_nullable: 1
  size: 20

=head2 campaign_rec_exten

  data_type: 'varchar'
  default_value: 8309
  is_nullable: 1
  size: 20

=head2 campaign_recording

  data_type: 'enum'
  default_value: 'ONDEMAND'
  extra: {list => ["NEVER","ONDEMAND","ALLCALLS","ALLFORCE"]}
  is_nullable: 1

=head2 campaign_rec_filename

  data_type: 'varchar'
  default_value: 'FULLDATE_CUSTPHONE'
  is_nullable: 1
  size: 50

=head2 campaign_script

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 get_call_launch

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","SCRIPT","WEBFORM","WEBFORMTWO","FORM"]}
  is_nullable: 1

=head2 am_message_exten

  data_type: 'varchar'
  default_value: 'vm-goodbye'
  is_nullable: 1
  size: 100

=head2 amd_send_to_vmx

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
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

=head2 alt_number_dialing

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 scheduled_callbacks

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 lead_filter_id

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 10

=head2 drop_call_seconds

  data_type: 'tinyint'
  default_value: 5
  is_nullable: 1

=head2 drop_action

  data_type: 'enum'
  default_value: 'AUDIO'
  extra: {list => ["HANGUP","MESSAGE","VOICEMAIL","IN_GROUP","AUDIO","CALLMENU"]}
  is_nullable: 1

=head2 safe_harbor_exten

  data_type: 'varchar'
  default_value: 8307
  is_nullable: 1
  size: 20

=head2 display_dialable_count

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 wrapup_seconds

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 wrapup_message

  data_type: 'varchar'
  default_value: 'Wrapup Call'
  is_nullable: 1
  size: 255

=head2 closer_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 use_internal_dnc

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","AREACODE"]}
  is_nullable: 1

=head2 allcalls_delay

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 omit_phone_code

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 dial_method

  data_type: 'enum'
  default_value: 'MANUAL'
  extra: {list => ["MANUAL","RATIO","ADAPT_HARD_LIMIT","ADAPT_TAPERED","ADAPT_AVERAGE","INBOUND_MAN"]}
  is_nullable: 1

=head2 available_only_ratio_tally

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 adaptive_dropped_percentage

  data_type: 'varchar'
  default_value: 3
  is_nullable: 1
  size: 4

=head2 adaptive_maximum_level

  data_type: 'varchar'
  default_value: 3.0
  is_nullable: 1
  size: 6

=head2 adaptive_latest_server_time

  data_type: 'varchar'
  default_value: 2100
  is_nullable: 1
  size: 4

=head2 adaptive_intensity

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 adaptive_dl_diff_target

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 concurrent_transfers

  data_type: 'enum'
  default_value: 'AUTO'
  extra: {list => ["AUTO",1,2,3,4,5,6,7,8,9,10,15,20,25,30,40,50,60,80,100]}
  is_nullable: 1

=head2 auto_alt_dial

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","ALT_ONLY","ADDR3_ONLY","ALT_AND_ADDR3","ALT_AND_EXTENDED","ALT_AND_ADDR3_AND_EXTENDED","EXTENDED_ONLY","MULTI_LEAD"]}
  is_nullable: 1

=head2 auto_alt_dial_statuses

  data_type: 'varchar'
  default_value: ' B N NA DC -'
  is_nullable: 1
  size: 255

=head2 agent_pause_codes_active

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","FORCE"]}
  is_nullable: 1

=head2 campaign_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 campaign_changedate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 campaign_stats_refresh

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 campaign_logindate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 dial_statuses

  data_type: 'varchar'
  default_value: ' NEW -'
  is_nullable: 1
  size: 255

=head2 disable_alter_custdata

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 no_hopper_leads_logins

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 list_order_mix

  data_type: 'varchar'
  default_value: 'DISABLED'
  is_nullable: 1
  size: 20

=head2 campaign_allow_inbound

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 manual_dial_list_id

  data_type: 'bigint'
  default_value: 998
  extra: {unsigned => 1}
  is_nullable: 1

=head2 default_xfer_group

  data_type: 'varchar'
  default_value: '---NONE---'
  is_nullable: 1
  size: 20

=head2 xfer_groups

  data_type: 'text'
  is_nullable: 1

=head2 queue_priority

  data_type: 'tinyint'
  default_value: 50
  is_nullable: 1

=head2 drop_inbound_group

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

=head2 qc_lists

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

=head2 survey_first_audio_file

  data_type: 'varchar'
  default_value: 'US_pol_survey_hello'
  is_nullable: 1
  size: 50

=head2 survey_dtmf_digits

  data_type: 'varchar'
  default_value: 1238
  is_nullable: 1
  size: 16

=head2 survey_ni_digit

  data_type: 'varchar'
  default_value: 8
  is_nullable: 1
  size: 1

=head2 survey_opt_in_audio_file

  data_type: 'varchar'
  default_value: 'US_pol_survey_transfer'
  is_nullable: 1
  size: 50

=head2 survey_ni_audio_file

  data_type: 'varchar'
  default_value: 'US_thanks_no_contact'
  is_nullable: 1
  size: 50

=head2 survey_method

  data_type: 'enum'
  default_value: 'AGENT_XFER'
  extra: {list => ["AGENT_XFER","VOICEMAIL","EXTENSION","HANGUP","CAMPREC_60_WAV","CALLMENU"]}
  is_nullable: 1

=head2 survey_no_response_action

  data_type: 'enum'
  default_value: 'OPTIN'
  extra: {list => ["OPTIN","OPTOUT"]}
  is_nullable: 1

=head2 survey_ni_status

  data_type: 'varchar'
  default_value: 'NI'
  is_nullable: 1
  size: 6

=head2 survey_response_digit_map

  data_type: 'varchar'
  default_value: '1-DEMOCRAT|2-REPUBLICAN|3-INDEPENDANT|8-OPTOUT|X-NO RESPONSE|'
  is_nullable: 1
  size: 255

=head2 survey_xfer_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 survey_camp_record_dir

  data_type: 'varchar'
  default_value: '/home/survey'
  is_nullable: 1
  size: 255

=head2 disable_alter_custphone

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N","HIDE"]}
  is_nullable: 1

=head2 display_queue_count

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 manual_dial_filter

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 50

=head2 agent_clipboard_copy

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 50

=head2 agent_extended_alt_dial

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 use_campaign_dnc

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","AREACODE"]}
  is_nullable: 1

=head2 three_way_call_cid

  data_type: 'enum'
  default_value: 'CAMPAIGN'
  extra: {list => ["CAMPAIGN","CUSTOMER","AGENT_PHONE","AGENT_CHOOSE","CUSTOM_CID"]}
  is_nullable: 1

=head2 three_way_dial_prefix

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 web_form_target

  data_type: 'varchar'
  default_value: 'vdcwebform'
  is_nullable: 0
  size: 100

=head2 vtiger_search_category

  data_type: 'varchar'
  default_value: 'LEAD'
  is_nullable: 1
  size: 100

=head2 vtiger_create_call_record

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N","DISPO"]}
  is_nullable: 1

=head2 vtiger_create_lead_record

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 vtiger_screen_login

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N","NEW_WINDOW"]}
  is_nullable: 1

=head2 cpd_amd_action

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","DISPO","MESSAGE"]}
  is_nullable: 1

=head2 agent_allow_group_alias

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 default_group_alias

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 30

=head2 vtiger_search_dead

  data_type: 'enum'
  default_value: 'ASK'
  extra: {list => ["DISABLED","ASK","RESURRECT"]}
  is_nullable: 1

=head2 vtiger_status_call

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 survey_third_digit

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 1

=head2 survey_third_audio_file

  data_type: 'varchar'
  default_value: 'US_thanks_no_contact'
  is_nullable: 1
  size: 50

=head2 survey_third_status

  data_type: 'varchar'
  default_value: 'NI'
  is_nullable: 1
  size: 6

=head2 survey_third_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 survey_fourth_digit

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 1

=head2 survey_fourth_audio_file

  data_type: 'varchar'
  default_value: 'US_thanks_no_contact'
  is_nullable: 1
  size: 50

=head2 survey_fourth_status

  data_type: 'varchar'
  default_value: 'NI'
  is_nullable: 1
  size: 6

=head2 survey_fourth_exten

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 20

=head2 drop_lockout_time

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 quick_transfer_button

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 20

=head2 prepopulate_transfer_preset

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","PRESET_1","PRESET_2","PRESET_3","PRESET_4","PRESET_5"]}
  is_nullable: 1

=head2 drop_rate_group

  data_type: 'varchar'
  default_value: 'DISABLED'
  is_nullable: 1
  size: 20

=head2 view_calls_in_queue

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","ALL",1,2,3,4,5]}
  is_nullable: 1

=head2 view_calls_in_queue_launch

  data_type: 'enum'
  default_value: 'MANUAL'
  extra: {list => ["AUTO","MANUAL"]}
  is_nullable: 1

=head2 grab_calls_in_queue

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 call_requeue_button

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 pause_after_each_call

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 no_hopper_dialing

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_dial_owner_only

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","USER","TERRITORY","USER_GROUP"]}
  is_nullable: 1

=head2 agent_display_dialable_leads

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 web_form_address_two

  data_type: 'text'
  is_nullable: 1

=head2 waitforsilence_options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 25

=head2 agent_select_territories

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 campaign_calldate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 crm_popup_login

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 crm_login_address

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

=head2 use_custom_cid

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","AREACODE"]}
  is_nullable: 1

=head2 scheduled_callbacks_alert

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","BLINK","RED","BLINK_RED","BLINK_DEFER","RED_DEFER","BLINK_RED_DEFER"]}
  is_nullable: 1

=head2 queuemetrics_callstatus_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","NO","YES"]}
  is_nullable: 1

=head2 extension_appended_cidname

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 scheduled_callbacks_count

  data_type: 'enum'
  default_value: 'ALL_ACTIVE'
  extra: {list => ["LIVE","ALL_ACTIVE"]}
  is_nullable: 1

=head2 manual_dial_override

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","ALLOW_ALL","DISABLE_ALL"]}
  is_nullable: 1

=head2 blind_monitor_warning

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ALERT","NOTICE","AUDIO","ALERT_NOTICE","ALERT_AUDIO","NOTICE_AUDIO","ALL"]}
  is_nullable: 1

=head2 blind_monitor_message

  data_type: 'varchar'
  default_value: 'Someone is blind monitoring your session'
  is_nullable: 1
  size: 255

=head2 blind_monitor_filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 inbound_queue_no_dial

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED","ALL_SERVERS"]}
  is_nullable: 1

=head2 timer_action_destination

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 30

=head2 enable_xfer_presets

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED","CONTACTS"]}
  is_nullable: 1

=head2 hide_xfer_number_to_dial

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED"]}
  is_nullable: 1

=head2 manual_dial_prefix

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 customer_3way_hangup_logging

  data_type: 'enum'
  default_value: 'ENABLED'
  extra: {list => ["DISABLED","ENABLED"]}
  is_nullable: 1

=head2 customer_3way_hangup_seconds

  data_type: 'smallint'
  default_value: 5
  extra: {unsigned => 1}
  is_nullable: 1

=head2 customer_3way_hangup_action

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["NONE","DISPO"]}
  is_nullable: 1

=head2 ivr_park_call

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED","ENABLED_PARK_ONLY","ENABLED_BUTTON_HIDDEN"]}
  is_nullable: 1

=head2 ivr_park_call_agi

  data_type: 'text'
  is_nullable: 1

=head2 manual_preview_dial

  data_type: 'enum'
  default_value: 'PREVIEW_AND_SKIP'
  extra: {list => ["DISABLED","PREVIEW_AND_SKIP","PREVIEW_ONLY"]}
  is_nullable: 1

=head2 realtime_agent_time_stats

  data_type: 'enum'
  default_value: 'CALLS_WAIT_CUST_ACW_PAUSE'
  extra: {list => ["DISABLED","WAIT_CUST_ACW","WAIT_CUST_ACW_PAUSE","CALLS_WAIT_CUST_ACW_PAUSE"]}
  is_nullable: 1

=head2 use_auto_hopper

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 auto_hopper_multi

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 6

=head2 auto_hopper_level

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 auto_trim_hopper

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 api_manual_dial

  data_type: 'enum'
  default_value: 'STANDARD'
  extra: {list => ["STANDARD","QUEUE","QUEUE_AND_AUTOCALL"]}
  is_nullable: 1

=head2 manual_dial_call_time_check

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ENABLED"]}
  is_nullable: 1

=head2 display_leads_count

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 lead_order_randomize

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 lead_order_secondary

  data_type: 'enum'
  default_value: 'LEAD_ASCEND'
  extra: {list => ["LEAD_ASCEND","LEAD_DESCEND","CALLTIME_ASCEND","CALLTIME_DESCEND"]}
  is_nullable: 1

=head2 per_call_notes

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["ENABLED","DISABLED"]}
  is_nullable: 1

=head2 my_callback_option

  data_type: 'enum'
  default_value: 'UNCHECKED'
  extra: {list => ["CHECKED","UNCHECKED"]}
  is_nullable: 1

=head2 agent_lead_search

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["ENABLED","DISABLED"]}
  is_nullable: 1

=head2 agent_lead_search_method

  data_type: 'varchar'
  default_value: 'CAMPLISTS_ALL'
  is_nullable: 1
  size: 30

=head2 queuemetrics_phone_environment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 auto_pause_precall

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 auto_pause_precall_code

  data_type: 'varchar'
  default_value: 'PRECAL'
  is_nullable: 1
  size: 6

=head2 auto_resume_precall

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 manual_dial_cid

  data_type: 'enum'
  default_value: 'CAMPAIGN'
  extra: {list => ["CAMPAIGN","AGENT_PHONE"]}
  is_nullable: 1

=head2 post_phone_time_diff_alert

  data_type: 'varchar'
  default_value: 'DISABLED'
  is_nullable: 1
  size: 30

=head2 custom_3way_button_transfer

  data_type: 'varchar'
  default_value: 'DISABLED'
  is_nullable: 1
  size: 30

=head2 available_only_tally_threshold

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","LOGGED-IN_AGENTS","NON-PAUSED_AGENTS","WAITING_AGENTS"]}
  is_nullable: 1

=head2 available_only_tally_threshold_agents

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dial_level_threshold

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","LOGGED-IN_AGENTS","NON-PAUSED_AGENTS","WAITING_AGENTS"]}
  is_nullable: 1

=head2 dial_level_threshold_agents

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 safe_harbor_audio

  data_type: 'varchar'
  default_value: 'buzz'
  is_nullable: 1
  size: 100

=head2 safe_harbor_menu_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 survey_menu_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 callback_days_limit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 dl_diff_target_method

  data_type: 'enum'
  default_value: 'ADAPT_CALC_ONLY'
  extra: {list => ["ADAPT_CALC_ONLY","CALLS_PLACED"]}
  is_nullable: 1

=head2 disable_dispo_screen

  data_type: 'enum'
  default_value: 'DISPO_ENABLED'
  extra: {list => ["DISPO_ENABLED","DISPO_DISABLED","DISPO_SELECT_DISABLED"]}
  is_nullable: 1

=head2 disable_dispo_status

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 6

=head2 screen_labels

  data_type: 'varchar'
  default_value: '--SYSTEM-SETTINGS--'
  is_nullable: 1
  size: 20

=head2 status_display_fields

  data_type: 'varchar'
  default_value: 'CALLID'
  is_nullable: 1
  size: 30

=head2 na_call_url

  data_type: 'text'
  is_nullable: 1

=head2 survey_recording

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","Y_WITH_AMD"]}
  is_nullable: 1

=head2 pllb_grouping

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","ONE_SERVER_ONLY","CASCADING"]}
  is_nullable: 1

=head2 pllb_grouping_limit

  data_type: 'smallint'
  default_value: 50
  is_nullable: 1

=head2 call_count_limit

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 call_count_target

  data_type: 'smallint'
  default_value: 3
  extra: {unsigned => 1}
  is_nullable: 1

=head2 callback_hours_block

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 callback_list_calltime

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["ENABLED","DISABLED"]}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=head2 hopper_vlc_dup_check

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 in_group_dial

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","MANUAL_DIAL","NO_DIAL","BOTH"]}
  is_nullable: 1

=head2 in_group_dial_select

  data_type: 'enum'
  default_value: 'CAMPAIGN_SELECTED'
  extra: {list => ["AGENT_SELECTED","CAMPAIGN_SELECTED","ALL_USER_GROUP"]}
  is_nullable: 1

=head2 safe_harbor_audio_field

  data_type: 'varchar'
  default_value: 'DISABLED'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "campaign_name",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "dial_status_a",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dial_status_b",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dial_status_c",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dial_status_d",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dial_status_e",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "lead_order",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "park_ext",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "park_file_name",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 100,
  },
  "web_form_address",
  { data_type => "text", is_nullable => 1 },
  "allow_closers",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "hopper_level",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "auto_dial_level",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "next_agent_call",
  {
    data_type => "enum",
    default_value => "longest_wait_time",
    extra => {
      list => [
        "random",
        "oldest_call_start",
        "oldest_call_finish",
        "campaign_rank",
        "overall_user_level",
        "fewest_calls",
        "longest_wait_time",
        "campaign_grade_random",
      ],
    },
    is_nullable => 1,
  },
  "local_call_time",
  {
    data_type => "varchar",
    default_value => "9am-9pm",
    is_nullable => 1,
    size => 10,
  },
  "voicemail_ext",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "dial_timeout",
  {
    data_type => "tinyint",
    default_value => 60,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "dial_prefix",
  { data_type => "varchar", default_value => 9, is_nullable => 1, size => 20 },
  "campaign_cid",
  {
    data_type => "varchar",
    default_value => "0000000000",
    is_nullable => 1,
    size => 20,
  },
  "campaign_vdad_exten",
  { data_type => "varchar", default_value => 8368, is_nullable => 1, size => 20 },
  "campaign_rec_exten",
  { data_type => "varchar", default_value => 8309, is_nullable => 1, size => 20 },
  "campaign_recording",
  {
    data_type => "enum",
    default_value => "ONDEMAND",
    extra => { list => ["NEVER", "ONDEMAND", "ALLCALLS", "ALLFORCE"] },
    is_nullable => 1,
  },
  "campaign_rec_filename",
  {
    data_type => "varchar",
    default_value => "FULLDATE_CUSTPHONE",
    is_nullable => 1,
    size => 50,
  },
  "campaign_script",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "get_call_launch",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "SCRIPT", "WEBFORM", "WEBFORMTWO", "FORM"] },
    is_nullable => 1,
  },
  "am_message_exten",
  {
    data_type => "varchar",
    default_value => "vm-goodbye",
    is_nullable => 1,
    size => 100,
  },
  "amd_send_to_vmx",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
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
  "alt_number_dialing",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "scheduled_callbacks",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "lead_filter_id",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 10,
  },
  "drop_call_seconds",
  { data_type => "tinyint", default_value => 5, is_nullable => 1 },
  "drop_action",
  {
    data_type => "enum",
    default_value => "AUDIO",
    extra => {
      list => ["HANGUP", "MESSAGE", "VOICEMAIL", "IN_GROUP", "AUDIO", "CALLMENU"],
    },
    is_nullable => 1,
  },
  "safe_harbor_exten",
  { data_type => "varchar", default_value => 8307, is_nullable => 1, size => 20 },
  "display_dialable_count",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "wrapup_seconds",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "wrapup_message",
  {
    data_type => "varchar",
    default_value => "Wrapup Call",
    is_nullable => 1,
    size => 255,
  },
  "closer_campaigns",
  { data_type => "text", is_nullable => 1 },
  "use_internal_dnc",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "AREACODE"] },
    is_nullable => 1,
  },
  "allcalls_delay",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "omit_phone_code",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "dial_method",
  {
    data_type => "enum",
    default_value => "MANUAL",
    extra => {
      list => [
        "MANUAL",
        "RATIO",
        "ADAPT_HARD_LIMIT",
        "ADAPT_TAPERED",
        "ADAPT_AVERAGE",
        "INBOUND_MAN",
      ],
    },
    is_nullable => 1,
  },
  "available_only_ratio_tally",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "adaptive_dropped_percentage",
  { data_type => "varchar", default_value => 3, is_nullable => 1, size => 4 },
  "adaptive_maximum_level",
  { data_type => "varchar", default_value => "3.0", is_nullable => 1, size => 6 },
  "adaptive_latest_server_time",
  { data_type => "varchar", default_value => 2100, is_nullable => 1, size => 4 },
  "adaptive_intensity",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "adaptive_dl_diff_target",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "concurrent_transfers",
  {
    data_type => "enum",
    default_value => "AUTO",
    extra => { list => ["AUTO", 1 .. 10, 15, 20, 25, 30, 40, 50, 60, 80, 100] },
    is_nullable => 1,
  },
  "auto_alt_dial",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => {
      list => [
        "NONE",
        "ALT_ONLY",
        "ADDR3_ONLY",
        "ALT_AND_ADDR3",
        "ALT_AND_EXTENDED",
        "ALT_AND_ADDR3_AND_EXTENDED",
        "EXTENDED_ONLY",
        "MULTI_LEAD",
      ],
    },
    is_nullable => 1,
  },
  "auto_alt_dial_statuses",
  {
    data_type => "varchar",
    default_value => " B N NA DC -",
    is_nullable => 1,
    size => 255,
  },
  "agent_pause_codes_active",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "FORCE"] },
    is_nullable => 1,
  },
  "campaign_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "campaign_changedate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "campaign_stats_refresh",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "campaign_logindate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "dial_statuses",
  {
    data_type => "varchar",
    default_value => " NEW -",
    is_nullable => 1,
    size => 255,
  },
  "disable_alter_custdata",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "no_hopper_leads_logins",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "list_order_mix",
  {
    data_type => "varchar",
    default_value => "DISABLED",
    is_nullable => 1,
    size => 20,
  },
  "campaign_allow_inbound",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "manual_dial_list_id",
  {
    data_type => "bigint",
    default_value => 998,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "default_xfer_group",
  {
    data_type => "varchar",
    default_value => "---NONE---",
    is_nullable => 1,
    size => 20,
  },
  "xfer_groups",
  { data_type => "text", is_nullable => 1 },
  "queue_priority",
  { data_type => "tinyint", default_value => 50, is_nullable => 1 },
  "drop_inbound_group",
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
  "qc_lists",
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
  "survey_first_audio_file",
  {
    data_type => "varchar",
    default_value => "US_pol_survey_hello",
    is_nullable => 1,
    size => 50,
  },
  "survey_dtmf_digits",
  { data_type => "varchar", default_value => 1238, is_nullable => 1, size => 16 },
  "survey_ni_digit",
  { data_type => "varchar", default_value => 8, is_nullable => 1, size => 1 },
  "survey_opt_in_audio_file",
  {
    data_type => "varchar",
    default_value => "US_pol_survey_transfer",
    is_nullable => 1,
    size => 50,
  },
  "survey_ni_audio_file",
  {
    data_type => "varchar",
    default_value => "US_thanks_no_contact",
    is_nullable => 1,
    size => 50,
  },
  "survey_method",
  {
    data_type => "enum",
    default_value => "AGENT_XFER",
    extra => {
      list => [
        "AGENT_XFER",
        "VOICEMAIL",
        "EXTENSION",
        "HANGUP",
        "CAMPREC_60_WAV",
        "CALLMENU",
      ],
    },
    is_nullable => 1,
  },
  "survey_no_response_action",
  {
    data_type => "enum",
    default_value => "OPTIN",
    extra => { list => ["OPTIN", "OPTOUT"] },
    is_nullable => 1,
  },
  "survey_ni_status",
  { data_type => "varchar", default_value => "NI", is_nullable => 1, size => 6 },
  "survey_response_digit_map",
  {
    data_type => "varchar",
    default_value => "1-DEMOCRAT|2-REPUBLICAN|3-INDEPENDANT|8-OPTOUT|X-NO RESPONSE|",
    is_nullable => 1,
    size => 255,
  },
  "survey_xfer_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "survey_camp_record_dir",
  {
    data_type => "varchar",
    default_value => "/home/survey",
    is_nullable => 1,
    size => 255,
  },
  "disable_alter_custphone",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N", "HIDE"] },
    is_nullable => 1,
  },
  "display_queue_count",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "manual_dial_filter",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 50,
  },
  "agent_clipboard_copy",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 50,
  },
  "agent_extended_alt_dial",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "use_campaign_dnc",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "AREACODE"] },
    is_nullable => 1,
  },
  "three_way_call_cid",
  {
    data_type => "enum",
    default_value => "CAMPAIGN",
    extra => {
      list => [
        "CAMPAIGN",
        "CUSTOMER",
        "AGENT_PHONE",
        "AGENT_CHOOSE",
        "CUSTOM_CID",
      ],
    },
    is_nullable => 1,
  },
  "three_way_dial_prefix",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "web_form_target",
  {
    data_type => "varchar",
    default_value => "vdcwebform",
    is_nullable => 0,
    size => 100,
  },
  "vtiger_search_category",
  {
    data_type => "varchar",
    default_value => "LEAD",
    is_nullable => 1,
    size => 100,
  },
  "vtiger_create_call_record",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N", "DISPO"] },
    is_nullable => 1,
  },
  "vtiger_create_lead_record",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "vtiger_screen_login",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N", "NEW_WINDOW"] },
    is_nullable => 1,
  },
  "cpd_amd_action",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "DISPO", "MESSAGE"] },
    is_nullable => 1,
  },
  "agent_allow_group_alias",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "default_group_alias",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 30 },
  "vtiger_search_dead",
  {
    data_type => "enum",
    default_value => "ASK",
    extra => { list => ["DISABLED", "ASK", "RESURRECT"] },
    is_nullable => 1,
  },
  "vtiger_status_call",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "survey_third_digit",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 1 },
  "survey_third_audio_file",
  {
    data_type => "varchar",
    default_value => "US_thanks_no_contact",
    is_nullable => 1,
    size => 50,
  },
  "survey_third_status",
  { data_type => "varchar", default_value => "NI", is_nullable => 1, size => 6 },
  "survey_third_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "survey_fourth_digit",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 1 },
  "survey_fourth_audio_file",
  {
    data_type => "varchar",
    default_value => "US_thanks_no_contact",
    is_nullable => 1,
    size => 50,
  },
  "survey_fourth_status",
  { data_type => "varchar", default_value => "NI", is_nullable => 1, size => 6 },
  "survey_fourth_exten",
  { data_type => "varchar", default_value => 8300, is_nullable => 1, size => 20 },
  "drop_lockout_time",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "quick_transfer_button",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 20 },
  "prepopulate_transfer_preset",
  {
    data_type => "enum",
    default_value => "N",
    extra => {
      list => ["N", "PRESET_1", "PRESET_2", "PRESET_3", "PRESET_4", "PRESET_5"],
    },
    is_nullable => 1,
  },
  "drop_rate_group",
  {
    data_type => "varchar",
    default_value => "DISABLED",
    is_nullable => 1,
    size => 20,
  },
  "view_calls_in_queue",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "ALL", 1 .. 5] },
    is_nullable => 1,
  },
  "view_calls_in_queue_launch",
  {
    data_type => "enum",
    default_value => "MANUAL",
    extra => { list => ["AUTO", "MANUAL"] },
    is_nullable => 1,
  },
  "grab_calls_in_queue",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "call_requeue_button",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "pause_after_each_call",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "no_hopper_dialing",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_dial_owner_only",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "USER", "TERRITORY", "USER_GROUP"] },
    is_nullable => 1,
  },
  "agent_display_dialable_leads",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "web_form_address_two",
  { data_type => "text", is_nullable => 1 },
  "waitforsilence_options",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 25 },
  "agent_select_territories",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "campaign_calldate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "crm_popup_login",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "crm_login_address",
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
  "use_custom_cid",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "AREACODE"] },
    is_nullable => 1,
  },
  "scheduled_callbacks_alert",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => {
      list => [
        "NONE",
        "BLINK",
        "RED",
        "BLINK_RED",
        "BLINK_DEFER",
        "RED_DEFER",
        "BLINK_RED_DEFER",
      ],
    },
    is_nullable => 1,
  },
  "queuemetrics_callstatus_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "NO", "YES"] },
    is_nullable => 1,
  },
  "extension_appended_cidname",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "scheduled_callbacks_count",
  {
    data_type => "enum",
    default_value => "ALL_ACTIVE",
    extra => { list => ["LIVE", "ALL_ACTIVE"] },
    is_nullable => 1,
  },
  "manual_dial_override",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "ALLOW_ALL", "DISABLE_ALL"] },
    is_nullable => 1,
  },
  "blind_monitor_warning",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => [
        "DISABLED",
        "ALERT",
        "NOTICE",
        "AUDIO",
        "ALERT_NOTICE",
        "ALERT_AUDIO",
        "NOTICE_AUDIO",
        "ALL",
      ],
    },
    is_nullable => 1,
  },
  "blind_monitor_message",
  {
    data_type => "varchar",
    default_value => "Someone is blind monitoring your session",
    is_nullable => 1,
    size => 255,
  },
  "blind_monitor_filename",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "inbound_queue_no_dial",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "ENABLED", "ALL_SERVERS"] },
    is_nullable => 1,
  },
  "timer_action_destination",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 30 },
  "enable_xfer_presets",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "ENABLED", "CONTACTS"] },
    is_nullable => 1,
  },
  "hide_xfer_number_to_dial",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "ENABLED"] },
    is_nullable => 1,
  },
  "manual_dial_prefix",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "customer_3way_hangup_logging",
  {
    data_type => "enum",
    default_value => "ENABLED",
    extra => { list => ["DISABLED", "ENABLED"] },
    is_nullable => 1,
  },
  "customer_3way_hangup_seconds",
  {
    data_type => "smallint",
    default_value => 5,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "customer_3way_hangup_action",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => { list => ["NONE", "DISPO"] },
    is_nullable => 1,
  },
  "ivr_park_call",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => [
        "DISABLED",
        "ENABLED",
        "ENABLED_PARK_ONLY",
        "ENABLED_BUTTON_HIDDEN",
      ],
    },
    is_nullable => 1,
  },
  "ivr_park_call_agi",
  { data_type => "text", is_nullable => 1 },
  "manual_preview_dial",
  {
    data_type => "enum",
    default_value => "PREVIEW_AND_SKIP",
    extra => { list => ["DISABLED", "PREVIEW_AND_SKIP", "PREVIEW_ONLY"] },
    is_nullable => 1,
  },
  "realtime_agent_time_stats",
  {
    data_type => "enum",
    default_value => "CALLS_WAIT_CUST_ACW_PAUSE",
    extra => {
      list => [
        "DISABLED",
        "WAIT_CUST_ACW",
        "WAIT_CUST_ACW_PAUSE",
        "CALLS_WAIT_CUST_ACW_PAUSE",
      ],
    },
    is_nullable => 1,
  },
  "use_auto_hopper",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "auto_hopper_multi",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 6 },
  "auto_hopper_level",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "auto_trim_hopper",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "api_manual_dial",
  {
    data_type => "enum",
    default_value => "STANDARD",
    extra => { list => ["STANDARD", "QUEUE", "QUEUE_AND_AUTOCALL"] },
    is_nullable => 1,
  },
  "manual_dial_call_time_check",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "ENABLED"] },
    is_nullable => 1,
  },
  "display_leads_count",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "lead_order_randomize",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "lead_order_secondary",
  {
    data_type => "enum",
    default_value => "LEAD_ASCEND",
    extra => {
      list => [
        "LEAD_ASCEND",
        "LEAD_DESCEND",
        "CALLTIME_ASCEND",
        "CALLTIME_DESCEND",
      ],
    },
    is_nullable => 1,
  },
  "per_call_notes",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["ENABLED", "DISABLED"] },
    is_nullable => 1,
  },
  "my_callback_option",
  {
    data_type => "enum",
    default_value => "UNCHECKED",
    extra => { list => ["CHECKED", "UNCHECKED"] },
    is_nullable => 1,
  },
  "agent_lead_search",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["ENABLED", "DISABLED"] },
    is_nullable => 1,
  },
  "agent_lead_search_method",
  {
    data_type => "varchar",
    default_value => "CAMPLISTS_ALL",
    is_nullable => 1,
    size => 30,
  },
  "queuemetrics_phone_environment",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "auto_pause_precall",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "auto_pause_precall_code",
  {
    data_type => "varchar",
    default_value => "PRECAL",
    is_nullable => 1,
    size => 6,
  },
  "auto_resume_precall",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "manual_dial_cid",
  {
    data_type => "enum",
    default_value => "CAMPAIGN",
    extra => { list => ["CAMPAIGN", "AGENT_PHONE"] },
    is_nullable => 1,
  },
  "post_phone_time_diff_alert",
  {
    data_type => "varchar",
    default_value => "DISABLED",
    is_nullable => 1,
    size => 30,
  },
  "custom_3way_button_transfer",
  {
    data_type => "varchar",
    default_value => "DISABLED",
    is_nullable => 1,
    size => 30,
  },
  "available_only_tally_threshold",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => [
        "DISABLED",
        "LOGGED-IN_AGENTS",
        "NON-PAUSED_AGENTS",
        "WAITING_AGENTS",
      ],
    },
    is_nullable => 1,
  },
  "available_only_tally_threshold_agents",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "dial_level_threshold",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => [
        "DISABLED",
        "LOGGED-IN_AGENTS",
        "NON-PAUSED_AGENTS",
        "WAITING_AGENTS",
      ],
    },
    is_nullable => 1,
  },
  "dial_level_threshold_agents",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "safe_harbor_audio",
  {
    data_type => "varchar",
    default_value => "buzz",
    is_nullable => 1,
    size => 100,
  },
  "safe_harbor_menu_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "survey_menu_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "callback_days_limit",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "dl_diff_target_method",
  {
    data_type => "enum",
    default_value => "ADAPT_CALC_ONLY",
    extra => { list => ["ADAPT_CALC_ONLY", "CALLS_PLACED"] },
    is_nullable => 1,
  },
  "disable_dispo_screen",
  {
    data_type => "enum",
    default_value => "DISPO_ENABLED",
    extra => {
      list => ["DISPO_ENABLED", "DISPO_DISABLED", "DISPO_SELECT_DISABLED"],
    },
    is_nullable => 1,
  },
  "disable_dispo_status",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 6 },
  "screen_labels",
  {
    data_type => "varchar",
    default_value => "--SYSTEM-SETTINGS--",
    is_nullable => 1,
    size => 20,
  },
  "status_display_fields",
  {
    data_type => "varchar",
    default_value => "CALLID",
    is_nullable => 1,
    size => 30,
  },
  "na_call_url",
  { data_type => "text", is_nullable => 1 },
  "survey_recording",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "Y_WITH_AMD"] },
    is_nullable => 1,
  },
  "pllb_grouping",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "ONE_SERVER_ONLY", "CASCADING"] },
    is_nullable => 1,
  },
  "pllb_grouping_limit",
  { data_type => "smallint", default_value => 50, is_nullable => 1 },
  "call_count_limit",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "call_count_target",
  {
    data_type => "smallint",
    default_value => 3,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "callback_hours_block",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "callback_list_calltime",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["ENABLED", "DISABLED"] },
    is_nullable => 1,
  },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
  "hopper_vlc_dup_check",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "in_group_dial",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "MANUAL_DIAL", "NO_DIAL", "BOTH"] },
    is_nullable => 1,
  },
  "in_group_dial_select",
  {
    data_type => "enum",
    default_value => "CAMPAIGN_SELECTED",
    extra => {
      list => ["AGENT_SELECTED", "CAMPAIGN_SELECTED", "ALL_USER_GROUP"],
    },
    is_nullable => 1,
  },
  "safe_harbor_audio_field",
  {
    data_type => "varchar",
    default_value => "DISABLED",
    is_nullable => 1,
    size => 30,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</campaign_id>

=back

=cut

__PACKAGE__->set_primary_key("campaign_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uqVQuthRMXrhiYIL3ZouLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
