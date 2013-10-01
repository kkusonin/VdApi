use utf8;
package Vicidial::Schema::Result::Server;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::Server

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

=head1 TABLE: C<servers>

=cut

__PACKAGE__->table("servers");

=head1 ACCESSORS

=head2 server_id

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 server_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 asterisk_version

  data_type: 'varchar'
  default_value: '1.4.21.1'
  is_nullable: 1
  size: 20

=head2 max_vicidial_trunks

  data_type: 'smallint'
  default_value: 23
  is_nullable: 1

=head2 telnet_host

  data_type: 'varchar'
  default_value: 'localhost'
  is_nullable: 0
  size: 20

=head2 telnet_port

  data_type: 'integer'
  default_value: 5038
  is_nullable: 0

=head2 astmgrusername

  data_type: 'varchar'
  default_value: 'cron'
  is_nullable: 0
  size: 20

=head2 astmgrsecret

  data_type: 'varchar'
  default_value: 1234
  is_nullable: 0
  size: 20

=head2 astmgrusernameupdate

  data_type: 'varchar'
  default_value: 'updatecron'
  is_nullable: 0
  size: 20

=head2 astmgrusernamelisten

  data_type: 'varchar'
  default_value: 'listencron'
  is_nullable: 0
  size: 20

=head2 astmgrusernamesend

  data_type: 'varchar'
  default_value: 'sendcron'
  is_nullable: 0
  size: 20

=head2 local_gmt

  data_type: 'varchar'
  default_value: -5.00
  is_nullable: 1
  size: 6

=head2 voicemail_dump_exten

  data_type: 'varchar'
  default_value: 85026666666666
  is_nullable: 0
  size: 20

=head2 answer_transfer_agent

  data_type: 'varchar'
  default_value: 8365
  is_nullable: 0
  size: 20

=head2 ext_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 0
  size: 20

=head2 sys_perf_log

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 vd_server_logs

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agi_output

  data_type: 'enum'
  default_value: 'FILE'
  extra: {list => ["NONE","STDERR","FILE","BOTH"]}
  is_nullable: 1

=head2 vicidial_balance_active

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 balance_trunks_offlimits

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 recording_web_link

  data_type: 'enum'
  default_value: 'SERVER_IP'
  extra: {list => ["SERVER_IP","ALT_IP","EXTERNAL_IP"]}
  is_nullable: 1

=head2 alt_server_ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 active_asterisk_server

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 generate_vicidial_conf

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 rebuild_conf_files

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 outbound_calls_per_second

  data_type: 'smallint'
  default_value: 5
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sysload

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 channels_total

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cpu_idle_percent

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 disk_usage

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 255

=head2 sounds_update

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 vicidial_recording_limit

  data_type: 'mediumint'
  default_value: 60
  is_nullable: 1

=head2 carrier_logging_active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 vicidial_balance_rank

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 rebuild_music_on_hold

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 active_agent_login_server

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 conf_secret

  data_type: 'varchar'
  default_value: 'test'
  is_nullable: 1
  size: 20

=head2 external_server_ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_dialplan_entry

  data_type: 'text'
  is_nullable: 1

=head2 active_twin_server_ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 15

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "server_id",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "server_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "asterisk_version",
  {
    data_type => "varchar",
    default_value => "1.4.21.1",
    is_nullable => 1,
    size => 20,
  },
  "max_vicidial_trunks",
  { data_type => "smallint", default_value => 23, is_nullable => 1 },
  "telnet_host",
  {
    data_type => "varchar",
    default_value => "localhost",
    is_nullable => 0,
    size => 20,
  },
  "telnet_port",
  { data_type => "integer", default_value => 5038, is_nullable => 0 },
  "astmgrusername",
  {
    data_type => "varchar",
    default_value => "cron",
    is_nullable => 0,
    size => 20,
  },
  "astmgrsecret",
  { data_type => "varchar", default_value => 1234, is_nullable => 0, size => 20 },
  "astmgrusernameupdate",
  {
    data_type => "varchar",
    default_value => "updatecron",
    is_nullable => 0,
    size => 20,
  },
  "astmgrusernamelisten",
  {
    data_type => "varchar",
    default_value => "listencron",
    is_nullable => 0,
    size => 20,
  },
  "astmgrusernamesend",
  {
    data_type => "varchar",
    default_value => "sendcron",
    is_nullable => 0,
    size => 20,
  },
  "local_gmt",
  {
    data_type => "varchar",
    default_value => "-5.00",
    is_nullable => 1,
    size => 6,
  },
  "voicemail_dump_exten",
  {
    data_type => "varchar",
    default_value => 85026666666666,
    is_nullable => 0,
    size => 20,
  },
  "answer_transfer_agent",
  { data_type => "varchar", default_value => 8365, is_nullable => 0, size => 20 },
  "ext_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 0,
    size => 20,
  },
  "sys_perf_log",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "vd_server_logs",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agi_output",
  {
    data_type => "enum",
    default_value => "FILE",
    extra => { list => ["NONE", "STDERR", "FILE", "BOTH"] },
    is_nullable => 1,
  },
  "vicidial_balance_active",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "balance_trunks_offlimits",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "recording_web_link",
  {
    data_type => "enum",
    default_value => "SERVER_IP",
    extra => { list => ["SERVER_IP", "ALT_IP", "EXTERNAL_IP"] },
    is_nullable => 1,
  },
  "alt_server_ip",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "active_asterisk_server",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "generate_vicidial_conf",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "rebuild_conf_files",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "outbound_calls_per_second",
  {
    data_type => "smallint",
    default_value => 5,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sysload",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "channels_total",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cpu_idle_percent",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "disk_usage",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 255 },
  "sounds_update",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "vicidial_recording_limit",
  { data_type => "mediumint", default_value => 60, is_nullable => 1 },
  "carrier_logging_active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "vicidial_balance_rank",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "rebuild_music_on_hold",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "active_agent_login_server",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "conf_secret",
  {
    data_type => "varchar",
    default_value => "test",
    is_nullable => 1,
    size => 20,
  },
  "external_server_ip",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_dialplan_entry",
  { data_type => "text", is_nullable => 1 },
  "active_twin_server_ip",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 15 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<server_id>

=over 4

=item * L</server_id>

=back

=cut

__PACKAGE__->add_unique_constraint("server_id", ["server_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MrbmoPJAETU3h+RwEEU3wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
