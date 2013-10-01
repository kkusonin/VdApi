use utf8;
package Vicidial::Schema::Result::VicidialGrabCallLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialGrabCallLog

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

=head1 TABLE: C<vicidial_grab_call_log>

=cut

__PACKAGE__->table("vicidial_grab_call_log");

=head1 ACCESSORS

=head2 auto_call_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 queue_priority

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 call_type

  data_type: 'enum'
  default_value: 'OUT'
  extra: {list => ["IN","OUT","OUTBALANCE"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "auto_call_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "queue_priority",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "call_type",
  {
    data_type => "enum",
    default_value => "OUT",
    extra => { list => ["IN", "OUT", "OUTBALANCE"] },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nfJ8WGXSSJBHzFuVqDfchQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
