use utf8;
package Vicidial::Schema::Result::SystemSetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::SystemSetting

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

=head1 TABLE: C<system_settings>

=cut

__PACKAGE__->table("system_settings");

=head1 ACCESSORS

=head2 version

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 install_date

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 use_non_latin

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 webroot_writable

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 enable_queuemetrics_logging

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 queuemetrics_server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 queuemetrics_dbname

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 queuemetrics_login

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 queuemetrics_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 queuemetrics_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 queuemetrics_log_id

  data_type: 'varchar'
  default_value: 'VIC'
  is_nullable: 1
  size: 10

=head2 queuemetrics_eq_prepend

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 255

=head2 vicidial_agent_disable

  data_type: 'enum'
  default_value: 'ALL'
  extra: {list => ["NOT_ACTIVE","LIVE_AGENT","EXTERNAL","ALL"]}
  is_nullable: 1

=head2 allow_sipsak_messages

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_home_url

  data_type: 'varchar'
  default_value: '../vicidial/welcome.php'
  is_nullable: 1
  size: 255

=head2 enable_agc_xfer_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 db_schema_version

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 auto_user_add_value

  data_type: 'integer'
  default_value: 101
  extra: {unsigned => 1}
  is_nullable: 1

=head2 timeclock_end_of_day

  data_type: 'varchar'
  default_value: 0000
  is_nullable: 1
  size: 4

=head2 timeclock_last_reset_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 vdc_header_date_format

  data_type: 'varchar'
  default_value: 'MS_DASH_24HR  2008-06-24 23:59:59'
  is_nullable: 1
  size: 50

=head2 vdc_customer_date_format

  data_type: 'varchar'
  default_value: 'AL_TEXT_AMPM  OCT 24, 2008 11:59:59 PM'
  is_nullable: 1
  size: 50

=head2 vdc_header_phone_format

  data_type: 'varchar'
  default_value: 'US_PARN (000)000-0000'
  is_nullable: 1
  size: 50

=head2 vdc_agent_api_active

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 qc_last_pull_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 enable_vtiger_integration

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 vtiger_server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 vtiger_dbname

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 vtiger_login

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 vtiger_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 vtiger_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 qc_features_active

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 outbound_autodial_active

  data_type: 'enum'
  default_value: 1
  extra: {list => [1,0]}
  is_nullable: 1

=head2 outbound_calls_per_second

  data_type: 'smallint'
  default_value: 10
  extra: {unsigned => 1}
  is_nullable: 1

=head2 enable_tts_integration

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agentonly_callback_campaign_lock

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 sounds_central_control_active

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 sounds_web_server

  data_type: 'varchar'
  default_value: '127.0.0.1'
  is_nullable: 1
  size: 50

=head2 sounds_web_directory

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 active_voicemail_server

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 15

=head2 auto_dial_limit

  data_type: 'varchar'
  default_value: 4
  is_nullable: 1
  size: 5

=head2 user_territories_active

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 allow_custom_dialplan

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 db_schema_update_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 enable_second_webform

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 default_webphone

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 default_external_server_ip

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 webphone_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 static_agent_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 default_phone_code

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 8

=head2 enable_agc_dispo_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 custom_dialplan_entry

  data_type: 'text'
  is_nullable: 1

=head2 queuemetrics_loginout

  data_type: 'enum'
  default_value: 'STANDARD'
  extra: {list => ["STANDARD","CALLBACK","NONE"]}
  is_nullable: 1

=head2 callcard_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 queuemetrics_callstatus

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 default_codecs

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_fields_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_web_directory

  data_type: 'varchar'
  default_value: 'vicidial'
  is_nullable: 1
  size: 255

=head2 label_title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_first_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_middle_initial

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_last_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address2

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address3

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_city

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_state

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_province

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_postal_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_vendor_lead_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_gender

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_phone_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_phone_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_alt_phone

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_security_phrase

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_comments

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 slave_db_server

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 reports_use_slave_db

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2000

=head2 webphone_systemkey

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 first_login_trigger

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 hosted_settings

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 default_phone_registration_password

  data_type: 'varchar'
  default_value: 'test'
  is_nullable: 1
  size: 20

=head2 default_phone_login_password

  data_type: 'varchar'
  default_value: 'test'
  is_nullable: 1
  size: 20

=head2 default_server_password

  data_type: 'varchar'
  default_value: 'test'
  is_nullable: 1
  size: 20

=head2 admin_modify_refresh

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 nocache_admin

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 generate_cross_server_exten

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 queuemetrics_addmember_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 queuemetrics_dispo_pause

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 6

=head2 label_hide_field_logs

  data_type: 'varchar'
  default_value: 'Y'
  is_nullable: 1
  size: 6

=head2 queuemetrics_pe_phone_append

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 test_campaign_calls

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agents_calls_reset

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 voicemail_timezones

  data_type: 'text'
  is_nullable: 1

=head2 default_voicemail_timezone

  data_type: 'varchar'
  default_value: 'eastern'
  is_nullable: 1
  size: 30

=head2 default_local_gmt

  data_type: 'varchar'
  default_value: -5.00
  is_nullable: 1
  size: 6

=head2 noanswer_log

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 alt_log_server_ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 alt_log_dbname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 alt_log_login

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 alt_log_pass

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 tables_use_alt_log_db

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2000

=head2 did_agent_log

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 campaign_cid_areacodes_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 pllb_grouping_limit

  data_type: 'smallint'
  default_value: 100
  is_nullable: 1

=head2 did_ra_extensions_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 expanded_list_stats

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 contacts_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 svn_version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 call_menu_qualify_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_list_counts

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "version",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "install_date",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "use_non_latin",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "webroot_writable",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "enable_queuemetrics_logging",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "queuemetrics_server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "queuemetrics_dbname",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "queuemetrics_login",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "queuemetrics_pass",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "queuemetrics_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "queuemetrics_log_id",
  {
    data_type => "varchar",
    default_value => "VIC",
    is_nullable => 1,
    size => 10,
  },
  "queuemetrics_eq_prepend",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 255,
  },
  "vicidial_agent_disable",
  {
    data_type => "enum",
    default_value => "ALL",
    extra => { list => ["NOT_ACTIVE", "LIVE_AGENT", "EXTERNAL", "ALL"] },
    is_nullable => 1,
  },
  "allow_sipsak_messages",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_home_url",
  {
    data_type => "varchar",
    default_value => "../vicidial/welcome.php",
    is_nullable => 1,
    size => 255,
  },
  "enable_agc_xfer_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "db_schema_version",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "auto_user_add_value",
  {
    data_type => "integer",
    default_value => 101,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "timeclock_end_of_day",
  {
    data_type => "varchar",
    default_value => "0000",
    is_nullable => 1,
    size => 4,
  },
  "timeclock_last_reset_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "vdc_header_date_format",
  {
    data_type => "varchar",
    default_value => "MS_DASH_24HR  2008-06-24 23:59:59",
    is_nullable => 1,
    size => 50,
  },
  "vdc_customer_date_format",
  {
    data_type => "varchar",
    default_value => "AL_TEXT_AMPM  OCT 24, 2008 11:59:59 PM",
    is_nullable => 1,
    size => 50,
  },
  "vdc_header_phone_format",
  {
    data_type => "varchar",
    default_value => "US_PARN (000)000-0000",
    is_nullable => 1,
    size => 50,
  },
  "vdc_agent_api_active",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "qc_last_pull_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "enable_vtiger_integration",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "vtiger_server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "vtiger_dbname",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "vtiger_login",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "vtiger_pass",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "vtiger_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "qc_features_active",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "outbound_autodial_active",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "outbound_calls_per_second",
  {
    data_type => "smallint",
    default_value => 10,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "enable_tts_integration",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agentonly_callback_campaign_lock",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "sounds_central_control_active",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "sounds_web_server",
  {
    data_type => "varchar",
    default_value => "127.0.0.1",
    is_nullable => 1,
    size => 50,
  },
  "sounds_web_directory",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "active_voicemail_server",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 15 },
  "auto_dial_limit",
  { data_type => "varchar", default_value => 4, is_nullable => 1, size => 5 },
  "user_territories_active",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "allow_custom_dialplan",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "db_schema_update_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "enable_second_webform",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "default_webphone",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "default_external_server_ip",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "webphone_url",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "static_agent_url",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "default_phone_code",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 8 },
  "enable_agc_dispo_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "custom_dialplan_entry",
  { data_type => "text", is_nullable => 1 },
  "queuemetrics_loginout",
  {
    data_type => "enum",
    default_value => "STANDARD",
    extra => { list => ["STANDARD", "CALLBACK", "NONE"] },
    is_nullable => 1,
  },
  "callcard_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "queuemetrics_callstatus",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "default_codecs",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_fields_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_web_directory",
  {
    data_type => "varchar",
    default_value => "vicidial",
    is_nullable => 1,
    size => 255,
  },
  "label_title",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_first_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_middle_initial",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_last_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address1",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address2",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address3",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_city",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_state",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_province",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_postal_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_vendor_lead_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_gender",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_phone_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_phone_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_alt_phone",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_security_phrase",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_email",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_comments",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "slave_db_server",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "reports_use_slave_db",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2000 },
  "webphone_systemkey",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "first_login_trigger",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "hosted_settings",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "default_phone_registration_password",
  {
    data_type => "varchar",
    default_value => "test",
    is_nullable => 1,
    size => 20,
  },
  "default_phone_login_password",
  {
    data_type => "varchar",
    default_value => "test",
    is_nullable => 1,
    size => 20,
  },
  "default_server_password",
  {
    data_type => "varchar",
    default_value => "test",
    is_nullable => 1,
    size => 20,
  },
  "admin_modify_refresh",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "nocache_admin",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "generate_cross_server_exten",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "queuemetrics_addmember_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "queuemetrics_dispo_pause",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 6 },
  "label_hide_field_logs",
  { data_type => "varchar", default_value => "Y", is_nullable => 1, size => 6 },
  "queuemetrics_pe_phone_append",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "test_campaign_calls",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agents_calls_reset",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "voicemail_timezones",
  { data_type => "text", is_nullable => 1 },
  "default_voicemail_timezone",
  {
    data_type => "varchar",
    default_value => "eastern",
    is_nullable => 1,
    size => 30,
  },
  "default_local_gmt",
  {
    data_type => "varchar",
    default_value => "-5.00",
    is_nullable => 1,
    size => 6,
  },
  "noanswer_log",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "alt_log_server_ip",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "alt_log_dbname",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "alt_log_login",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "alt_log_pass",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "tables_use_alt_log_db",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2000 },
  "did_agent_log",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "campaign_cid_areacodes_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "pllb_grouping_limit",
  { data_type => "smallint", default_value => 100, is_nullable => 1 },
  "did_ra_extensions_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "expanded_list_stats",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "contacts_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "svn_version",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "call_menu_qualify_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_list_counts",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LUTIa6Ud3Es8Bgk83kDLHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
