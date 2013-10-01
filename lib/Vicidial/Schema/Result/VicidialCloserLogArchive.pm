use utf8;
package Vicidial::Schema::Result::VicidialCloserLogArchive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCloserLogArchive

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

=head1 TABLE: C<vicidial_closer_log_archive>

=cut

__PACKAGE__->table("vicidial_closer_log_archive");

=head1 ACCESSORS

=head2 closecallid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 start_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 end_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 length_in_sec

  data_type: 'integer'
  is_nullable: 1

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 processed

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 queue_seconds

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [7,2]

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 xfercallid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 term_reason

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["CALLER","AGENT","QUEUETIMEOUT","ABANDON","AFTERHOURS","HOLDRECALLXFER","HOLDTIME","NOAGENT","NONE","MAXCALLS"]}
  is_nullable: 1

=head2 uniqueid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 agent_only

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 queue_position

  data_type: 'smallint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "closecallid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "start_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "end_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "length_in_sec",
  { data_type => "integer", is_nullable => 1 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "processed",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "queue_seconds",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [7, 2],
  },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "xfercallid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "term_reason",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => {
      list => [
        "CALLER",
        "AGENT",
        "QUEUETIMEOUT",
        "ABANDON",
        "AFTERHOURS",
        "HOLDRECALLXFER",
        "HOLDTIME",
        "NOAGENT",
        "NONE",
        "MAXCALLS",
      ],
    },
    is_nullable => 1,
  },
  "uniqueid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "agent_only",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "queue_position",
  {
    data_type => "smallint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</closecallid>

=back

=cut

__PACKAGE__->set_primary_key("closecallid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ypGDRAKojzOoyLd5OJzp3g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
