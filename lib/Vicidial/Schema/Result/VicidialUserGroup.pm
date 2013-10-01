use utf8;
package Vicidial::Schema::Result::VicidialUserGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUserGroup

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

=head1 TABLE: C<vicidial_user_groups>

=cut

__PACKAGE__->table("vicidial_user_groups");

=head1 ACCESSORS

=head2 user_group

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 group_name

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 allowed_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 qc_allowed_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 qc_allowed_inbound_groups

  data_type: 'text'
  is_nullable: 1

=head2 group_shifts

  data_type: 'text'
  is_nullable: 1

=head2 forced_timeclock_login

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","ADMIN_EXEMPT"]}
  is_nullable: 1

=head2 shift_enforcement

  data_type: 'enum'
  default_value: 'OFF'
  extra: {list => ["OFF","START","ALL"]}
  is_nullable: 1

=head2 agent_status_viewable_groups

  data_type: 'text'
  is_nullable: 1

=head2 agent_status_view_time

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_call_log_view

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_consultative

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_dial_override

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_vm_transfer

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_blind_transfer

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_dial_with_customer

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_xfer_park_customer_dial

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_fullscreen

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 allowed_reports

  data_type: 'varchar'
  default_value: 'ALL REPORTS'
  is_nullable: 1
  size: 2000

=head2 webphone_url_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 webphone_systemkey_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 webphone_dialpad_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","Y","N","TOGGLE","TOGGLE_OFF"]}
  is_nullable: 1

=head2 admin_viewable_groups

  data_type: 'text'
  is_nullable: 1

=head2 admin_viewable_call_times

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_group",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "group_name",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "allowed_campaigns",
  { data_type => "text", is_nullable => 1 },
  "qc_allowed_campaigns",
  { data_type => "text", is_nullable => 1 },
  "qc_allowed_inbound_groups",
  { data_type => "text", is_nullable => 1 },
  "group_shifts",
  { data_type => "text", is_nullable => 1 },
  "forced_timeclock_login",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "ADMIN_EXEMPT"] },
    is_nullable => 1,
  },
  "shift_enforcement",
  {
    data_type => "enum",
    default_value => "OFF",
    extra => { list => ["OFF", "START", "ALL"] },
    is_nullable => 1,
  },
  "agent_status_viewable_groups",
  { data_type => "text", is_nullable => 1 },
  "agent_status_view_time",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_call_log_view",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_consultative",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_dial_override",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_vm_transfer",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_blind_transfer",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_dial_with_customer",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_xfer_park_customer_dial",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_fullscreen",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "allowed_reports",
  {
    data_type => "varchar",
    default_value => "ALL REPORTS",
    is_nullable => 1,
    size => 2000,
  },
  "webphone_url_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "webphone_systemkey_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "webphone_dialpad_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "Y", "N", "TOGGLE", "TOGGLE_OFF"] },
    is_nullable => 1,
  },
  "admin_viewable_groups",
  { data_type => "text", is_nullable => 1 },
  "admin_viewable_call_times",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cScJFa3x3nP7H8ZgOALyog


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
