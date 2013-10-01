use utf8;
package Vicidial::Schema::Result::VicidialInboundDid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialInboundDid

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

=head1 TABLE: C<vicidial_inbound_dids>

=cut

__PACKAGE__->table("vicidial_inbound_dids");

=head1 ACCESSORS

=head2 did_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 did_pattern

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 did_description

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 did_active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 did_route

  data_type: 'enum'
  default_value: 'EXTEN'
  extra: {list => ["EXTEN","VOICEMAIL","AGENT","PHONE","IN_GROUP","CALLMENU"]}
  is_nullable: 1

=head2 extension

  data_type: 'varchar'
  default_value: 9998811112
  is_nullable: 1
  size: 50

=head2 exten_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 50

=head2 voicemail_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 user_unavailable_action

  data_type: 'enum'
  default_value: 'VOICEMAIL'
  extra: {list => ["IN_GROUP","EXTEN","VOICEMAIL","PHONE"]}
  is_nullable: 1

=head2 user_route_settings_ingroup

  data_type: 'varchar'
  default_value: 'AGENTDIRECT'
  is_nullable: 1
  size: 20

=head2 group_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_handle_method

  data_type: 'varchar'
  default_value: 'CID'
  is_nullable: 1
  size: 20

=head2 agent_search_method

  data_type: 'enum'
  default_value: 'LB'
  extra: {list => ["LO","LB","SO"]}
  is_nullable: 1

=head2 list_id

  data_type: 'bigint'
  default_value: 999
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 phone_code

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 10

=head2 menu_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 record_call

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","Y_QUEUESTOP"]}
  is_nullable: 1

=head2 filter_inbound_number

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","GROUP","URL"]}
  is_nullable: 1

=head2 filter_phone_group_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 filter_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 1000

=head2 filter_action

  data_type: 'enum'
  default_value: 'EXTEN'
  extra: {list => ["EXTEN","VOICEMAIL","AGENT","PHONE","IN_GROUP","CALLMENU"]}
  is_nullable: 1

=head2 filter_extension

  data_type: 'varchar'
  default_value: 9998811112
  is_nullable: 1
  size: 50

=head2 filter_exten_context

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 1
  size: 50

=head2 filter_voicemail_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 filter_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 filter_server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 filter_user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 filter_user_unavailable_action

  data_type: 'enum'
  default_value: 'VOICEMAIL'
  extra: {list => ["IN_GROUP","EXTEN","VOICEMAIL","PHONE"]}
  is_nullable: 1

=head2 filter_user_route_settings_ingroup

  data_type: 'varchar'
  default_value: 'AGENTDIRECT'
  is_nullable: 1
  size: 20

=head2 filter_group_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 filter_call_handle_method

  data_type: 'varchar'
  default_value: 'CID'
  is_nullable: 1
  size: 20

=head2 filter_agent_search_method

  data_type: 'enum'
  default_value: 'LB'
  extra: {list => ["LO","LB","SO"]}
  is_nullable: 1

=head2 filter_list_id

  data_type: 'bigint'
  default_value: 999
  extra: {unsigned => 1}
  is_nullable: 1

=head2 filter_campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 filter_phone_code

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 10

=head2 filter_menu_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 filter_clean_cid_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 custom_one

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_two

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_three

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_four

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_five

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "did_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "did_pattern",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "did_description",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "did_active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "did_route",
  {
    data_type => "enum",
    default_value => "EXTEN",
    extra => {
      list => ["EXTEN", "VOICEMAIL", "AGENT", "PHONE", "IN_GROUP", "CALLMENU"],
    },
    is_nullable => 1,
  },
  "extension",
  {
    data_type => "varchar",
    default_value => 9998811112,
    is_nullable => 1,
    size => 50,
  },
  "exten_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 50,
  },
  "voicemail_ext",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "user_unavailable_action",
  {
    data_type => "enum",
    default_value => "VOICEMAIL",
    extra => { list => ["IN_GROUP", "EXTEN", "VOICEMAIL", "PHONE"] },
    is_nullable => 1,
  },
  "user_route_settings_ingroup",
  {
    data_type => "varchar",
    default_value => "AGENTDIRECT",
    is_nullable => 1,
    size => 20,
  },
  "group_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_handle_method",
  {
    data_type => "varchar",
    default_value => "CID",
    is_nullable => 1,
    size => 20,
  },
  "agent_search_method",
  {
    data_type => "enum",
    default_value => "LB",
    extra => { list => ["LO", "LB", "SO"] },
    is_nullable => 1,
  },
  "list_id",
  {
    data_type => "bigint",
    default_value => 999,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "phone_code",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 10 },
  "menu_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "record_call",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "Y_QUEUESTOP"] },
    is_nullable => 1,
  },
  "filter_inbound_number",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "GROUP", "URL"] },
    is_nullable => 1,
  },
  "filter_phone_group_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "filter_url",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 1000 },
  "filter_action",
  {
    data_type => "enum",
    default_value => "EXTEN",
    extra => {
      list => ["EXTEN", "VOICEMAIL", "AGENT", "PHONE", "IN_GROUP", "CALLMENU"],
    },
    is_nullable => 1,
  },
  "filter_extension",
  {
    data_type => "varchar",
    default_value => 9998811112,
    is_nullable => 1,
    size => 50,
  },
  "filter_exten_context",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 1,
    size => 50,
  },
  "filter_voicemail_ext",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "filter_phone",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "filter_server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "filter_user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "filter_user_unavailable_action",
  {
    data_type => "enum",
    default_value => "VOICEMAIL",
    extra => { list => ["IN_GROUP", "EXTEN", "VOICEMAIL", "PHONE"] },
    is_nullable => 1,
  },
  "filter_user_route_settings_ingroup",
  {
    data_type => "varchar",
    default_value => "AGENTDIRECT",
    is_nullable => 1,
    size => 20,
  },
  "filter_group_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "filter_call_handle_method",
  {
    data_type => "varchar",
    default_value => "CID",
    is_nullable => 1,
    size => 20,
  },
  "filter_agent_search_method",
  {
    data_type => "enum",
    default_value => "LB",
    extra => { list => ["LO", "LB", "SO"] },
    is_nullable => 1,
  },
  "filter_list_id",
  {
    data_type => "bigint",
    default_value => 999,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "filter_campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "filter_phone_code",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 10 },
  "filter_menu_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "filter_clean_cid_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "custom_one",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_two",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_three",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_four",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_five",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</did_id>

=back

=cut

__PACKAGE__->set_primary_key("did_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<did_pattern>

=over 4

=item * L</did_pattern>

=back

=cut

__PACKAGE__->add_unique_constraint("did_pattern", ["did_pattern"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fOUFGiUejTGaIXQNawGihw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
