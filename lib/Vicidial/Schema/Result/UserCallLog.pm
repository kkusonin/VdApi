use utf8;
package Vicidial::Schema::Result::UserCallLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::UserCallLog

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

=head1 TABLE: C<user_call_log>

=cut

__PACKAGE__->table("user_call_log");

=head1 ACCESSORS

=head2 user_call_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 call_type

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 number_dialed

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 callerid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 group_alias_id

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 preset_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 campaign_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 customer_hungup

  data_type: 'enum'
  default_value: (empty string)
  extra: {list => ["BEFORE_CALL","DURING_CALL",""]}
  is_nullable: 1

=head2 customer_hungup_seconds

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_call_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "call_type",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "number_dialed",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "callerid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "group_alias_id",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "preset_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "campaign_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "customer_hungup",
  {
    data_type => "enum",
    default_value => "",
    extra => { list => ["BEFORE_CALL", "DURING_CALL", ""] },
    is_nullable => 1,
  },
  "customer_hungup_seconds",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_call_log_id>

=back

=cut

__PACKAGE__->set_primary_key("user_call_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mNdIlfajhWVRLtMqcpGVLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
