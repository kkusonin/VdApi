use utf8;
package Vicidial::Schema::Result::VicidialAutoCall;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialAutoCall

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

=head1 TABLE: C<vicidial_auto_calls>

=cut

__PACKAGE__->table("vicidial_auto_calls");

=head1 ACCESSORS

=head2 auto_call_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'enum'
  default_value: 'PAUSED'
  extra: {list => ["SENT","RINGING","LIVE","XFER","PAUSED","CLOSER","BUSY","DISCONNECT","IVR"]}
  is_nullable: 1

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

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

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 call_type

  data_type: 'enum'
  default_value: 'OUT'
  extra: {list => ["IN","OUT","OUTBALANCE"]}
  is_nullable: 1

=head2 stage

  data_type: 'varchar'
  default_value: 'START'
  is_nullable: 1
  size: 20

=head2 last_update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 alt_dial

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 6

=head2 queue_priority

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 agent_only

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 agent_grab

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 queue_position

  data_type: 'smallint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=head2 extension

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 agent_grab_extension

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "auto_call_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status",
  {
    data_type => "enum",
    default_value => "PAUSED",
    extra => {
      list => [
        "SENT",
        "RINGING",
        "LIVE",
        "XFER",
        "PAUSED",
        "CLOSER",
        "BUSY",
        "DISCONNECT",
        "IVR",
      ],
    },
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "callerid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "call_type",
  {
    data_type => "enum",
    default_value => "OUT",
    extra => { list => ["IN", "OUT", "OUTBALANCE"] },
    is_nullable => 1,
  },
  "stage",
  {
    data_type => "varchar",
    default_value => "START",
    is_nullable => 1,
    size => 20,
  },
  "last_update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "alt_dial",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 6,
  },
  "queue_priority",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "agent_only",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "agent_grab",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "queue_position",
  {
    data_type => "smallint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "extension",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "agent_grab_extension",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</auto_call_id>

=back

=cut

__PACKAGE__->set_primary_key("auto_call_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8Xiku1nBUHpjnBkyU3lsmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
