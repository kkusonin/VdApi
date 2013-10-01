use utf8;
package Vicidial::Schema::Result::VicidialAgentLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialAgentLog

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

=head1 TABLE: C<vicidial_agent_log>

=cut

__PACKAGE__->table("vicidial_agent_log");

=head1 ACCESSORS

=head2 agent_log_id

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

=head2 event_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 pause_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 pause_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 wait_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 wait_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 talk_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 talk_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dispo_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dispo_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sub_status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 dead_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dead_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 uniqueid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "agent_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "event_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "pause_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "pause_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "wait_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "wait_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "talk_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "talk_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "dispo_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "dispo_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sub_status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "dead_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "dead_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "uniqueid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</agent_log_id>

=back

=cut

__PACKAGE__->set_primary_key("agent_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:e3XMYzx27bkRK/XVaJ9Qrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
