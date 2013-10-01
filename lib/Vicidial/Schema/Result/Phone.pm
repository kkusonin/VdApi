use utf8;
package Vicidial::Schema::Result::Phone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::Phone

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

=head1 TABLE: C<phones>

=cut

__PACKAGE__->table("phones");

=head1 ACCESSORS

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 dialplan_number

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 voicemail_id

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 computer_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 login

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 pass

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 phone_type

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 fullname

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 company

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 picture

  data_type: 'varchar'
  is_nullable: 1
  size: 19

=head2 messages

  data_type: 'integer'
  is_nullable: 1

=head2 old_messages

  data_type: 'integer'
  is_nullable: 1

=head2 protocol

  data_type: 'enum'
  default_value: 'SIP'
  extra: {list => ["SIP","Zap","IAX2","EXTERNAL"]}
  is_nullable: 1

=head2 local_gmt

  data_type: 'varchar'
  default_value: -5.00
  is_nullable: 1
  size: 6

=head2 astmgrusername

  data_type: 'varchar'
  default_value: 'cron'
  is_nullable: 1
  size: 20

=head2 astmgrsecret

  data_type: 'varchar'
  default_value: 1234
  is_nullable: 1
  size: 20

=head2 login_user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 login_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 login_campaign

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 park_on_extension

  data_type: 'varchar'
  default_value: 8301
  is_nullable: 1
  size: 10

=head2 conf_on_extension

  data_type: 'varchar'
  default_value: 8302
  is_nullable: 1
  size: 10

=head2 vicidial_park_on_extension

  data_type: 'varchar'
  default_value: 8301
  is_nullable: 1
  size: 10

=head2 vicidial_park_on_filename

  data_type: 'varchar'
  default_value: 'park'
  is_nullable: 1
  size: 10

=head2 monitor_prefix

  data_type: 'varchar'
  default_value: 8612
  is_nullable: 1
  size: 10

=head2 recording_exten

  data_type: 'varchar'
  default_value: 8309
  is_nullable: 1
  size: 10

=head2 voicemail_exten

  data_type: 'varchar'
  default_value: 8501
  is_nullable: 1
  size: 10

=head2 voicemail_dump_exten

  data_type: 'varchar'
  default_value: 85026666666666
  is_nullable: 1
  size: 20

=head2 ext_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 20

=head2 dtmf_send_extension

  data_type: 'varchar'
  default_value: 'local/8500998@default'
  is_nullable: 1
  size: 100

=head2 call_out_number_group

  data_type: 'varchar'
  default_value: 'Zap/g2/'
  is_nullable: 1
  size: 100

=head2 client_browser

  data_type: 'varchar'
  default_value: '/usr/bin/mozilla'
  is_nullable: 1
  size: 100

=head2 install_directory

  data_type: 'varchar'
  default_value: '/usr/local/perl_TK'
  is_nullable: 1
  size: 100

=head2 local_web_callerid_url

  data_type: 'varchar'
  default_value: 'http://astguiclient.sf.net/test_callerid_output.php'
  is_nullable: 1
  size: 255

=head2 vicidial_web_url

  data_type: 'varchar'
  default_value: 'http://astguiclient.sf.net/test_VICIDIAL_output.php'
  is_nullable: 1
  size: 255

=head2 agi_call_logging_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 user_switching_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 conferencing_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_hangup_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_hijack_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_monitor_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 call_parking_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 updater_check_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 aflogging_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 queue_action_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 callerid_popup_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 voicemail_button_enabled

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 enable_fast_refresh

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 fast_refresh_rate

  data_type: 'integer'
  default_value: 1000
  is_nullable: 1

=head2 enable_persistant_mysql

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 auto_dial_next_number

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 vdstop_rec_after_each_call

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 dbx_server

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 dbx_database

  data_type: 'varchar'
  default_value: 'asterisk'
  is_nullable: 1
  size: 15

=head2 dbx_user

  data_type: 'varchar'
  default_value: 'cron'
  is_nullable: 1
  size: 15

=head2 dbx_pass

  data_type: 'varchar'
  default_value: 1234
  is_nullable: 1
  size: 15

=head2 dbx_port

  data_type: 'integer'
  default_value: 3306
  is_nullable: 1

=head2 dby_server

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 dby_database

  data_type: 'varchar'
  default_value: 'asterisk'
  is_nullable: 1
  size: 15

=head2 dby_user

  data_type: 'varchar'
  default_value: 'cron'
  is_nullable: 1
  size: 15

=head2 dby_pass

  data_type: 'varchar'
  default_value: 1234
  is_nullable: 1
  size: 15

=head2 dby_port

  data_type: 'integer'
  default_value: 3306
  is_nullable: 1

=head2 outbound_cid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 enable_sipsak_messages

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 template_id

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 conf_override

  data_type: 'text'
  is_nullable: 1

=head2 phone_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 20

=head2 phone_ring_timeout

  data_type: 'smallint'
  default_value: 60
  is_nullable: 1

=head2 conf_secret

  data_type: 'varchar'
  default_value: 'test'
  is_nullable: 1
  size: 20

=head2 delete_vm_after_email

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 is_webphone

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","Y_API_LAUNCH"]}
  is_nullable: 1

=head2 use_external_server_ip

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 codecs_list

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 codecs_with_template

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 webphone_dialpad

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N","TOGGLE","TOGGLE_OFF"]}
  is_nullable: 1

=head2 on_hook_agent

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 webphone_auto_answer

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 voicemail_timezone

  data_type: 'varchar'
  default_value: 'eastern'
  is_nullable: 1
  size: 30

=head2 voicemail_options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "dialplan_number",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "voicemail_id",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "computer_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "login",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "pass",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "phone_type",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "fullname",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "company",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "picture",
  { data_type => "varchar", is_nullable => 1, size => 19 },
  "messages",
  { data_type => "integer", is_nullable => 1 },
  "old_messages",
  { data_type => "integer", is_nullable => 1 },
  "protocol",
  {
    data_type => "enum",
    default_value => "SIP",
    extra => { list => ["SIP", "Zap", "IAX2", "EXTERNAL"] },
    is_nullable => 1,
  },
  "local_gmt",
  {
    data_type => "varchar",
    default_value => "-5.00",
    is_nullable => 1,
    size => 6,
  },
  "astmgrusername",
  {
    data_type => "varchar",
    default_value => "cron",
    is_nullable => 1,
    size => 20,
  },
  "astmgrsecret",
  { data_type => "varchar", default_value => 1234, is_nullable => 1, size => 20 },
  "login_user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "login_pass",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "login_campaign",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "park_on_extension",
  { data_type => "varchar", default_value => 8301, is_nullable => 1, size => 10 },
  "conf_on_extension",
  { data_type => "varchar", default_value => 8302, is_nullable => 1, size => 10 },
  "vicidial_park_on_extension",
  { data_type => "varchar", default_value => 8301, is_nullable => 1, size => 10 },
  "vicidial_park_on_filename",
  {
    data_type => "varchar",
    default_value => "park",
    is_nullable => 1,
    size => 10,
  },
  "monitor_prefix",
  { data_type => "varchar", default_value => 8612, is_nullable => 1, size => 10 },
  "recording_exten",
  { data_type => "varchar", default_value => 8309, is_nullable => 1, size => 10 },
  "voicemail_exten",
  { data_type => "varchar", default_value => 8501, is_nullable => 1, size => 10 },
  "voicemail_dump_exten",
  {
    data_type => "varchar",
    default_value => 85026666666666,
    is_nullable => 1,
    size => 20,
  },
  "ext_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 20,
  },
  "dtmf_send_extension",
  {
    data_type => "varchar",
    default_value => "local/8500998\@default",
    is_nullable => 1,
    size => 100,
  },
  "call_out_number_group",
  {
    data_type => "varchar",
    default_value => "Zap/g2/",
    is_nullable => 1,
    size => 100,
  },
  "client_browser",
  {
    data_type => "varchar",
    default_value => "/usr/bin/mozilla",
    is_nullable => 1,
    size => 100,
  },
  "install_directory",
  {
    data_type => "varchar",
    default_value => "/usr/local/perl_TK",
    is_nullable => 1,
    size => 100,
  },
  "local_web_callerid_url",
  {
    data_type => "varchar",
    default_value => "http://astguiclient.sf.net/test_callerid_output.php",
    is_nullable => 1,
    size => 255,
  },
  "vicidial_web_url",
  {
    data_type => "varchar",
    default_value => "http://astguiclient.sf.net/test_VICIDIAL_output.php",
    is_nullable => 1,
    size => 255,
  },
  "agi_call_logging_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "user_switching_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "conferencing_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_hangup_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_hijack_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_monitor_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "call_parking_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "updater_check_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "aflogging_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "queue_action_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "callerid_popup_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "voicemail_button_enabled",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "enable_fast_refresh",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "fast_refresh_rate",
  { data_type => "integer", default_value => 1000, is_nullable => 1 },
  "enable_persistant_mysql",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "auto_dial_next_number",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "vdstop_rec_after_each_call",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "dbx_server",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "dbx_database",
  {
    data_type => "varchar",
    default_value => "asterisk",
    is_nullable => 1,
    size => 15,
  },
  "dbx_user",
  {
    data_type => "varchar",
    default_value => "cron",
    is_nullable => 1,
    size => 15,
  },
  "dbx_pass",
  { data_type => "varchar", default_value => 1234, is_nullable => 1, size => 15 },
  "dbx_port",
  { data_type => "integer", default_value => 3306, is_nullable => 1 },
  "dby_server",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "dby_database",
  {
    data_type => "varchar",
    default_value => "asterisk",
    is_nullable => 1,
    size => 15,
  },
  "dby_user",
  {
    data_type => "varchar",
    default_value => "cron",
    is_nullable => 1,
    size => 15,
  },
  "dby_pass",
  { data_type => "varchar", default_value => 1234, is_nullable => 1, size => 15 },
  "dby_port",
  { data_type => "integer", default_value => 3306, is_nullable => 1 },
  "outbound_cid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "enable_sipsak_messages",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "template_id",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "conf_override",
  { data_type => "text", is_nullable => 1 },
  "phone_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 20,
  },
  "phone_ring_timeout",
  { data_type => "smallint", default_value => 60, is_nullable => 1 },
  "conf_secret",
  {
    data_type => "varchar",
    default_value => "test",
    is_nullable => 1,
    size => 20,
  },
  "delete_vm_after_email",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "is_webphone",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "Y_API_LAUNCH"] },
    is_nullable => 1,
  },
  "use_external_server_ip",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "codecs_list",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "codecs_with_template",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "webphone_dialpad",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N", "TOGGLE", "TOGGLE_OFF"] },
    is_nullable => 1,
  },
  "on_hook_agent",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "webphone_auto_answer",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "voicemail_timezone",
  {
    data_type => "varchar",
    default_value => "eastern",
    is_nullable => 1,
    size => 30,
  },
  "voicemail_options",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<extenserver>

=over 4

=item * L</extension>

=item * L</server_ip>

=back

=cut

__PACKAGE__->add_unique_constraint("extenserver", ["extension", "server_ip"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Em+bqGt/Ctm9HZq6jp5W4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
